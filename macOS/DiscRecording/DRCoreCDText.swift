
var kDRCDTextEncodingISOLatin1Modified: Int { get }
var kDRCDTextEncodingASCII: Int { get }
var kDRCDTextGenreCodeUnknown: Int { get }
var kDRCDTextGenreCodeAdultContemporary: Int { get }
var kDRCDTextGenreCodeAlternativeRock: Int { get }
var kDRCDTextGenreCodeChildrens: Int { get }
var kDRCDTextGenreCodeClassical: Int { get }
var kDRCDTextGenreCodeContemporaryChristian: Int { get }
var kDRCDTextGenreCodeCountry: Int { get }
var kDRCDTextGenreCodeDance: Int { get }
var kDRCDTextGenreCodeEasyListening: Int { get }
var kDRCDTextGenreCodeErotic: Int { get }
var kDRCDTextGenreCodeFolk: Int { get }
var kDRCDTextGenreCodeGospel: Int { get }
var kDRCDTextGenreCodeHipHop: Int { get }
var kDRCDTextGenreCodeJazz: Int { get }
var kDRCDTextGenreCodeLatin: Int { get }
var kDRCDTextGenreCodeMusical: Int { get }
var kDRCDTextGenreCodeNewAge: Int { get }
var kDRCDTextGenreCodeOpera: Int { get }
var kDRCDTextGenreCodeOperetta: Int { get }
var kDRCDTextGenreCodePop: Int { get }
var kDRCDTextGenreCodeRap: Int { get }
var kDRCDTextGenreCodeReggae: Int { get }
var kDRCDTextGenreCodeRock: Int { get }
var kDRCDTextGenreCodeRhythmAndBlues: Int { get }
var kDRCDTextGenreCodeSoundEffects: Int { get }
var kDRCDTextGenreCodeSoundtrack: Int { get }
var kDRCDTextGenreCodeSpokenWord: Int { get }
var kDRCDTextGenreCodeWorldMusic: Int { get }
@available(macOS 10.4, *)
func DRCDTextBlockCreateArrayFromPackList(_ packs: CFData!) -> Unmanaged<CFArray>!
class DRCDTextBlockRef : _CFObject {
}
@available(macOS 10.4, *)
func DRCDTextBlockGetTypeID() -> CFTypeID
@available(macOS 10.4, *)
func DRCDTextBlockCreate(_ language: CFString!, _ encoding: CFStringEncoding) -> Unmanaged<DRCDTextBlockRef>!
@available(macOS 10.4, *)
func DRCDTextBlockGetProperties(_ block: DRCDTextBlockRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.4, *)
func DRCDTextBlockSetProperties(_ block: DRCDTextBlockRef!, _ properties: CFDictionary!)
@available(macOS 10.4, *)
func DRCDTextBlockGetTrackDictionaries(_ block: DRCDTextBlockRef!) -> Unmanaged<CFArray>!
@available(macOS 10.4, *)
func DRCDTextBlockSetTrackDictionaries(_ block: DRCDTextBlockRef!, _ array: CFArray!)
@available(macOS 10.4, *)
func DRCDTextBlockGetValue(_ block: DRCDTextBlockRef!, _ trackIndex: CFIndex, _ key: CFString!) -> Unmanaged<CFTypeRef>!
@available(macOS 10.4, *)
func DRCDTextBlockSetValue(_ block: DRCDTextBlockRef!, _ trackIndex: CFIndex, _ key: CFString!, _ value: CFTypeRef!)
@available(macOS 10.4, *)
func DRCDTextBlockFlatten(_ block: DRCDTextBlockRef!) -> UInt32
@available(macOS 10.4, *)
let kDRCDTextLanguageKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextCharacterCodeKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextCFStringEncodingKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextCopyrightAssertedForSpecialMessagesKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextCopyrightAssertedForNamesKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextCopyrightAssertedForTitlesKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextTitleKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextPerformerKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextSongwriterKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextComposerKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextArrangerKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextSpecialMessageKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextDiscIdentKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextGenreKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextGenreCodeKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextClosedKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextMCNISRCKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextTOCKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextTOC2Key: CFString!
@available(macOS 10.4, *)
let kDRCDTextSizeKey: CFString!
