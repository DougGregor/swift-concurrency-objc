
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicIsMainProgramContent: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicIsAuxiliaryContent: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicContainsOnlyForcedSubtitles: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicTranscribesSpokenDialog: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicDescribesMusicAndSound: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicEasyToRead: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicDescribesVideo: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicLanguageTranslation: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicDubbedTranslation: String
@available(macOS 10.12.2, *)
let MPLanguageOptionCharacteristicVoiceOverTranslation: String
@available(macOS 10.12.2, *)
enum MPNowPlayingInfoLanguageOptionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case audible
  case legible
}
@available(macOS 10.12.2, *)
class MPNowPlayingInfoLanguageOption : NSObject {
  init(type languageOptionType: MPNowPlayingInfoLanguageOptionType, languageTag: String, characteristics languageOptionCharacteristics: [String]?, displayName: String, identifier: String)
  func isAutomaticLegibleLanguageOption() -> Bool
  func isAutomaticAudibleLanguageOption() -> Bool
  var languageOptionType: MPNowPlayingInfoLanguageOptionType { get }
  var languageTag: String? { get }
  var languageOptionCharacteristics: [String]? { get }
  var displayName: String? { get }
  var identifier: String? { get }
}
@available(macOS 10.12.2, *)
class MPNowPlayingInfoLanguageOptionGroup : NSObject {
  init(languageOptions: [MPNowPlayingInfoLanguageOption], defaultLanguageOption: MPNowPlayingInfoLanguageOption?, allowEmptySelection: Bool)
  var languageOptions: [MPNowPlayingInfoLanguageOption] { get }
  var defaultLanguageOption: MPNowPlayingInfoLanguageOption? { get }
  var allowEmptySelection: Bool { get }
}
