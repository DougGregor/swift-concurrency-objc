
extension AVCaptureSession {
  @available(macOS 10.7, *)
  struct Preset : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVCaptureSession.Preset {
  @available(macOS 10.7, *)
  static let photo: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let high: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let medium: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let low: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let qvga320x240: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let cif352x288: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let vga640x480: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let qHD960x540: AVCaptureSession.Preset
  @available(macOS 10.7, *)
  static let hd1280x720: AVCaptureSession.Preset
  @available(macOS 10.15, *)
  static let hd1920x1080: AVCaptureSession.Preset
  @available(macOS 10.15, *)
  static let hd4K3840x2160: AVCaptureSession.Preset
  @available(macOS 10.9, *)
  static let iFrame960x540: AVCaptureSession.Preset
  @available(macOS 10.9, *)
  static let iFrame1280x720: AVCaptureSession.Preset
}
