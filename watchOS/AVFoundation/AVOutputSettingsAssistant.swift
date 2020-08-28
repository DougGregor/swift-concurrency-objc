
struct AVOutputSettingsPreset : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVOutputSettingsPreset {
  @available(watchOS 2.0, *)
  static let preset640x480: AVOutputSettingsPreset
  @available(watchOS 2.0, *)
  static let preset960x540: AVOutputSettingsPreset
  @available(watchOS 2.0, *)
  static let preset1280x720: AVOutputSettingsPreset
  @available(watchOS 2.0, *)
  static let preset1920x1080: AVOutputSettingsPreset
  @available(watchOS 2.0, *)
  static let preset3840x2160: AVOutputSettingsPreset
  @available(watchOS 4.0, *)
  static let hevc1920x1080: AVOutputSettingsPreset
  @available(watchOS 6.0, *)
  static let hevc1920x1080WithAlpha: AVOutputSettingsPreset
  @available(watchOS 4.0, *)
  static let hevc3840x2160: AVOutputSettingsPreset
  @available(watchOS 6.0, *)
  static let hevc3840x2160WithAlpha: AVOutputSettingsPreset
}
@available(watchOS 2.0, *)
class AVOutputSettingsAssistant : NSObject {
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var sourceVideoMinFrameDuration: CMTime
}
