
struct AVMediaType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaType {
  @available(macOS 10.7, *)
  static let video: AVMediaType
  @available(macOS 10.7, *)
  static let audio: AVMediaType
  @available(macOS 10.7, *)
  static let text: AVMediaType
  @available(macOS 10.7, *)
  static let closedCaption: AVMediaType
  @available(macOS 10.7, *)
  static let subtitle: AVMediaType
  @available(macOS 10.7, *)
  static let timecode: AVMediaType
  @available(macOS 10.8, *)
  static let metadata: AVMediaType
  @available(macOS 10.7, *)
  static let muxed: AVMediaType
  @available(macOS 10.13, *)
  static let depthData: AVMediaType
}
struct AVMediaCharacteristic : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaCharacteristic {
  @available(macOS 10.7, *)
  static let visual: AVMediaCharacteristic
  @available(macOS 10.7, *)
  static let audible: AVMediaCharacteristic
  @available(macOS 10.7, *)
  static let legible: AVMediaCharacteristic
  @available(macOS 10.7, *)
  static let frameBased: AVMediaCharacteristic
  @available(macOS 10.12, *)
  static let usesWideGamutColorSpace: AVMediaCharacteristic
  @available(macOS 11.0, *)
  static let containsHDRVideo: AVMediaCharacteristic
  @available(macOS 10.15, *)
  static let containsAlphaChannel: AVMediaCharacteristic
  @available(macOS 10.8, *)
  static let isMainProgramContent: AVMediaCharacteristic
  @available(macOS 10.8, *)
  static let isAuxiliaryContent: AVMediaCharacteristic
  @available(macOS 10.14, *)
  static let isOriginalContent: AVMediaCharacteristic
  @available(macOS 10.8, *)
  static let containsOnlyForcedSubtitles: AVMediaCharacteristic
  @available(macOS 10.8, *)
  static let transcribesSpokenDialogForAccessibility: AVMediaCharacteristic
  @available(macOS 10.8, *)
  static let describesMusicAndSoundForAccessibility: AVMediaCharacteristic
  @available(macOS 10.8, *)
  static let easyToRead: AVMediaCharacteristic
  @available(macOS 10.8, *)
  static let describesVideoForAccessibility: AVMediaCharacteristic
  @available(macOS 10.11, *)
  static let languageTranslation: AVMediaCharacteristic
  @available(macOS 10.11, *)
  static let dubbedTranslation: AVMediaCharacteristic
  @available(macOS 10.11, *)
  static let voiceOverTranslation: AVMediaCharacteristic
}
struct AVFileType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileType {
  @available(macOS 10.7, *)
  static let mov: AVFileType
  @available(macOS 10.7, *)
  static let mp4: AVFileType
  @available(macOS 10.7, *)
  static let m4v: AVFileType
  @available(macOS 10.7, *)
  static let m4a: AVFileType
  @available(macOS 10.11, *)
  static let mobile3GPP: AVFileType
  @available(macOS 10.11, *)
  static let mobile3GPP2: AVFileType
  @available(macOS 10.7, *)
  static let caf: AVFileType
  @available(macOS 10.7, *)
  static let wav: AVFileType
  @available(macOS 10.7, *)
  static let aiff: AVFileType
  @available(macOS 10.7, *)
  static let aifc: AVFileType
  @available(macOS 10.7, *)
  static let amr: AVFileType
  @available(macOS 10.9, *)
  static let mp3: AVFileType
  @available(macOS 10.9, *)
  static let au: AVFileType
  @available(macOS 10.9, *)
  static let ac3: AVFileType
  @available(macOS 10.11, *)
  static let eac3: AVFileType
  @available(macOS 10.13, *)
  static let jpg: AVFileType
  @available(macOS 10.13, *)
  static let dng: AVFileType
  @available(macOS 10.13, *)
  static let heic: AVFileType
  @available(macOS 10.13, *)
  static let avci: AVFileType
  @available(macOS 10.13, *)
  static let heif: AVFileType
  @available(macOS 10.13, *)
  static let tif: AVFileType
}
@available(macOS 10.11, *)
let AVStreamingKeyDeliveryContentKeyType: String
@available(macOS 10.11, *)
let AVStreamingKeyDeliveryPersistentContentKeyType: String
struct AVFileTypeProfile : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileTypeProfile {
  @available(macOS 11.0, *)
  static let mpeg4AppleHLS: AVFileTypeProfile
  @available(macOS 11.0, *)
  static let mpeg4CMAFCompliant: AVFileTypeProfile
}
