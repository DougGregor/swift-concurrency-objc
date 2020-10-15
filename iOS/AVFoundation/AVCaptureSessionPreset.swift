
extension AVCaptureSession {
  @available(iOS 4.0, *)
  struct Preset : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVCaptureSession.Preset {
  @available(iOS 4.0, *)
  static let photo: AVCaptureSession.Preset
  @available(iOS 4.0, *)
  static let high: AVCaptureSession.Preset
  @available(iOS 4.0, *)
  static let medium: AVCaptureSession.Preset
  @available(iOS 4.0, *)
  static let low: AVCaptureSession.Preset
  @available(iOS 5.0, *)
  static let cif352x288: AVCaptureSession.Preset
  @available(iOS 4.0, *)
  static let vga640x480: AVCaptureSession.Preset
  @available(iOS 4.0, *)
  static let hd1280x720: AVCaptureSession.Preset
  @available(iOS 5.0, *)
  static let hd1920x1080: AVCaptureSession.Preset
  @available(iOS 9.0, *)
  static let hd4K3840x2160: AVCaptureSession.Preset
  @available(iOS 5.0, *)
  static let iFrame960x540: AVCaptureSession.Preset
  @available(iOS 5.0, *)
  static let iFrame1280x720: AVCaptureSession.Preset
  @available(iOS 7.0, *)
  static let inputPriority: AVCaptureSession.Preset
}
