
struct AVMediaType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaType {
  @available(tvOS 9.0, *)
  static let video: AVMediaType
  @available(tvOS 9.0, *)
  static let audio: AVMediaType
  @available(tvOS 9.0, *)
  static let text: AVMediaType
  @available(tvOS 9.0, *)
  static let closedCaption: AVMediaType
  @available(tvOS 9.0, *)
  static let subtitle: AVMediaType
  @available(tvOS 9.0, *)
  static let timecode: AVMediaType
  @available(tvOS 9.0, *)
  static let metadata: AVMediaType
  @available(tvOS 9.0, *)
  static let muxed: AVMediaType
  @available(tvOS 9.0, *)
  static let metadataObject: AVMediaType
  @available(tvOS 11.0, *)
  static let depthData: AVMediaType
}
struct AVMediaCharacteristic : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaCharacteristic {
  @available(tvOS 9.0, *)
  static let visual: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let audible: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let legible: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let frameBased: AVMediaCharacteristic
  @available(tvOS 10.0, *)
  static let usesWideGamutColorSpace: AVMediaCharacteristic
  @available(tvOS 14.0, *)
  static let containsHDRVideo: AVMediaCharacteristic
  @available(tvOS 13.0, *)
  static let containsAlphaChannel: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let isMainProgramContent: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let isAuxiliaryContent: AVMediaCharacteristic
  @available(tvOS 12.0, *)
  static let isOriginalContent: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let containsOnlyForcedSubtitles: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let transcribesSpokenDialogForAccessibility: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let describesMusicAndSoundForAccessibility: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let easyToRead: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let describesVideoForAccessibility: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let languageTranslation: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let dubbedTranslation: AVMediaCharacteristic
  @available(tvOS 9.0, *)
  static let voiceOverTranslation: AVMediaCharacteristic
}
struct AVFileType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileType {
  @available(tvOS 9.0, *)
  static let mov: AVFileType
  @available(tvOS 9.0, *)
  static let mp4: AVFileType
  @available(tvOS 9.0, *)
  static let m4v: AVFileType
  @available(tvOS 9.0, *)
  static let m4a: AVFileType
  @available(tvOS 9.0, *)
  static let mobile3GPP: AVFileType
  @available(tvOS 9.0, *)
  static let mobile3GPP2: AVFileType
  @available(tvOS 9.0, *)
  static let caf: AVFileType
  @available(tvOS 9.0, *)
  static let wav: AVFileType
  @available(tvOS 9.0, *)
  static let aiff: AVFileType
  @available(tvOS 9.0, *)
  static let aifc: AVFileType
  @available(tvOS 9.0, *)
  static let amr: AVFileType
  @available(tvOS 9.0, *)
  static let mp3: AVFileType
  @available(tvOS 9.0, *)
  static let au: AVFileType
  @available(tvOS 9.0, *)
  static let ac3: AVFileType
  @available(tvOS 9.0, *)
  static let eac3: AVFileType
  @available(tvOS 11.0, *)
  static let jpg: AVFileType
  @available(tvOS 11.0, *)
  static let dng: AVFileType
  @available(tvOS 11.0, *)
  static let heic: AVFileType
  @available(tvOS 11.0, *)
  static let avci: AVFileType
  @available(tvOS 11.0, *)
  static let heif: AVFileType
  @available(tvOS 11.0, *)
  static let tif: AVFileType
}
@available(tvOS 9.0, *)
let AVStreamingKeyDeliveryContentKeyType: String
@available(tvOS 9.0, *)
let AVStreamingKeyDeliveryPersistentContentKeyType: String
struct AVFileTypeProfile : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileTypeProfile {
  @available(tvOS 14.0, *)
  static let mpeg4AppleHLS: AVFileTypeProfile
  @available(tvOS 14.0, *)
  static let mpeg4CMAFCompliant: AVFileTypeProfile
}
