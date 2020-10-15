
@available(tvOS 9.0, *)
let kCTFontAttributeName: CFString
@available(tvOS 9.0, *)
let kCTForegroundColorFromContextAttributeName: CFString
@available(tvOS 9.0, *)
let kCTKernAttributeName: CFString
@available(tvOS 10.0, *)
let kCTTrackingAttributeName: CFString
@available(tvOS 9.0, *)
let kCTLigatureAttributeName: CFString
@available(tvOS 9.0, *)
let kCTForegroundColorAttributeName: CFString
@available(tvOS 10.0, *)
let kCTBackgroundColorAttributeName: CFString
@available(tvOS 9.0, *)
let kCTParagraphStyleAttributeName: CFString
@available(tvOS 9.0, *)
let kCTStrokeWidthAttributeName: CFString
@available(tvOS 9.0, *)
let kCTStrokeColorAttributeName: CFString
@available(tvOS 9.0, *)
let kCTUnderlineStyleAttributeName: CFString
@available(tvOS 9.0, *)
let kCTSuperscriptAttributeName: CFString
@available(tvOS 9.0, *)
let kCTUnderlineColorAttributeName: CFString
@available(tvOS 9.0, *)
let kCTVerticalFormsAttributeName: CFString
@available(tvOS 10.0, *)
let kCTHorizontalInVerticalFormsAttributeName: CFString
@available(tvOS 9.0, *)
let kCTGlyphInfoAttributeName: CFString
@available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use feature type kCharacterShapeType with the appropriate selector")
let kCTCharacterShapeAttributeName: CFString
@available(tvOS 9.0, *)
let kCTLanguageAttributeName: CFString
@available(tvOS 9.0, *)
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
@available(tvOS 9.0, *)
let kCTBaselineClassAttributeName: CFString
@available(tvOS 9.0, *)
let kCTBaselineInfoAttributeName: CFString
@available(tvOS 9.0, *)
let kCTBaselineReferenceInfoAttributeName: CFString
@available(tvOS 11.0, *)
let kCTBaselineOffsetAttributeName: CFString
@available(tvOS 9.0, *)
let kCTWritingDirectionAttributeName: CFString
var kCTWritingDirectionEmbedding: Int { get }
var kCTWritingDirectionOverride: Int { get }
@available(tvOS 9.0, *)
let kCTRubyAnnotationAttributeName: CFString
