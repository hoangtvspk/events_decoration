import 'package:audioplayers/audioplayers.dart';

/// Service để quản lý background music từ URL
class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal();

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  String? _currentUrl;

  /// Chuyển đổi Google Drive share link thành direct download link
  /// 
  /// Ví dụ:
  /// Input: https://drive.google.com/file/d/1ABC123xyz/view?usp=sharing
  /// Output: https://drive.google.com/uc?export=download&id=1ABC123xyz
  static String? convertGoogleDriveLink(String? url) {
    if (url == null || url.isEmpty) return null;
    
    // Kiểm tra xem có phải Google Drive link không
    if (!url.contains('drive.google.com')) {
      return url; // Không phải Google Drive link, trả về nguyên bản
    }

    try {
      // Tìm FILE_ID trong URL
      // Pattern: /file/d/FILE_ID/ hoặc /file/d/FILE_ID? hoặc id=FILE_ID
      final fileIdMatch = RegExp(r'/file/d/([a-zA-Z0-9_-]+)').firstMatch(url) ??
          RegExp(r'id=([a-zA-Z0-9_-]+)').firstMatch(url);
      
      if (fileIdMatch != null) {
        final fileId = fileIdMatch.group(1);
        // Trả về direct download link
        return 'https://drive.google.com/uc?export=download&id=$fileId';
      }
      
      // Nếu không tìm thấy FILE_ID, trả về URL gốc
      return url;
    } catch (e) {
      print('Error converting Google Drive link: $e');
      return url; // Trả về URL gốc nếu có lỗi
    }
  }

  /// Phát nhạc từ URL, tự động loop
  /// Hỗ trợ cả Google Drive link và direct URL
  Future<void> playMusic(String url) async {
    try {
      // Chuyển đổi Google Drive link nếu cần
      final directUrl = convertGoogleDriveLink(url);
      if (directUrl == null) {
        print('Invalid URL: $url');
        return;
      }

      // Nếu đang phát cùng một URL, không làm gì
      if (_currentUrl == directUrl && _isPlaying) {
        return;
      }

      _currentUrl = directUrl;
      
      // Set mode để phát trong background
      await _audioPlayer.setReleaseMode(ReleaseMode.loop);
      
      // Phát từ URL
      await _audioPlayer.play(UrlSource(directUrl));
      _isPlaying = true;
    } catch (e) {
      print('Error playing audio: $e');
      _isPlaying = false;
    }
  }

  /// Dừng nhạc
  Future<void> stopMusic() async {
    try {
      await _audioPlayer.stop();
      _isPlaying = false;
      _currentUrl = null;
    } catch (e) {
      print('Error stopping audio: $e');
    }
  }

  /// Tạm dừng nhạc
  Future<void> pauseMusic() async {
    try {
      await _audioPlayer.pause();
      _isPlaying = false;
    } catch (e) {
      print('Error pausing audio: $e');
    }
  }

  /// Tiếp tục phát nhạc
  Future<void> resumeMusic() async {
    try {
      await _audioPlayer.resume();
      _isPlaying = true;
    } catch (e) {
      print('Error resuming audio: $e');
    }
  }

  /// Điều chỉnh volume (0.0 - 1.0)
  Future<void> setVolume(double volume) async {
    try {
      await _audioPlayer.setVolume(volume.clamp(0.0, 1.0));
    } catch (e) {
      print('Error setting volume: $e');
    }
  }

  /// Kiểm tra xem nhạc có đang phát không
  bool get isPlaying => _isPlaying;

  /// Dispose audio player
  void dispose() {
    _audioPlayer.dispose();
  }
}

