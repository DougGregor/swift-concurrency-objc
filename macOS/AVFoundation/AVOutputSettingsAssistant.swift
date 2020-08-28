
struct AVOutputSettingsPreset : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVOutputSettingsPreset {
  @available(macOS 10.9, *)
  static let preset640x480: AVOutputSettingsPreset
  @available(macOS 10.9, *)
  static let preset960x540: AVOutputSettingsPreset
  @available(macOS 10.9, *)
  static let preset1280x720: AVOutputSettingsPreset
  @available(macOS 10.9, *)
  static let preset1920x1080: AVOutputSettingsPreset
  @available(macOS 10.10, *)
  static let preset3840x2160: AVOutputSettingsPreset
  @available(macOS 10.13, *)
  static let hevc1920x1080: AVOutputSettingsPreset
  @available(macOS 10.15, *)
  static let hevc1920x1080WithAlpha: AVOutputSettingsPreset
  @available(macOS 10.13, *)
  static let hevc3840x2160: AVOutputSettingsPreset
  @available(macOS 10.15, *)
  static let hevc3840x2160WithAlpha: AVOutputSettingsPreset
}
@available(macOS 10.9, *)
class AVOutputSettingsAssistant : NSObject {
  @available(macOS 10.10, *)
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
  @available(macOS 10.10, *)
  var sourceVideoMinFrameDuration: CMTime
}
