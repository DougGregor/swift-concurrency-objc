
class CTFont : _CFObject {
}
@available(tvOS 9.0, *)
func CTFontGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
let kCTFontCopyrightNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontFamilyNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontSubFamilyNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontStyleNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontUniqueNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontFullNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontVersionNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontPostScriptNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontTrademarkNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontManufacturerNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontDesignerNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontDescriptionNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontVendorURLNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontDesignerURLNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontLicenseNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontLicenseURLNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontSampleTextNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontPostScriptCIDNameKey: CFString
@available(tvOS 9.0, *)
func CTFontCreateWithName(_ name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?) -> CTFont
@available(tvOS 9.0, *)
func CTFontCreateWithFontDescriptor(_ descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?) -> CTFont
struct CTFontOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var preventAutoActivation: CTFontOptions { get }
  static var preferSystemFont: CTFontOptions { get }
}
@available(tvOS 9.0, *)
func CTFontCreateWithNameAndOptions(_ name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ options: CTFontOptions) -> CTFont
@available(tvOS 9.0, *)
func CTFontCreateWithFontDescriptorAndOptions(_ descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ options: CTFontOptions) -> CTFont
enum CTFontUIFontType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case user
  case userFixedPitch
  case system
  case emphasizedSystem
  case smallSystem
  case smallEmphasizedSystem
  case miniSystem
  case miniEmphasizedSystem
  case views
  case application
  case label
  case menuTitle
  case menuItem
  case menuItemMark
  case menuItemCmdKey
  case windowTitle
  case pushButton
  case utilityWindowTitle
  case alertHeader
  case systemDetail
  case emphasizedSystemDetail
  case toolbar
  case smallToolbar
  case message
  case palette
  case toolTip
  case controlContent
}
@available(tvOS 9.0, *)
func CTFontCreateUIFontForLanguage(_ uiType: CTFontUIFontType, _ size: CGFloat, _ language: CFString?) -> CTFont?
@available(tvOS 9.0, *)
func CTFontCreateCopyWithAttributes(_ font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ attributes: CTFontDescriptor?) -> CTFont
@available(tvOS 9.0, *)
func CTFontCreateCopyWithSymbolicTraits(_ font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFont?
@available(tvOS 9.0, *)
func CTFontCreateCopyWithFamily(_ font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ family: CFString) -> CTFont?
@available(tvOS 9.0, *)
func CTFontCreateForString(_ currentFont: CTFont, _ string: CFString, _ range: CFRange) -> CTFont
@available(tvOS 9.0, *)
func CTFontCreateForStringWithLanguage(_ currentFont: CTFont, _ string: CFString, _ range: CFRange, _ language: CFString?) -> CTFont
@available(tvOS 9.0, *)
func CTFontCopyFontDescriptor(_ font: CTFont) -> CTFontDescriptor
@available(tvOS 9.0, *)
func CTFontCopyAttribute(_ font: CTFont, _ attribute: CFString) -> CFTypeRef?
@available(tvOS 9.0, *)
func CTFontGetSize(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetMatrix(_ font: CTFont) -> CGAffineTransform
@available(tvOS 9.0, *)
func CTFontGetSymbolicTraits(_ font: CTFont) -> CTFontSymbolicTraits
@available(tvOS 9.0, *)
func CTFontCopyTraits(_ font: CTFont) -> CFDictionary
@available(tvOS 9.0, *)
func CTFontCopyPostScriptName(_ font: CTFont) -> CFString
@available(tvOS 9.0, *)
func CTFontCopyFamilyName(_ font: CTFont) -> CFString
@available(tvOS 9.0, *)
func CTFontCopyFullName(_ font: CTFont) -> CFString
@available(tvOS 9.0, *)
func CTFontCopyDisplayName(_ font: CTFont) -> CFString
@available(tvOS 9.0, *)
func CTFontCopyName(_ font: CTFont, _ nameKey: CFString) -> CFString?
@available(tvOS 9.0, *)
func CTFontCopyLocalizedName(_ font: CTFont, _ nameKey: CFString, _ actualLanguage: UnsafeMutablePointer<Unmanaged<CFString>?>?) -> CFString?
@available(tvOS 9.0, *)
func CTFontCopyCharacterSet(_ font: CTFont) -> CFCharacterSet
@available(tvOS 9.0, *)
func CTFontGetStringEncoding(_ font: CTFont) -> CFStringEncoding
@available(tvOS 9.0, *)
func CTFontCopySupportedLanguages(_ font: CTFont) -> CFArray
@available(tvOS 9.0, *)
func CTFontGetGlyphsForCharacters(_ font: CTFont, _ characters: UnsafePointer<UniChar>, _ glyphs: UnsafeMutablePointer<CGGlyph>, _ count: CFIndex) -> Bool
@available(tvOS 9.0, *)
func CTFontGetAscent(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetDescent(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetLeading(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetUnitsPerEm(_ font: CTFont) -> UInt32
@available(tvOS 9.0, *)
func CTFontGetGlyphCount(_ font: CTFont) -> CFIndex
@available(tvOS 9.0, *)
func CTFontGetBoundingBox(_ font: CTFont) -> CGRect
@available(tvOS 9.0, *)
func CTFontGetUnderlinePosition(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetUnderlineThickness(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetSlantAngle(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetCapHeight(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetXHeight(_ font: CTFont) -> CGFloat
@available(tvOS 9.0, *)
func CTFontGetGlyphWithName(_ font: CTFont, _ glyphName: CFString) -> CGGlyph
@available(tvOS 9.0, *)
func CTFontCopyNameForGlyph(_ font: CTFont, _ glyph: CGGlyph) -> CFString?
@available(tvOS 9.0, *)
func CTFontGetBoundingRectsForGlyphs(_ font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>?, _ count: CFIndex) -> CGRect
@available(tvOS 9.0, *)
func CTFontGetOpticalBoundsForGlyphs(_ font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>?, _ count: CFIndex, _ options: CFOptionFlags) -> CGRect
@available(tvOS 9.0, *)
func CTFontGetAdvancesForGlyphs(_ font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafeMutablePointer<CGSize>?, _ count: CFIndex) -> Double
@available(tvOS 9.0, *)
func CTFontGetVerticalTranslationsForGlyphs(_ font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ translations: UnsafeMutablePointer<CGSize>, _ count: CFIndex)
@available(tvOS 9.0, *)
func CTFontCreatePathForGlyph(_ font: CTFont, _ glyph: CGGlyph, _ matrix: UnsafePointer<CGAffineTransform>?) -> CGPath?
@available(tvOS 9.0, *)
let kCTFontVariationAxisIdentifierKey: CFString
@available(tvOS 9.0, *)
let kCTFontVariationAxisMinimumValueKey: CFString
@available(tvOS 9.0, *)
let kCTFontVariationAxisMaximumValueKey: CFString
@available(tvOS 9.0, *)
let kCTFontVariationAxisDefaultValueKey: CFString
@available(tvOS 9.0, *)
let kCTFontVariationAxisNameKey: CFString
@available(tvOS 11.0, *)
let kCTFontVariationAxisHiddenKey: CFString
@available(tvOS 9.0, *)
func CTFontCopyVariationAxes(_ font: CTFont) -> CFArray?
@available(tvOS 9.0, *)
func CTFontCopyVariation(_ font: CTFont) -> CFDictionary?
@available(tvOS 9.0, *)
let kCTFontOpenTypeFeatureTag: CFString
@available(tvOS 9.0, *)
let kCTFontOpenTypeFeatureValue: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureTypeIdentifierKey: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureTypeNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureTypeExclusiveKey: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureTypeSelectorsKey: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureSelectorIdentifierKey: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureSelectorNameKey: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureSelectorDefaultKey: CFString
@available(tvOS 9.0, *)
let kCTFontFeatureSelectorSettingKey: CFString
@available(tvOS 13.0, *)
let kCTFontFeatureSampleTextKey: CFString
@available(tvOS 13.0, *)
let kCTFontFeatureTooltipTextKey: CFString
@available(tvOS 9.0, *)
func CTFontCopyFeatures(_ font: CTFont) -> CFArray?
@available(tvOS 9.0, *)
func CTFontCopyFeatureSettings(_ font: CTFont) -> CFArray?
@available(tvOS 9.0, *)
func CTFontCopyGraphicsFont(_ font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>?) -> CGFont
@available(tvOS 9.0, *)
func CTFontCreateWithGraphicsFont(_ graphicsFont: CGFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ attributes: CTFontDescriptor?) -> CTFont
typealias ATSFontRef = UInt32
var ATSFONTREF_DEFINED: Int32 { get }
var kCTFontTableBASE: Int { get }
var kCTFontTableCBDT: Int { get }
var kCTFontTableCBLC: Int { get }
var kCTFontTableCFF: Int { get }
var kCTFontTableCFF2: Int { get }
var kCTFontTableCOLR: Int { get }
var kCTFontTableCPAL: Int { get }
var kCTFontTableDSIG: Int { get }
var kCTFontTableEBDT: Int { get }
var kCTFontTableEBLC: Int { get }
var kCTFontTableEBSC: Int { get }
var kCTFontTableGDEF: Int { get }
var kCTFontTableGPOS: Int { get }
var kCTFontTableGSUB: Int { get }
var kCTFontTableHVAR: Int { get }
var kCTFontTableJSTF: Int { get }
var kCTFontTableLTSH: Int { get }
var kCTFontTableMATH: Int { get }
var kCTFontTableMERG: Int { get }
var kCTFontTableMVAR: Int { get }
var kCTFontTableOS2: Int { get }
var kCTFontTablePCLT: Int { get }
var kCTFontTableSTAT: Int { get }
var kCTFontTableSVG: Int { get }
var kCTFontTableVDMX: Int { get }
var kCTFontTableVORG: Int { get }
var kCTFontTableVVAR: Int { get }
var kCTFontTableZapf: Int { get }
var kCTFontTableAcnt: Int { get }
var kCTFontTableAnkr: Int { get }
var kCTFontTableAvar: Int { get }
var kCTFontTableBdat: Int { get }
var kCTFontTableBhed: Int { get }
var kCTFontTableBloc: Int { get }
var kCTFontTableBsln: Int { get }
var kCTFontTableCidg: Int { get }
var kCTFontTableCmap: Int { get }
var kCTFontTableCvar: Int { get }
var kCTFontTableCvt: Int { get }
var kCTFontTableFdsc: Int { get }
var kCTFontTableFeat: Int { get }
var kCTFontTableFmtx: Int { get }
var kCTFontTableFond: Int { get }
var kCTFontTableFpgm: Int { get }
var kCTFontTableFvar: Int { get }
var kCTFontTableGasp: Int { get }
var kCTFontTableGlyf: Int { get }
var kCTFontTableGvar: Int { get }
var kCTFontTableHdmx: Int { get }
var kCTFontTableHead: Int { get }
var kCTFontTableHhea: Int { get }
var kCTFontTableHmtx: Int { get }
var kCTFontTableHsty: Int { get }
var kCTFontTableJust: Int { get }
var kCTFontTableKern: Int { get }
var kCTFontTableKerx: Int { get }
var kCTFontTableLcar: Int { get }
var kCTFontTableLoca: Int { get }
var kCTFontTableLtag: Int { get }
var kCTFontTableMaxp: Int { get }
var kCTFontTableMeta: Int { get }
var kCTFontTableMort: Int { get }
var kCTFontTableMorx: Int { get }
var kCTFontTableName: Int { get }
var kCTFontTableOpbd: Int { get }
var kCTFontTablePost: Int { get }
var kCTFontTablePrep: Int { get }
var kCTFontTableProp: Int { get }
var kCTFontTableSbit: Int { get }
var kCTFontTableSbix: Int { get }
var kCTFontTableTrak: Int { get }
var kCTFontTableVhea: Int { get }
var kCTFontTableVmtx: Int { get }
var kCTFontTableXref: Int { get }
typealias CTFontTableTag = FourCharCode
struct CTFontTableOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
}
@available(tvOS 9.0, *)
func CTFontCopyAvailableTables(_ font: CTFont, _ options: CTFontTableOptions) -> CFArray?
@available(tvOS 9.0, *)
func CTFontCopyTable(_ font: CTFont, _ table: CTFontTableTag, _ options: CTFontTableOptions) -> CFData?
@available(tvOS 9.0, *)
func CTFontDrawGlyphs(_ font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ positions: UnsafePointer<CGPoint>, _ count: Int, _ context: CGContext)
@available(tvOS 9.0, *)
func CTFontGetLigatureCaretPositions(_ font: CTFont, _ glyph: CGGlyph, _ positions: UnsafeMutablePointer<CGFloat>?, _ maxPositions: CFIndex) -> CFIndex
@available(tvOS 9.0, *)
let kCTBaselineClassRoman: CFString
@available(tvOS 9.0, *)
let kCTBaselineClassIdeographicCentered: CFString
@available(tvOS 9.0, *)
let kCTBaselineClassIdeographicLow: CFString
@available(tvOS 9.0, *)
let kCTBaselineClassIdeographicHigh: CFString
@available(tvOS 9.0, *)
let kCTBaselineClassHanging: CFString
@available(tvOS 9.0, *)
let kCTBaselineClassMath: CFString
@available(tvOS 9.0, *)
let kCTBaselineReferenceFont: CFString
@available(tvOS 9.0, *)
let kCTBaselineOriginalFont: CFString
@available(tvOS 9.0, *)
func CTFontCopyDefaultCascadeListForLanguages(_ font: CTFont, _ languagePrefList: CFArray?) -> CFArray?
