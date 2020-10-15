
class CTFont : _CFObject {
}
@available(macOS 10.5, *)
func CTFontGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
let kCTFontCopyrightNameKey: CFString
@available(macOS 10.5, *)
let kCTFontFamilyNameKey: CFString
@available(macOS 10.5, *)
let kCTFontSubFamilyNameKey: CFString
@available(macOS 10.5, *)
let kCTFontStyleNameKey: CFString
@available(macOS 10.5, *)
let kCTFontUniqueNameKey: CFString
@available(macOS 10.5, *)
let kCTFontFullNameKey: CFString
@available(macOS 10.5, *)
let kCTFontVersionNameKey: CFString
@available(macOS 10.5, *)
let kCTFontPostScriptNameKey: CFString
@available(macOS 10.5, *)
let kCTFontTrademarkNameKey: CFString
@available(macOS 10.5, *)
let kCTFontManufacturerNameKey: CFString
@available(macOS 10.5, *)
let kCTFontDesignerNameKey: CFString
@available(macOS 10.5, *)
let kCTFontDescriptionNameKey: CFString
@available(macOS 10.5, *)
let kCTFontVendorURLNameKey: CFString
@available(macOS 10.5, *)
let kCTFontDesignerURLNameKey: CFString
@available(macOS 10.5, *)
let kCTFontLicenseNameKey: CFString
@available(macOS 10.5, *)
let kCTFontLicenseURLNameKey: CFString
@available(macOS 10.5, *)
let kCTFontSampleTextNameKey: CFString
@available(macOS 10.5, *)
let kCTFontPostScriptCIDNameKey: CFString
@available(macOS 10.5, *)
func CTFontCreateWithName(_ name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?) -> CTFont
@available(macOS 10.5, *)
func CTFontCreateWithFontDescriptor(_ descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?) -> CTFont
struct CTFontOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var preventAutoActivation: CTFontOptions { get }
  static var preferSystemFont: CTFontOptions { get }
}
@available(macOS 10.6, *)
func CTFontCreateWithNameAndOptions(_ name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ options: CTFontOptions) -> CTFont
@available(macOS 10.6, *)
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
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontNoFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontUserFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontUserFixedPitchFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontSystemFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontSmallSystemFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontSmallEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontMiniSystemFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontMiniEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontViewsFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontApplicationFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontLabelFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontMenuTitleFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontMenuItemFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontMenuItemMarkFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontMenuItemCmdKeyFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontWindowTitleFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontPushButtonFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontUtilityWindowTitleFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontAlertHeaderFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontSystemDetailFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontEmphasizedSystemDetailFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontToolbarFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontSmallToolbarFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontMessageFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontPaletteFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontToolTipFontType: CTFontUIFontType { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontControlContentFontType: CTFontUIFontType { get }
}
@available(macOS 10.5, *)
func CTFontCreateUIFontForLanguage(_ uiType: CTFontUIFontType, _ size: CGFloat, _ language: CFString?) -> CTFont?
@available(macOS 10.5, *)
func CTFontCreateCopyWithAttributes(_ font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ attributes: CTFontDescriptor?) -> CTFont
@available(macOS 10.5, *)
func CTFontCreateCopyWithSymbolicTraits(_ font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFont?
@available(macOS 10.5, *)
func CTFontCreateCopyWithFamily(_ font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ family: CFString) -> CTFont?
@available(macOS 10.5, *)
func CTFontCreateForString(_ currentFont: CTFont, _ string: CFString, _ range: CFRange) -> CTFont
@available(macOS 10.9, *)
func CTFontCreateForStringWithLanguage(_ currentFont: CTFont, _ string: CFString, _ range: CFRange, _ language: CFString?) -> CTFont
@available(macOS 10.5, *)
func CTFontCopyFontDescriptor(_ font: CTFont) -> CTFontDescriptor
@available(macOS 10.5, *)
func CTFontCopyAttribute(_ font: CTFont, _ attribute: CFString) -> CFTypeRef?
@available(macOS 10.5, *)
func CTFontGetSize(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetMatrix(_ font: CTFont) -> CGAffineTransform
@available(macOS 10.5, *)
func CTFontGetSymbolicTraits(_ font: CTFont) -> CTFontSymbolicTraits
@available(macOS 10.5, *)
func CTFontCopyTraits(_ font: CTFont) -> CFDictionary
@available(macOS 10.5, *)
func CTFontCopyPostScriptName(_ font: CTFont) -> CFString
@available(macOS 10.5, *)
func CTFontCopyFamilyName(_ font: CTFont) -> CFString
@available(macOS 10.5, *)
func CTFontCopyFullName(_ font: CTFont) -> CFString
@available(macOS 10.5, *)
func CTFontCopyDisplayName(_ font: CTFont) -> CFString
@available(macOS 10.5, *)
func CTFontCopyName(_ font: CTFont, _ nameKey: CFString) -> CFString?
@available(macOS 10.5, *)
func CTFontCopyLocalizedName(_ font: CTFont, _ nameKey: CFString, _ actualLanguage: UnsafeMutablePointer<Unmanaged<CFString>?>?) -> CFString?
@available(macOS 10.5, *)
func CTFontCopyCharacterSet(_ font: CTFont) -> CFCharacterSet
@available(macOS 10.5, *)
func CTFontGetStringEncoding(_ font: CTFont) -> CFStringEncoding
@available(macOS 10.5, *)
func CTFontCopySupportedLanguages(_ font: CTFont) -> CFArray
@available(macOS 10.5, *)
func CTFontGetGlyphsForCharacters(_ font: CTFont, _ characters: UnsafePointer<UniChar>, _ glyphs: UnsafeMutablePointer<CGGlyph>, _ count: CFIndex) -> Bool
@available(macOS 10.5, *)
func CTFontGetAscent(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetDescent(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetLeading(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetUnitsPerEm(_ font: CTFont) -> UInt32
@available(macOS 10.5, *)
func CTFontGetGlyphCount(_ font: CTFont) -> CFIndex
@available(macOS 10.5, *)
func CTFontGetBoundingBox(_ font: CTFont) -> CGRect
@available(macOS 10.5, *)
func CTFontGetUnderlinePosition(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetUnderlineThickness(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetSlantAngle(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetCapHeight(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetXHeight(_ font: CTFont) -> CGFloat
@available(macOS 10.5, *)
func CTFontGetGlyphWithName(_ font: CTFont, _ glyphName: CFString) -> CGGlyph
@available(macOS 10.8, *)
func CTFontCopyNameForGlyph(_ font: CTFont, _ glyph: CGGlyph) -> CFString?
@available(macOS 10.5, *)
func CTFontGetBoundingRectsForGlyphs(_ font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>?, _ count: CFIndex) -> CGRect
@available(macOS 10.8, *)
func CTFontGetOpticalBoundsForGlyphs(_ font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>?, _ count: CFIndex, _ options: CFOptionFlags) -> CGRect
@available(macOS 10.5, *)
func CTFontGetAdvancesForGlyphs(_ font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafeMutablePointer<CGSize>?, _ count: CFIndex) -> Double
@available(macOS 10.5, *)
func CTFontGetVerticalTranslationsForGlyphs(_ font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ translations: UnsafeMutablePointer<CGSize>, _ count: CFIndex)
@available(macOS 10.5, *)
func CTFontCreatePathForGlyph(_ font: CTFont, _ glyph: CGGlyph, _ matrix: UnsafePointer<CGAffineTransform>?) -> CGPath?
@available(macOS 10.5, *)
let kCTFontVariationAxisIdentifierKey: CFString
@available(macOS 10.5, *)
let kCTFontVariationAxisMinimumValueKey: CFString
@available(macOS 10.5, *)
let kCTFontVariationAxisMaximumValueKey: CFString
@available(macOS 10.5, *)
let kCTFontVariationAxisDefaultValueKey: CFString
@available(macOS 10.5, *)
let kCTFontVariationAxisNameKey: CFString
@available(macOS 10.13, *)
let kCTFontVariationAxisHiddenKey: CFString
@available(macOS 10.5, *)
func CTFontCopyVariationAxes(_ font: CTFont) -> CFArray?
@available(macOS 10.5, *)
func CTFontCopyVariation(_ font: CTFont) -> CFDictionary?
@available(macOS 10.10, *)
let kCTFontOpenTypeFeatureTag: CFString
@available(macOS 10.10, *)
let kCTFontOpenTypeFeatureValue: CFString
@available(macOS 10.5, *)
let kCTFontFeatureTypeIdentifierKey: CFString
@available(macOS 10.5, *)
let kCTFontFeatureTypeNameKey: CFString
@available(macOS 10.5, *)
let kCTFontFeatureTypeExclusiveKey: CFString
@available(macOS 10.5, *)
let kCTFontFeatureTypeSelectorsKey: CFString
@available(macOS 10.5, *)
let kCTFontFeatureSelectorIdentifierKey: CFString
@available(macOS 10.5, *)
let kCTFontFeatureSelectorNameKey: CFString
@available(macOS 10.5, *)
let kCTFontFeatureSelectorDefaultKey: CFString
@available(macOS 10.5, *)
let kCTFontFeatureSelectorSettingKey: CFString
@available(macOS 10.15, *)
let kCTFontFeatureSampleTextKey: CFString
@available(macOS 10.15, *)
let kCTFontFeatureTooltipTextKey: CFString
@available(macOS 10.5, *)
func CTFontCopyFeatures(_ font: CTFont) -> CFArray?
@available(macOS 10.5, *)
func CTFontCopyFeatureSettings(_ font: CTFont) -> CFArray?
@available(macOS 10.5, *)
func CTFontCopyGraphicsFont(_ font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>?) -> CGFont
@available(macOS 10.5, *)
func CTFontCreateWithGraphicsFont(_ graphicsFont: CGFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ attributes: CTFontDescriptor?) -> CTFont
typealias ATSFontRef = UInt32
var ATSFONTREF_DEFINED: Int32 { get }
@available(macOS, introduced: 10.5, deprecated: 11.0, message: "ATS is deprecated")
func CTFontGetPlatformFont(_ font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>?) -> ATSFontRef
@available(macOS, introduced: 10.5, deprecated: 11.0, message: "ATS is deprecated")
func CTFontCreateWithPlatformFont(_ platformFont: ATSFontRef, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>?, _ attributes: CTFontDescriptor?) -> CTFont?
@available(macOS, introduced: 10.5, deprecated: 10.15, message: "Quickdraw font references are deprecated")
func CTFontCreateWithQuickdrawInstance(_ name: ConstStr255Param?, _ identifier: Int16, _ style: UInt8, _ size: CGFloat) -> CTFont
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
@available(macOS 10.5, *)
func CTFontCopyAvailableTables(_ font: CTFont, _ options: CTFontTableOptions) -> CFArray?
@available(macOS 10.5, *)
func CTFontCopyTable(_ font: CTFont, _ table: CTFontTableTag, _ options: CTFontTableOptions) -> CFData?
@available(macOS 10.7, *)
func CTFontDrawGlyphs(_ font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ positions: UnsafePointer<CGPoint>, _ count: Int, _ context: CGContext)
@available(macOS 10.5, *)
func CTFontGetLigatureCaretPositions(_ font: CTFont, _ glyph: CGGlyph, _ positions: UnsafeMutablePointer<CGFloat>?, _ maxPositions: CFIndex) -> CFIndex
@available(macOS 10.8, *)
let kCTBaselineClassRoman: CFString
@available(macOS 10.8, *)
let kCTBaselineClassIdeographicCentered: CFString
@available(macOS 10.8, *)
let kCTBaselineClassIdeographicLow: CFString
@available(macOS 10.8, *)
let kCTBaselineClassIdeographicHigh: CFString
@available(macOS 10.8, *)
let kCTBaselineClassHanging: CFString
@available(macOS 10.8, *)
let kCTBaselineClassMath: CFString
@available(macOS 10.8, *)
let kCTBaselineReferenceFont: CFString
@available(macOS 10.8, *)
let kCTBaselineOriginalFont: CFString
@available(macOS 10.8, *)
func CTFontCopyDefaultCascadeListForLanguages(_ font: CTFont, _ languagePrefList: CFArray?) -> CFArray?
