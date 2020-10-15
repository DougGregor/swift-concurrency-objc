
typealias NSFontSymbolicTraits = UInt32
extension NSFontDescriptor {
  struct SymbolicTraits : OptionSet {
    init(rawValue: UInt32)
    let rawValue: UInt32
    static var italic: NSFontDescriptor.SymbolicTraits { get }
    static var bold: NSFontDescriptor.SymbolicTraits { get }
    static var expanded: NSFontDescriptor.SymbolicTraits { get }
    static var condensed: NSFontDescriptor.SymbolicTraits { get }
    static var monoSpace: NSFontDescriptor.SymbolicTraits { get }
    static var vertical: NSFontDescriptor.SymbolicTraits { get }
    static var UIOptimized: NSFontDescriptor.SymbolicTraits { get }
    static var tightLeading: NSFontDescriptor.SymbolicTraits { get }
    static var looseLeading: NSFontDescriptor.SymbolicTraits { get }
    static var classMask: NSFontDescriptor.SymbolicTraits { get }
    static var classOldStyleSerifs: NSFontDescriptor.SymbolicTraits { get }
    static var classTransitionalSerifs: NSFontDescriptor.SymbolicTraits { get }
    static var classModernSerifs: NSFontDescriptor.SymbolicTraits { get }
    static var classClarendonSerifs: NSFontDescriptor.SymbolicTraits { get }
    static var classSlabSerifs: NSFontDescriptor.SymbolicTraits { get }
    static var classFreeformSerifs: NSFontDescriptor.SymbolicTraits { get }
    static var classSansSerif: NSFontDescriptor.SymbolicTraits { get }
    static var classOrnamentals: NSFontDescriptor.SymbolicTraits { get }
    static var classScripts: NSFontDescriptor.SymbolicTraits { get }
    static var classSymbolic: NSFontDescriptor.SymbolicTraits { get }
  }
  struct AttributeName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct TraitKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct VariationKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct FeatureKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct SystemDesign : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSFont {
  struct Weight : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: CGFloat)
    init(rawValue: CGFloat)
    let rawValue: CGFloat
  }
  @available(macOS 11.0, *)
  struct TextStyle : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 11.0, *)
  struct TextStyleOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
class NSFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  var postscriptName: String? { get }
  var pointSize: CGFloat { get }
  var matrix: AffineTransform? { get }
  var symbolicTraits: NSFontDescriptor.SymbolicTraits { get }
  @available(macOS 10.13, *)
  var requiresFontAssetRequest: Bool { get }
  func object(forKey attribute: NSFontDescriptor.AttributeName) -> Any?
  var fontAttributes: [NSFontDescriptor.AttributeName : Any] { get }
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix: AffineTransform)
  init(fontAttributes attributes: [NSFontDescriptor.AttributeName : Any]? = nil)
  func matchingFontDescriptors(withMandatoryKeys mandatoryKeys: Set<NSFontDescriptor.AttributeName>?) -> [NSFontDescriptor]
  @available(macOS 10.5, *)
  func matchingFontDescriptor(withMandatoryKeys mandatoryKeys: Set<NSFontDescriptor.AttributeName>?) -> NSFontDescriptor?
  func addingAttributes(_ attributes: [NSFontDescriptor.AttributeName : Any] = [:]) -> NSFontDescriptor
  func withSymbolicTraits(_ symbolicTraits: NSFontDescriptor.SymbolicTraits) -> NSFontDescriptor
  func withSize(_ newPointSize: CGFloat) -> NSFontDescriptor
  func withMatrix(_ matrix: AffineTransform) -> NSFontDescriptor
  func withFace(_ newFace: String) -> NSFontDescriptor
  func withFamily(_ newFamily: String) -> NSFontDescriptor
  @available(macOS 10.15, *)
  func withDesign(_ design: NSFontDescriptor.SystemDesign) -> Self?
}
extension NSFontDescriptor.AttributeName {
  static let family: NSFontDescriptor.AttributeName
  static let name: NSFontDescriptor.AttributeName
  static let face: NSFontDescriptor.AttributeName
  static let size: NSFontDescriptor.AttributeName
  static let visibleName: NSFontDescriptor.AttributeName
  static let matrix: NSFontDescriptor.AttributeName
  static let variation: NSFontDescriptor.AttributeName
  static let characterSet: NSFontDescriptor.AttributeName
  static let cascadeList: NSFontDescriptor.AttributeName
  static let traits: NSFontDescriptor.AttributeName
  static let fixedAdvance: NSFontDescriptor.AttributeName
  @available(macOS 10.5, *)
  static let featureSettings: NSFontDescriptor.AttributeName
}
extension NSFontDescriptor.TraitKey {
  static let symbolic: NSFontDescriptor.TraitKey
  static let weight: NSFontDescriptor.TraitKey
  static let width: NSFontDescriptor.TraitKey
  static let slant: NSFontDescriptor.TraitKey
}
extension NSFontDescriptor.VariationKey {
  static let identifier: NSFontDescriptor.VariationKey
  static let minimumValue: NSFontDescriptor.VariationKey
  static let maximumValue: NSFontDescriptor.VariationKey
  static let defaultValue: NSFontDescriptor.VariationKey
  static let name: NSFontDescriptor.VariationKey
}
extension NSFontDescriptor.FeatureKey {
  @available(macOS 10.5, *)
  static let typeIdentifier: NSFontDescriptor.FeatureKey
  @available(macOS 10.5, *)
  static let selectorIdentifier: NSFontDescriptor.FeatureKey
}
extension NSFont.Weight {
  @available(macOS 10.11, *)
  static let ultraLight: NSFont.Weight
  @available(macOS 10.11, *)
  static let thin: NSFont.Weight
  @available(macOS 10.11, *)
  static let light: NSFont.Weight
  @available(macOS 10.11, *)
  static let regular: NSFont.Weight
  @available(macOS 10.11, *)
  static let medium: NSFont.Weight
  @available(macOS 10.11, *)
  static let semibold: NSFont.Weight
  @available(macOS 10.11, *)
  static let bold: NSFont.Weight
  @available(macOS 10.11, *)
  static let heavy: NSFont.Weight
  @available(macOS 10.11, *)
  static let black: NSFont.Weight
}
extension NSFontDescriptor.SystemDesign {
  @available(macOS 10.15, *)
  static let `default`: NSFontDescriptor.SystemDesign
  @available(macOS 10.15, *)
  static let serif: NSFontDescriptor.SystemDesign
  @available(macOS 10.15, *)
  static let monospaced: NSFontDescriptor.SystemDesign
  @available(macOS 10.15, *)
  static let rounded: NSFontDescriptor.SystemDesign
}
extension NSFont.TextStyle {
  @available(macOS 11.0, *)
  static let largeTitle: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let title1: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let title2: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let title3: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let headline: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let subheadline: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let body: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let callout: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let footnote: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let caption1: NSFont.TextStyle
  @available(macOS 11.0, *)
  static let caption2: NSFont.TextStyle
}
typealias NSFontFamilyClass = UInt32
var NSFontUnknownClass: Int { get }
var NSFontOldStyleSerifsClass: Int { get }
var NSFontTransitionalSerifsClass: Int { get }
var NSFontModernSerifsClass: Int { get }
var NSFontClarendonSerifsClass: Int { get }
var NSFontSlabSerifsClass: Int { get }
var NSFontFreeformSerifsClass: Int { get }
var NSFontSansSerifClass: Int { get }
var NSFontOrnamentalsClass: Int { get }
var NSFontScriptsClass: Int { get }
var NSFontSymbolicClass: Int { get }
var NSFontFamilyClassMask: UInt32 { get }
var NSFontItalicTrait: Int { get }
var NSFontBoldTrait: Int { get }
var NSFontExpandedTrait: Int { get }
var NSFontCondensedTrait: Int { get }
var NSFontMonoSpaceTrait: Int { get }
var NSFontVerticalTrait: Int { get }
var NSFontUIOptimizedTrait: Int { get }
extension NSFontDescriptor {
  @available(macOS 11.0, *)
  class func preferredFontDescriptor(forTextStyle style: NSFont.TextStyle, options: [NSFont.TextStyleOptionKey : Any] = [:]) -> NSFontDescriptor
}
