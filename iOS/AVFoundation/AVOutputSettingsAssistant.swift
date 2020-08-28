
struct AVOutputSettingsPreset : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVOutputSettingsPreset {
  @available(iOS 7.0, *)
  static let preset640x480: AVOutputSettingsPreset
  @available(iOS 7.0, *)
  static let preset960x540: AVOutputSettingsPreset
  @available(iOS 7.0, *)
  static let preset1280x720: AVOutputSettingsPreset
  @available(iOS 7.0, *)
  static let preset1920x1080: AVOutputSettingsPreset
  @available(iOS 9.0, *)
  static let preset3840x2160: AVOutputSettingsPreset
  @available(iOS 11.0, *)
  static let hevc1920x1080: AVOutputSettingsPreset
  @available(iOS 13.0, *)
  static let hevc1920x1080WithAlpha: AVOutputSettingsPreset
  @available(iOS 11.0, *)
  static let hevc3840x2160: AVOutputSettingsPreset
  @available(iOS 13.0, *)
  static let hevc3840x2160WithAlpha: AVOutputSettingsPreset
}
@available(iOS 7.0, *)
class AVOutputSettingsAssistant : NSObject {
  @available(iOS 7.0, *)
  class func availableOutputSettingsPresets() -> [AVOutputSettingsPreset]
  convenience init?(preset presetIdentifier: AVOutputSettingsPreset)
  var audioSettings: [String : Any]? { get }
  var videoSettings: [String : Any]? { get }
  var outputFileType: AVFileType { get }
}
extension AVOutputSettingsAssistant {
  var sourceAudioFormat: CMAudioFormatDescription?
  var sourceVideoFormat: CMVideoFormatDescription?
  var sourceVideoAverageFrameDuration: CMTime
  @available(iOS 7.0, *)
  var sourceVideoMinFrameDuration: CMTime
}
