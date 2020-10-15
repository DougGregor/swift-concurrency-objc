
@available(macOS 10.5, *)
let kCTFontAttributeName: CFString
@available(macOS 10.5, *)
let kCTForegroundColorFromContextAttributeName: CFString
@available(macOS 10.5, *)
let kCTKernAttributeName: CFString
@available(macOS 10.12, *)
let kCTTrackingAttributeName: CFString
@available(macOS 10.5, *)
let kCTLigatureAttributeName: CFString
@available(macOS 10.5, *)
let kCTForegroundColorAttributeName: CFString
@available(macOS 10.12, *)
let kCTBackgroundColorAttributeName: CFString
@available(macOS 10.5, *)
let kCTParagraphStyleAttributeName: CFString
@available(macOS 10.6, *)
let kCTStrokeWidthAttributeName: CFString
@available(macOS 10.6, *)
let kCTStrokeColorAttributeName: CFString
@available(macOS 10.5, *)
let kCTUnderlineStyleAttributeName: CFString
@available(macOS 10.5, *)
let kCTSuperscriptAttributeName: CFString
@available(macOS 10.5, *)
let kCTUnderlineColorAttributeName: CFString
@available(macOS 10.5, *)
let kCTVerticalFormsAttributeName: CFString
@available(macOS 10.12, *)
let kCTHorizontalInVerticalFormsAttributeName: CFString
@available(macOS 10.5, *)
let kCTGlyphInfoAttributeName: CFString
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use feature type kCharacterShapeType with the appropriate selector")
let kCTCharacterShapeAttributeName: CFString
@available(macOS 10.9, *)
let kCTLanguageAttributeName: CFString
@available(macOS 10.5, *)
let kCTRunDelegateAttributeName: CFString
struct CTUnderlineStyle : OptionSet {
  init(rawValue: Int32)
  let rawValue: Int32
  static var single: CTUnderlineStyle { get }
  static var thick: CTUnderlineStyle { get }
  static var double: CTUnderlineStyle { get }
}
struct CTUnderlineStyleModifiers : OptionSet {
  init(rawValue: Int32)
  let rawValue: Int32
  static var patternSolid: CTUnderlineStyleModifiers { get }
  static var patternDot: CTUnderlineStyleModifiers { get }
  static var patternDash: CTUnderlineStyleModifiers { get }
  static var patternDashDot: CTUnderlineStyleModifiers { get }
  static var patternDashDotDot: CTUnderlineStyleModifiers { get }
}
@available(macOS 10.8, *)
let kCTBaselineClassAttributeName: CFString
@available(macOS 10.8, *)
let kCTBaselineInfoAttributeName: CFString
@available(macOS 10.8, *)
let kCTBaselineReferenceInfoAttributeName: CFString
@available(macOS 10.13, *)
let kCTBaselineOffsetAttributeName: CFString
@available(macOS 10.8, *)
let kCTWritingDirectionAttributeName: CFString
var kCTWritingDirectionEmbedding: Int { get }
var kCTWritingDirectionOverride: Int { get }
@available(macOS 10.10, *)
let kCTRubyAnnotationAttributeName: CFString
