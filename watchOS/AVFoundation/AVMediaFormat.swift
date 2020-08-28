
struct AVMediaType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaType {
  @available(watchOS 1.0, *)
  static let video: AVMediaType
  @available(watchOS 1.0, *)
  static let audio: AVMediaType
  @available(watchOS 1.0, *)
  static let text: AVMediaType
  @available(watchOS 1.0, *)
  static let closedCaption: AVMediaType
  @available(watchOS 1.0, *)
  static let subtitle: AVMediaType
  @available(watchOS 1.0, *)
  static let timecode: AVMediaType
  @available(watchOS 1.0, *)
  static let metadata: AVMediaType
  @available(watchOS 1.0, *)
  static let muxed: AVMediaType
  @available(watchOS 2.0, *)
  static let metadataObject: AVMediaType
  @available(watchOS 4.0, *)
  static let depthData: AVMediaType
}
struct AVMediaCharacteristic : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaCharacteristic {
  @available(watchOS 1.0, *)
  static let visual: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let audible: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let legible: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let frameBased: AVMediaCharacteristic
  @available(watchOS 3.0, *)
  static let usesWideGamutColorSpace: AVMediaCharacteristic
  @available(watchOS 7.0, *)
  static let containsHDRVideo: AVMediaCharacteristic
  @available(watchOS 6.0, *)
  static let containsAlphaChannel: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let isMainProgramContent: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let isAuxiliaryContent: AVMediaCharacteristic
  @available(watchOS 5.0, *)
  static let isOriginalContent: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let containsOnlyForcedSubtitles: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let transcribesSpokenDialogForAccessibility: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let describesMusicAndSoundForAccessibility: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let easyToRead: AVMediaCharacteristic
  @available(watchOS 1.0, *)
  static let describesVideoForAccessibility: AVMediaCharacteristic
  @available(watchOS 2.0, *)
  static let languageTranslation: AVMediaCharacteristic
  @available(watchOS 2.0, *)
  static let dubbedTranslation: AVMediaCharacteristic
  @available(watchOS 2.0, *)
  static let voiceOverTranslation: AVMediaCharacteristic
}
struct AVFileType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileType {
  @available(watchOS 1.0, *)
  static let mov: AVFileType
  @available(watchOS 1.0, *)
  static let mp4: AVFileType
  @available(watchOS 1.0, *)
  static let m4v: AVFileType
  @available(watchOS 1.0, *)
  static let m4a: AVFileType
  @available(watchOS 1.0, *)
  static let mobile3GPP: AVFileType
  @available(watchOS 1.0, *)
  static let mobile3GPP2: AVFileType
  @available(watchOS 1.0, *)
  static let caf: AVFileType
  @available(watchOS 1.0, *)
  static let wav: AVFileType
  @available(watchOS 1.0, *)
  static let aiff: AVFileType
  @available(watchOS 1.0, *)
  static let aifc: AVFileType
  @available(watchOS 1.0, *)
  static let amr: AVFileType
  @available(watchOS 1.0, *)
  static let mp3: AVFileType
  @available(watchOS 1.0, *)
  static let au: AVFileType
  @available(watchOS 1.0, *)
  static let ac3: AVFileType
  @available(watchOS 2.0, *)
  static let eac3: AVFileType
  @available(watchOS 4.0, *)
  static let jpg: AVFileType
  @available(watchOS 4.0, *)
  static let dng: AVFileType
  @available(watchOS 4.0, *)
  static let heic: AVFileType
  @available(watchOS 4.0, *)
  static let avci: AVFileType
  @available(watchOS 4.0, *)
  static let heif: AVFileType
  @available(watchOS 4.0, *)
  static let tif: AVFileType
}
@available(watchOS 2.0, *)
let AVStreamingKeyDeliveryContentKeyType: String
@available(watchOS 2.0, *)
let AVStreamingKeyDeliveryPersistentContentKeyType: String
struct AVFileTypeProfile : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileTypeProfile {
  @available(watchOS 7.0, *)
  static let mpeg4AppleHLS: AVFileTypeProfile
  @available(watchOS 7.0, *)
  static let mpeg4CMAFCompliant: AVFileTypeProfile
}
