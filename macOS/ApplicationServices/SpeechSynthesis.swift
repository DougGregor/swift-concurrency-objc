
var kTextToSpeechSynthType: OSType { get }
var kTextToSpeechVoiceType: OSType { get }
var kTextToSpeechVoiceFileType: OSType { get }
var kTextToSpeechVoiceBundleType: OSType { get }
var kNoEndingProsody: Int32 { get }
var kNoSpeechInterrupt: Int32 { get }
var kPreflightThenPause: Int32 { get }
var kImmediate: Int32 { get }
var kEndOfWord: Int32 { get }
var kEndOfSentence: Int32 { get }
var soStatus: OSType { get }
var soErrors: OSType { get }
var soInputMode: OSType { get }
var soCharacterMode: OSType { get }
var soNumberMode: OSType { get }
var soRate: OSType { get }
var soPitchBase: OSType { get }
var soPitchMod: OSType { get }
var soVolume: OSType { get }
var soSynthType: OSType { get }
var soRecentSync: OSType { get }
var soPhonemeSymbols: OSType { get }
var soCurrentVoice: OSType { get }
var soCommandDelimiter: OSType { get }
var soReset: OSType { get }
var soCurrentA5: OSType { get }
var soRefCon: OSType { get }
var soTextDoneCallBack: OSType { get }
var soSpeechDoneCallBack: OSType { get }
var soSyncCallBack: OSType { get }
var soErrorCallBack: OSType { get }
var soPhonemeCallBack: OSType { get }
var soWordCallBack: OSType { get }
var soSynthExtension: OSType { get }
var soSoundOutput: OSType { get }
var soOutputToFileWithCFURL: OSType { get }
var soOutputToExtAudioFile: OSType { get }
var soOutputToAudioDevice: OSType { get }
var soPhonemeOptions: OSType { get }
var modeText: OSType { get }
var modePhonemes: OSType { get }
var modeTune: OSType { get }
var modeNormal: OSType { get }
var modeLiteral: OSType { get }
var soVoiceDescription: OSType { get }
var soVoiceFile: OSType { get }
var kSpeechGenerateTune: Int32 { get }
var kSpeechRelativePitch: Int32 { get }
var kSpeechRelativeDuration: Int32 { get }
var kSpeechShowSyllables: Int32 { get }
var kAudioUnitSubType_SpeechSynthesis: UInt32 { get }
var kAudioUnitProperty_Voice: UInt32 { get }
var kAudioUnitProperty_SpeechChannel: UInt32 { get }
struct SpeechChannelRecord {
  var data: (Int)
  init()
  init(data: (Int))
}
typealias SpeechChannel = UnsafeMutablePointer<SpeechChannelRecord>
struct VoiceSpec {
  var creator: OSType
  var id: OSType
  init()
  init(creator: OSType, id: OSType)
}
typealias VoiceSpecPtr = UnsafeMutablePointer<VoiceSpec>
var kNeuter: Int16 { get }
var kMale: Int16 { get }
var kFemale: Int16 { get }
struct VoiceDescription {
  var length: Int32
  var voice: VoiceSpec
  var version: Int32
  var name: Str63
  var comment: Str255
  var gender: Int16
  var age: Int16
  var script: Int16
  var language: Int16
  var region: Int16
  var reserved: (Int32, Int32, Int32, Int32)
  init()
  init(length: Int32, voice: VoiceSpec, version: Int32, name: Str63, comment: Str255, gender: Int16, age: Int16, script: Int16, language: Int16, region: Int16, reserved: (Int32, Int32, Int32, Int32))
}
struct VoiceFileInfo {
  var fileSpec: FSSpec
  var resID: Int16
  init()
  init(fileSpec: FSSpec, resID: Int16)
}
struct SpeechStatusInfo {
  var outputBusy: DarwinBoolean
  var outputPaused: DarwinBoolean
  var inputBytesLeft: Int
  var phonemeCode: Int16
  init()
  init(outputBusy: DarwinBoolean, outputPaused: DarwinBoolean, inputBytesLeft: Int, phonemeCode: Int16)
}
struct SpeechErrorInfo {
  var count: Int16
  var oldest: OSErr
  var oldPos: Int
  var newest: OSErr
  var newPos: Int
  init()
  init(count: Int16, oldest: OSErr, oldPos: Int, newest: OSErr, newPos: Int)
}
struct SpeechVersionInfo {
  var synthType: OSType
  var synthSubType: OSType
  var synthManufacturer: OSType
  var synthFlags: Int32
  var synthVersion: NumVersion
  init()
  init(synthType: OSType, synthSubType: OSType, synthManufacturer: OSType, synthFlags: Int32, synthVersion: NumVersion)
}
struct PhonemeInfo {
  var opcode: Int16
  var phStr: Str15
  var exampleStr: Str31
  var hiliteStart: Int16
  var hiliteEnd: Int16
  init()
  init(opcode: Int16, phStr: Str15, exampleStr: Str31, hiliteStart: Int16, hiliteEnd: Int16)
}
struct PhonemeDescriptor {
  var phonemeCount: Int16
  var thePhonemes: (PhonemeInfo)
  init()
  init(phonemeCount: Int16, thePhonemes: (PhonemeInfo))
}
struct SpeechXtndData {
  var synthCreator: OSType
  var synthData: (UInt8, UInt8)
  init()
  init(synthCreator: OSType, synthData: (UInt8, UInt8))
}
struct DelimiterInfo {
  var startDelimiter: (UInt8, UInt8)
  var endDelimiter: (UInt8, UInt8)
  init()
  init(startDelimiter: (UInt8, UInt8), endDelimiter: (UInt8, UInt8))
}
@available(macOS 10.5, *)
let kSpeechStatusProperty: CFString
@available(macOS 10.5, *)
let kSpeechErrorsProperty: CFString
@available(macOS 10.5, *)
let kSpeechInputModeProperty: CFString
@available(macOS 10.5, *)
let kSpeechCharacterModeProperty: CFString
@available(macOS 10.5, *)
let kSpeechNumberModeProperty: CFString
@available(macOS 10.5, *)
let kSpeechRateProperty: CFString
@available(macOS 10.5, *)
let kSpeechPitchBaseProperty: CFString
@available(macOS 10.5, *)
let kSpeechPitchModProperty: CFString
@available(macOS 10.5, *)
let kSpeechVolumeProperty: CFString
@available(macOS 10.5, *)
let kSpeechSynthesizerInfoProperty: CFString
@available(macOS 10.5, *)
let kSpeechRecentSyncProperty: CFString
@available(macOS 10.5, *)
let kSpeechPhonemeSymbolsProperty: CFString
@available(macOS 10.5, *)
let kSpeechCurrentVoiceProperty: CFString
@available(macOS 10.5, *)
let kSpeechCommandDelimiterProperty: CFString
@available(macOS 10.5, *)
let kSpeechResetProperty: CFString
@available(macOS 10.5, *)
let kSpeechOutputToFileURLProperty: CFString
@available(macOS 10.6, *)
let kSpeechOutputToExtAudioFileProperty: CFString
@available(macOS 10.6, *)
let kSpeechOutputToAudioDeviceProperty: CFString
@available(macOS 10.9, *)
let kSpeechOutputToFileDescriptorProperty: CFString
@available(macOS 10.9, *)
let kSpeechAudioOutputFormatProperty: CFString
@available(macOS 10.9, *)
let kSpeechOutputChannelMapProperty: CFString
@available(macOS 10.5, *)
let kSpeechRefConProperty: CFString
@available(macOS 10.5, *)
let kSpeechTextDoneCallBack: CFString
@available(macOS 10.5, *)
let kSpeechSpeechDoneCallBack: CFString
@available(macOS 10.5, *)
let kSpeechSyncCallBack: CFString
@available(macOS 10.5, *)
let kSpeechPhonemeCallBack: CFString
@available(macOS 10.5, *)
let kSpeechErrorCFCallBack: CFString
@available(macOS 10.5, *)
let kSpeechWordCFCallBack: CFString
@available(macOS 10.6, *)
let kSpeechPhonemeOptionsProperty: CFString
@available(macOS 10.6, *)
let kSpeechAudioUnitProperty: CFString
@available(macOS 10.6, *)
let kSpeechAudioGraphProperty: CFString
@available(macOS 10.9, *)
let kSpeechSynthExtensionProperty: CFString
@available(macOS 10.5, *)
let kSpeechModeText: CFString
@available(macOS 10.5, *)
let kSpeechModePhoneme: CFString
@available(macOS 10.6, *)
let kSpeechModeTune: CFString
@available(macOS 10.5, *)
let kSpeechModeNormal: CFString
@available(macOS 10.5, *)
let kSpeechModeLiteral: CFString
@available(macOS 10.5, *)
let kSpeechNoEndingProsody: CFString
@available(macOS 10.5, *)
let kSpeechNoSpeechInterrupt: CFString
@available(macOS 10.5, *)
let kSpeechPreflightThenPause: CFString
@available(macOS 10.5, *)
let kSpeechStatusOutputBusy: CFString
@available(macOS 10.5, *)
let kSpeechStatusOutputPaused: CFString
@available(macOS 10.5, *)
let kSpeechStatusNumberOfCharactersLeft: CFString
@available(macOS 10.5, *)
let kSpeechStatusPhonemeCode: CFString
@available(macOS 10.5, *)
let kSpeechErrorCount: CFString
@available(macOS 10.5, *)
let kSpeechErrorOldest: CFString
@available(macOS 10.5, *)
let kSpeechErrorOldestCharacterOffset: CFString
@available(macOS 10.5, *)
let kSpeechErrorNewest: CFString
@available(macOS 10.5, *)
let kSpeechErrorNewestCharacterOffset: CFString
@available(macOS 10.5, *)
let kSpeechSynthesizerInfoIdentifier: CFString
@available(macOS 10.5, *)
let kSpeechSynthesizerInfoManufacturer: CFString
@available(macOS 10.5, *)
let kSpeechSynthesizerInfoVersion: CFString
@available(macOS 10.5, *)
let kSpeechPhonemeInfoOpcode: CFString
@available(macOS 10.5, *)
let kSpeechPhonemeInfoSymbol: CFString
@available(macOS 10.5, *)
let kSpeechPhonemeInfoExample: CFString
@available(macOS 10.5, *)
let kSpeechPhonemeInfoHiliteStart: CFString
@available(macOS 10.5, *)
let kSpeechPhonemeInfoHiliteEnd: CFString
@available(macOS 10.5, *)
let kSpeechVoiceCreator: CFString
@available(macOS 10.5, *)
let kSpeechVoiceID: CFString
@available(macOS 10.5, *)
let kSpeechCommandPrefix: CFString
@available(macOS 10.5, *)
let kSpeechCommandSuffix: CFString
@available(macOS 10.5, *)
let kSpeechDictionaryLocaleIdentifier: CFString
@available(macOS 10.5, *)
let kSpeechDictionaryModificationDate: CFString
@available(macOS 10.5, *)
let kSpeechDictionaryPronunciations: CFString
@available(macOS 10.5, *)
let kSpeechDictionaryAbbreviations: CFString
@available(macOS 10.5, *)
let kSpeechDictionaryEntrySpelling: CFString
@available(macOS 10.5, *)
let kSpeechDictionaryEntryPhonemes: CFString
@available(macOS 10.5, *)
let kSpeechErrorCallbackSpokenString: CFString
@available(macOS 10.5, *)
let kSpeechErrorCallbackCharacterOffset: CFString
typealias SpeechTextDoneProcPtr = @convention(c) (SpeechChannel, SRefCon, UnsafeMutablePointer<UnsafeRawPointer?>?, UnsafeMutablePointer<UInt>, UnsafeMutablePointer<Int32>) -> Void
typealias SpeechDoneProcPtr = @convention(c) (SpeechChannel, SRefCon) -> Void
typealias SpeechSyncProcPtr = @convention(c) (SpeechChannel, SRefCon, OSType) -> Void
typealias SpeechErrorProcPtr = @convention(c) (SpeechChannel, SRefCon, OSErr, Int) -> Void
typealias SpeechPhonemeProcPtr = @convention(c) (SpeechChannel, SRefCon, Int16) -> Void
typealias SpeechWordProcPtr = @convention(c) (SpeechChannel, SRefCon, UInt, UInt16) -> Void
typealias SpeechTextDoneUPP = SpeechTextDoneProcPtr
typealias SpeechDoneUPP = SpeechDoneProcPtr
typealias SpeechSyncUPP = SpeechSyncProcPtr
typealias SpeechErrorUPP = SpeechErrorProcPtr
typealias SpeechPhonemeUPP = SpeechPhonemeProcPtr
typealias SpeechWordUPP = SpeechWordProcPtr
typealias SpeechErrorCFProcPtr = @convention(c) (SpeechChannel, SRefCon, CFError) -> Void
typealias SpeechWordCFProcPtr = @convention(c) (SpeechChannel, SRefCon, CFString, CFRange) -> Void
func SpeechManagerVersion() -> NumVersion
func MakeVoiceSpec(_ creator: OSType, _ id: OSType, _ voice: UnsafeMutablePointer<VoiceSpec>) -> OSErr
func CountVoices(_ numVoices: UnsafeMutablePointer<Int16>) -> OSErr
func GetIndVoice(_ index: Int16, _ voice: UnsafeMutablePointer<VoiceSpec>) -> OSErr
func GetVoiceDescription(_ voice: UnsafePointer<VoiceSpec>?, _ info: UnsafeMutablePointer<VoiceDescription>?, _ infoLength: Int) -> OSErr
func GetVoiceInfo(_ voice: UnsafePointer<VoiceSpec>?, _ selector: OSType, _ voiceInfo: UnsafeMutableRawPointer) -> OSErr
func NewSpeechChannel(_ voice: UnsafeMutablePointer<VoiceSpec>?, _ chan: UnsafeMutablePointer<SpeechChannel?>) -> OSErr
func DisposeSpeechChannel(_ chan: SpeechChannel) -> OSErr
func StopSpeech(_ chan: SpeechChannel) -> OSErr
func StopSpeechAt(_ chan: SpeechChannel, _ whereToStop: Int32) -> OSErr
func PauseSpeechAt(_ chan: SpeechChannel, _ whereToPause: Int32) -> OSErr
func ContinueSpeech(_ chan: SpeechChannel) -> OSErr
func SpeechBusy() -> Int16
func SpeechBusySystemWide() -> Int16
func SetSpeechRate(_ chan: SpeechChannel, _ rate: Fixed) -> OSErr
func GetSpeechRate(_ chan: SpeechChannel, _ rate: UnsafeMutablePointer<Fixed>) -> OSErr
func SetSpeechPitch(_ chan: SpeechChannel, _ pitch: Fixed) -> OSErr
func GetSpeechPitch(_ chan: SpeechChannel, _ pitch: UnsafeMutablePointer<Fixed>) -> OSErr
@available(macOS 10.5, *)
func SpeakCFString(_ chan: SpeechChannel, _ aString: CFString, _ options: CFDictionary?) -> OSErr
@available(macOS 10.5, *)
func UseSpeechDictionary(_ chan: SpeechChannel, _ speechDictionary: CFDictionary) -> OSErr
@available(macOS 10.5, *)
func CopyPhonemesFromText(_ chan: SpeechChannel, _ text: CFString, _ phonemes: UnsafeMutablePointer<CFString?>) -> OSErr
@available(macOS 10.5, *)
func CopySpeechProperty(_ chan: SpeechChannel, _ property: CFString, _ object: UnsafeMutablePointer<CFTypeRef?>) -> OSErr
@available(macOS 10.5, *)
func SetSpeechProperty(_ chan: SpeechChannel, _ property: CFString, _ object: CFTypeRef?) -> OSErr
@available(macOS 10.6, *)
func SpeechSynthesisRegisterModuleURL(_ url: CFURL) -> OSErr
@available(macOS 10.6, *)
func SpeechSynthesisUnregisterModuleURL(_ url: CFURL) -> OSErr
