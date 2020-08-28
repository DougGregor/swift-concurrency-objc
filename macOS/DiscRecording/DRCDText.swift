
var DRCDTextEncodingISOLatin1Modified: Int { get }
var DRCDTextEncodingASCII: Int { get }
var DRCDTextGenreCodeUnknown: Int { get }
var DRCDTextGenreCodeAdultContemporary: Int { get }
var DRCDTextGenreCodeAlternativeRock: Int { get }
var DRCDTextGenreCodeChildrens: Int { get }
var DRCDTextGenreCodeClassical: Int { get }
var DRCDTextGenreCodeContemporaryChristian: Int { get }
var DRCDTextGenreCodeCountry: Int { get }
var DRCDTextGenreCodeDance: Int { get }
var DRCDTextGenreCodeEasyListening: Int { get }
var DRCDTextGenreCodeErotic: Int { get }
var DRCDTextGenreCodeFolk: Int { get }
var DRCDTextGenreCodeGospel: Int { get }
var DRCDTextGenreCodeHipHop: Int { get }
var DRCDTextGenreCodeJazz: Int { get }
var DRCDTextGenreCodeLatin: Int { get }
var DRCDTextGenreCodeMusical: Int { get }
var DRCDTextGenreCodeNewAge: Int { get }
var DRCDTextGenreCodeOpera: Int { get }
var DRCDTextGenreCodeOperetta: Int { get }
var DRCDTextGenreCodePop: Int { get }
var DRCDTextGenreCodeRap: Int { get }
var DRCDTextGenreCodeReggae: Int { get }
var DRCDTextGenreCodeRock: Int { get }
var DRCDTextGenreCodeRhythmAndBlues: Int { get }
var DRCDTextGenreCodeSoundEffects: Int { get }
var DRCDTextGenreCodeSoundtrack: Int { get }
var DRCDTextGenreCodeSpokenWord: Int { get }
var DRCDTextGenreCodeWorldMusic: Int { get }
class DRCDTextBlock : NSObject {
  class func arrayOfCDTextBlocks(fromPacks packs: Data!) -> [Any]!
  init!(language lang: String!, encoding enc: UInt)
  func properties() -> [AnyHashable : Any]!
  func setProperties(_ properties: [AnyHashable : Any]!)
  func trackDictionaries() -> [Any]!
  func setTrackDictionaries(_ tracks: [Any]!)
  func object(forKey key: String!, ofTrack trackIndex: Int) -> Any!
  func setObject(_ value: Any!, forKey key: String!, ofTrack trackIndex: Int)
  func flatten() -> Int
}
extension DRCDTextBlock {
  func language() -> String!
  func encoding() -> UInt
}
@available(macOS 10.4, *)
let DRCDTextLanguageKey: String
@available(macOS 10.4, *)
let DRCDTextCharacterCodeKey: String
@available(macOS 10.4, *)
let DRCDTextNSStringEncodingKey: String
@available(macOS 10.4, *)
let DRCDTextCopyrightAssertedForSpecialMessagesKey: String
@available(macOS 10.4, *)
let DRCDTextCopyrightAssertedForNamesKey: String
@available(macOS 10.4, *)
let DRCDTextCopyrightAssertedForTitlesKey: String
@available(macOS 10.4, *)
let DRCDTextTitleKey: String
@available(macOS 10.4, *)
let DRCDTextPerformerKey: String
@available(macOS 10.4, *)
let DRCDTextSongwriterKey: String
@available(macOS 10.4, *)
let DRCDTextComposerKey: String
@available(macOS 10.4, *)
let DRCDTextArrangerKey: String
@available(macOS 10.4, *)
let DRCDTextSpecialMessageKey: String
@available(macOS 10.4, *)
let DRCDTextDiscIdentKey: String
@available(macOS 10.4, *)
let DRCDTextGenreKey: String
@available(macOS 10.4, *)
let DRCDTextGenreCodeKey: String
@available(macOS 10.4, *)
let DRCDTextClosedKey: String
@available(macOS 10.4, *)
let DRCDTextMCNISRCKey: String
@available(macOS 10.4, *)
let DRCDTextTOCKey: String
@available(macOS 10.4, *)
let DRCDTextTOC2Key: String
@available(macOS 10.4, *)
let DRCDTextSizeKey: String
