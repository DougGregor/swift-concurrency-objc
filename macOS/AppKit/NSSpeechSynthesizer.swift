
extension NSSpeechSynthesizer {
  struct VoiceName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct VoiceAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct DictionaryKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct VoiceGender : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct SpeechPropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.5, *)
  enum Boundary : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case immediateBoundary
    case wordBoundary
    case sentenceBoundary
  }
}
extension NSSpeechSynthesizer.VoiceAttributeKey {
  static let name: NSSpeechSynthesizer.VoiceAttributeKey
  static let identifier: NSSpeechSynthesizer.VoiceAttributeKey
  static let age: NSSpeechSynthesizer.VoiceAttributeKey
  static let gender: NSSpeechSynthesizer.VoiceAttributeKey
  static let demoText: NSSpeechSynthesizer.VoiceAttributeKey
  @available(macOS 10.5, *)
  static let localeIdentifier: NSSpeechSynthesizer.VoiceAttributeKey
  @available(macOS 10.5, *)
  static let supportedCharacters: NSSpeechSynthesizer.VoiceAttributeKey
  @available(macOS 10.5, *)
  static let individuallySpokenCharacters: NSSpeechSynthesizer.VoiceAttributeKey
}
extension NSSpeechSynthesizer.DictionaryKey {
  @available(macOS 10.5, *)
  static let localeIdentifier: NSSpeechSynthesizer.DictionaryKey
  @available(macOS 10.5, *)
  static let modificationDate: NSSpeechSynthesizer.DictionaryKey
  @available(macOS 10.5, *)
  static let pronunciations: NSSpeechSynthesizer.DictionaryKey
  @available(macOS 10.5, *)
  static let abbreviations: NSSpeechSynthesizer.DictionaryKey
  @available(macOS 10.5, *)
  static let entrySpelling: NSSpeechSynthesizer.DictionaryKey
  @available(macOS 10.5, *)
  static let entryPhonemes: NSSpeechSynthesizer.DictionaryKey
}
extension NSSpeechSynthesizer.VoiceGender {
  static let neuter: NSSpeechSynthesizer.VoiceGender
  static let male: NSSpeechSynthesizer.VoiceGender
  static let female: NSSpeechSynthesizer.VoiceGender
}
extension NSSpeechSynthesizer.SpeechPropertyKey {
  @available(macOS 10.5, *)
  static let status: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let errors: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let inputMode: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let characterMode: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let numberMode: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let rate: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let pitchBase: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let pitchMod: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let volume: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let synthesizerInfo: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let recentSync: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let phonemeSymbols: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let currentVoice: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let commandDelimiter: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let reset: NSSpeechSynthesizer.SpeechPropertyKey
  @available(macOS 10.5, *)
  static let outputToFileURL: NSSpeechSynthesizer.SpeechPropertyKey
  struct Mode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct StatusKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct ErrorKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct SynthesizerInfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct PhonemeInfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct CommandDelimiterKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
class NSSpeechSynthesizer : NSObject {
  init?(voice: NSSpeechSynthesizer.VoiceName?)
  func startSpeaking(_ string: String) -> Bool
  func startSpeaking(_ string: String, to url: URL) -> Bool
  var isSpeaking: Bool { get }
  func stopSpeaking()
  @available(macOS 10.5, *)
  func stopSpeaking(at boundary: NSSpeechSynthesizer.Boundary)
  @available(macOS 10.5, *)
  func pauseSpeaking(at boundary: NSSpeechSynthesizer.Boundary)
  @available(macOS 10.5, *)
  func continueSpeaking()
  weak var delegate: @sil_weak NSSpeechSynthesizerDelegate?
  func voice() -> NSSpeechSynthesizer.VoiceName?
  func setVoice(_ voice: NSSpeechSynthesizer.VoiceName?) -> Bool
  @available(macOS 10.5, *)
  var rate: Float
  @available(macOS 10.5, *)
  var volume: Float
  var usesFeedbackWindow: Bool
  @available(macOS 10.5, *)
  func addSpeechDictionary(_ speechDictionary: [NSSpeechSynthesizer.DictionaryKey : Any])
  @available(macOS 10.5, *)
  func phonemes(from text: String) -> String
  @available(macOS 10.5, *)
  func object(forProperty property: NSSpeechSynthesizer.SpeechPropertyKey) throws -> Any
  @available(macOS 10.5, *)
  func setObject(_ object: Any?, forProperty property: NSSpeechSynthesizer.SpeechPropertyKey) throws
  class var isAnyApplicationSpeaking: Bool { get }
  class var defaultVoice: NSSpeechSynthesizer.VoiceName { get }
  class var availableVoices: [NSSpeechSynthesizer.VoiceName] { get }
  class func attributes(forVoice voice: NSSpeechSynthesizer.VoiceName) -> [NSSpeechSynthesizer.VoiceAttributeKey : Any]
}
protocol NSSpeechSynthesizerDelegate : NSObjectProtocol {
  optional func speechSynthesizer(_ sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool)
  optional func speechSynthesizer(_ sender: NSSpeechSynthesizer, willSpeakWord characterRange: NSRange, of string: String)
  optional func speechSynthesizer(_ sender: NSSpeechSynthesizer, willSpeakPhoneme phonemeOpcode: Int16)
  @available(macOS 10.5, *)
  optional func speechSynthesizer(_ sender: NSSpeechSynthesizer, didEncounterErrorAt characterIndex: Int, of string: String, message: String)
  @available(macOS 10.5, *)
  optional func speechSynthesizer(_ sender: NSSpeechSynthesizer, didEncounterSyncMessage message: String)
}
extension NSSpeechSynthesizer.SpeechPropertyKey.Mode {
  @available(macOS 10.5, *)
  static let text: NSSpeechSynthesizer.SpeechPropertyKey.Mode
  @available(macOS 10.5, *)
  static let phoneme: NSSpeechSynthesizer.SpeechPropertyKey.Mode
  @available(macOS 10.5, *)
  static let normal: NSSpeechSynthesizer.SpeechPropertyKey.Mode
  @available(macOS 10.5, *)
  static let literal: NSSpeechSynthesizer.SpeechPropertyKey.Mode
}
extension NSSpeechSynthesizer.SpeechPropertyKey.StatusKey {
  @available(macOS 10.5, *)
  static let outputBusy: NSSpeechSynthesizer.SpeechPropertyKey.StatusKey
  @available(macOS 10.5, *)
  static let outputPaused: NSSpeechSynthesizer.SpeechPropertyKey.StatusKey
  @available(macOS 10.5, *)
  static let numberOfCharactersLeft: NSSpeechSynthesizer.SpeechPropertyKey.StatusKey
  @available(macOS 10.5, *)
  static let phonemeCode: NSSpeechSynthesizer.SpeechPropertyKey.StatusKey
}
extension NSSpeechSynthesizer.SpeechPropertyKey.ErrorKey {
  @available(macOS 10.5, *)
  static let count: NSSpeechSynthesizer.SpeechPropertyKey.ErrorKey
  @available(macOS 10.5, *)
  static let oldestCode: NSSpeechSynthesizer.SpeechPropertyKey.ErrorKey
  @available(macOS 10.5, *)
  static let oldestCharacterOffset: NSSpeechSynthesizer.SpeechPropertyKey.ErrorKey
  @available(macOS 10.5, *)
  static let newestCode: NSSpeechSynthesizer.SpeechPropertyKey.ErrorKey
  @available(macOS 10.5, *)
  static let newestCharacterOffset: NSSpeechSynthesizer.SpeechPropertyKey.ErrorKey
}
extension NSSpeechSynthesizer.SpeechPropertyKey.SynthesizerInfoKey {
  @available(macOS 10.5, *)
  static let identifier: NSSpeechSynthesizer.SpeechPropertyKey.SynthesizerInfoKey
  @available(macOS 10.5, *)
  static let version: NSSpeechSynthesizer.SpeechPropertyKey.SynthesizerInfoKey
}
extension NSSpeechSynthesizer.SpeechPropertyKey.PhonemeInfoKey {
  @available(macOS 10.5, *)
  static let opcode: NSSpeechSynthesizer.SpeechPropertyKey.PhonemeInfoKey
  @available(macOS 10.5, *)
  static let symbol: NSSpeechSynthesizer.SpeechPropertyKey.PhonemeInfoKey
  @available(macOS 10.5, *)
  static let example: NSSpeechSynthesizer.SpeechPropertyKey.PhonemeInfoKey
  @available(macOS 10.5, *)
  static let hiliteStart: NSSpeechSynthesizer.SpeechPropertyKey.PhonemeInfoKey
  @available(macOS 10.5, *)
  static let hiliteEnd: NSSpeechSynthesizer.SpeechPropertyKey.PhonemeInfoKey
}
extension NSSpeechSynthesizer.SpeechPropertyKey.CommandDelimiterKey {
  @available(macOS 10.5, *)
  static let prefix: NSSpeechSynthesizer.SpeechPropertyKey.CommandDelimiterKey
  @available(macOS 10.5, *)
  static let suffix: NSSpeechSynthesizer.SpeechPropertyKey.CommandDelimiterKey
}
