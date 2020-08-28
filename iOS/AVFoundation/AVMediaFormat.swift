
struct AVMediaType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaType {
  @available(iOS 4.0, *)
  static let video: AVMediaType
  @available(iOS 4.0, *)
  static let audio: AVMediaType
  @available(iOS 4.0, *)
  static let text: AVMediaType
  @available(iOS 4.0, *)
  static let closedCaption: AVMediaType
  @available(iOS 4.0, *)
  static let subtitle: AVMediaType
  @available(iOS 4.0, *)
  static let timecode: AVMediaType
  @available(iOS 6.0, *)
  static let metadata: AVMediaType
  @available(iOS 4.0, *)
  static let muxed: AVMediaType
  @available(iOS 9.0, *)
  static let metadataObject: AVMediaType
  @available(iOS 11.0, *)
  static let depthData: AVMediaType
}
struct AVMediaCharacteristic : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMediaCharacteristic {
  @available(iOS 4.0, *)
  static let visual: AVMediaCharacteristic
  @available(iOS 4.0, *)
  static let audible: AVMediaCharacteristic
  @available(iOS 4.0, *)
  static let legible: AVMediaCharacteristic
  @available(iOS 4.0, *)
  static let frameBased: AVMediaCharacteristic
  @available(iOS 10.0, *)
  static let usesWideGamutColorSpace: AVMediaCharacteristic
  @available(iOS 14.0, *)
  static let containsHDRVideo: AVMediaCharacteristic
  @available(iOS 13.0, *)
  static let containsAlphaChannel: AVMediaCharacteristic
  @available(iOS 5.0, *)
  static let isMainProgramContent: AVMediaCharacteristic
  @available(iOS 5.0, *)
  static let isAuxiliaryContent: AVMediaCharacteristic
  @available(iOS 12.0, *)
  static let isOriginalContent: AVMediaCharacteristic
  @available(iOS 5.0, *)
  static let containsOnlyForcedSubtitles: AVMediaCharacteristic
  @available(iOS 5.0, *)
  static let transcribesSpokenDialogForAccessibility: AVMediaCharacteristic
  @available(iOS 5.0, *)
  static let describesMusicAndSoundForAccessibility: AVMediaCharacteristic
  @available(iOS 6.0, *)
  static let easyToRead: AVMediaCharacteristic
  @available(iOS 5.0, *)
  static let describesVideoForAccessibility: AVMediaCharacteristic
  @available(iOS 9.0, *)
  static let languageTranslation: AVMediaCharacteristic
  @available(iOS 9.0, *)
  static let dubbedTranslation: AVMediaCharacteristic
  @available(iOS 9.0, *)
  static let voiceOverTranslation: AVMediaCharacteristic
}
struct AVFileType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileType {
  @available(iOS 4.0, *)
  static let mov: AVFileType
  @available(iOS 4.0, *)
  static let mp4: AVFileType
  @available(iOS 4.0, *)
  static let m4v: AVFileType
  @available(iOS 4.0, *)
  static let m4a: AVFileType
  @available(iOS 4.0, *)
  static let mobile3GPP: AVFileType
  @available(iOS 4.0, *)
  static let mobile3GPP2: AVFileType
  @available(iOS 4.0, *)
  static let caf: AVFileType
  @available(iOS 4.0, *)
  static let wav: AVFileType
  @available(iOS 4.0, *)
  static let aiff: AVFileType
  @available(iOS 4.0, *)
  static let aifc: AVFileType
  @available(iOS 4.0, *)
  static let amr: AVFileType
  @available(iOS 7.0, *)
  static let mp3: AVFileType
  @available(iOS 7.0, *)
  static let au: AVFileType
  @available(iOS 7.0, *)
  static let ac3: AVFileType
  @available(iOS 9.0, *)
  static let eac3: AVFileType
  @available(iOS 11.0, *)
  static let jpg: AVFileType
  @available(iOS 11.0, *)
  static let dng: AVFileType
  @available(iOS 11.0, *)
  static let heic: AVFileType
  @available(iOS 11.0, *)
  static let avci: AVFileType
  @available(iOS 11.0, *)
  static let heif: AVFileType
  @available(iOS 11.0, *)
  static let tif: AVFileType
}
@available(iOS 9.0, *)
let AVStreamingKeyDeliveryContentKeyType: String
@available(iOS 9.0, *)
let AVStreamingKeyDeliveryPersistentContentKeyType: String
struct AVFileTypeProfile : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVFileTypeProfile {
  @available(iOS 14.0, *)
  static let mpeg4AppleHLS: AVFileTypeProfile
  @available(iOS 14.0, *)
  static let mpeg4CMAFCompliant: AVFileTypeProfile
}
