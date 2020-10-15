
extension UIFontDescriptor {
  @available(tvOS 7.0, *)
  struct SymbolicTraits : OptionSet {
    init(rawValue: UInt32)
    let rawValue: UInt32
    static var traitItalic: UIFontDescriptor.SymbolicTraits { get }
    static var traitBold: UIFontDescriptor.SymbolicTraits { get }
    static var traitExpanded: UIFontDescriptor.SymbolicTraits { get }
    static var traitCondensed: UIFontDescriptor.SymbolicTraits { get }
    static var traitMonoSpace: UIFontDescriptor.SymbolicTraits { get }
    static var traitVertical: UIFontDescriptor.SymbolicTraits { get }
    static var traitUIOptimized: UIFontDescriptor.SymbolicTraits { get }
    static var traitTightLeading: UIFontDescriptor.SymbolicTraits { get }
    static var traitLooseLeading: UIFontDescriptor.SymbolicTraits { get }
    static var classMask: UIFontDescriptor.SymbolicTraits { get }
    static var classOldStyleSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classTransitionalSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classModernSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classClarendonSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classSlabSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classFreeformSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classSansSerif: UIFontDescriptor.SymbolicTraits { get }
    static var classOrnamentals: UIFontDescriptor.SymbolicTraits { get }
    static var classScripts: UIFontDescriptor.SymbolicTraits { get }
    static var classSymbolic: UIFontDescriptor.SymbolicTraits { get }
  }
  typealias Class = Int
  struct AttributeName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct TraitKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
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
extension UIFont {
  struct TextStyle : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Weight : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: CGFloat)
    init(rawValue: CGFloat)
    let rawValue: CGFloat
  }
}
extension UIFontDescriptor.SystemDesign {
  @available(tvOS 13.0, *)
  static let `default`: UIFontDescriptor.SystemDesign
  @available(tvOS 13.0, *)
  static let rounded: UIFontDescriptor.SystemDesign
  @available(tvOS 13.0, *)
  static let serif: UIFontDescriptor.SystemDesign
  @available(tvOS 13.0, *)
  static let monospaced: UIFontDescriptor.SystemDesign
}
@available(tvOS 7.0, *)
class UIFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptor.SymbolicTraits { get }
  func object(forKey anAttribute: UIFontDescriptor.AttributeName) -> Any?
  var fontAttributes: [UIFontDescriptor.AttributeName : Any] { get }
  func matchingFontDescriptors(withMandatoryKeys mandatoryKeys: Set<UIFontDescriptor.AttributeName>?) -> [UIFontDescriptor]
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix: CGAffineTransform)
  class func preferredFontDescriptor(withTextStyle style: UIFont.TextStyle) -> UIFontDescriptor
  @available(tvOS 10.0, *)
  class func preferredFontDescriptor(withTextStyle style: UIFont.TextStyle, compatibleWith traitCollection: UITraitCollection?) -> UIFontDescriptor
  init(fontAttributes attributes: [UIFontDescriptor.AttributeName : Any] = [:])
  func addingAttributes(_ attributes: [UIFontDescriptor.AttributeName : Any] = [:]) -> UIFontDescriptor
  func withSize(_ newPointSize: CGFloat) -> UIFontDescriptor
  func withMatrix(_ matrix: CGAffineTransform) -> UIFontDescriptor
  func withFace(_ newFace: String) -> UIFontDescriptor
  func withFamily(_ newFamily: String) -> UIFontDescriptor
  func withSymbolicTraits(_ symbolicTraits: UIFontDescriptor.SymbolicTraits) -> UIFontDescriptor?
  @available(tvOS 13.0, *)
  func withDesign(_ design: UIFontDescriptor.SystemDesign) -> UIFontDescriptor?
}
extension UIFontDescriptor.AttributeName {
  @available(tvOS 7.0, *)
  static let family: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let name: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let face: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let size: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let visibleName: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let matrix: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let characterSet: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let cascadeList: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let traits: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let fixedAdvance: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let featureSettings: UIFontDescriptor.AttributeName
  @available(tvOS 7.0, *)
  static let textStyle: UIFontDescriptor.AttributeName
}
extension UIFontDescriptor.TraitKey {
  @available(tvOS 7.0, *)
  static let symbolic: UIFontDescriptor.TraitKey
  @available(tvOS 7.0, *)
  static let weight: UIFontDescriptor.TraitKey
  @available(tvOS 7.0, *)
  static let width: UIFontDescriptor.TraitKey
  @available(tvOS 7.0, *)
  static let slant: UIFontDescriptor.TraitKey
}
extension UIFont.Weight {
  @available(tvOS 8.2, *)
  static let ultraLight: UIFont.Weight
  @available(tvOS 8.2, *)
  static let thin: UIFont.Weight
  @available(tvOS 8.2, *)
  static let light: UIFont.Weight
  @available(tvOS 8.2, *)
  static let regular: UIFont.Weight
  @available(tvOS 8.2, *)
  static let medium: UIFont.Weight
  @available(tvOS 8.2, *)
  static let semibold: UIFont.Weight
  @available(tvOS 8.2, *)
  static let bold: UIFont.Weight
  @available(tvOS 8.2, *)
  static let heavy: UIFont.Weight
  @available(tvOS 8.2, *)
  static let black: UIFont.Weight
}
extension UIFontDescriptor.FeatureKey {
  @available(tvOS 7.0, *)
  static let featureIdentifier: UIFontDescriptor.FeatureKey
  @available(tvOS 7.0, *)
  static let typeIdentifier: UIFontDescriptor.FeatureKey
}
extension UIFont.TextStyle {
  @available(tvOS 9.0, *)
  static let title1: UIFont.TextStyle
  @available(tvOS 9.0, *)
  static let title2: UIFont.TextStyle
  @available(tvOS 9.0, *)
  static let title3: UIFont.TextStyle
  @available(tvOS 7.0, *)
  static let headline: UIFont.TextStyle
  @available(tvOS 7.0, *)
  static let subheadline: UIFont.TextStyle
  @available(tvOS 7.0, *)
  static let body: UIFont.TextStyle
  @available(tvOS 9.0, *)
  static let callout: UIFont.TextStyle
  @available(tvOS 7.0, *)
  static let footnote: UIFont.TextStyle
  @available(tvOS 7.0, *)
  static let caption1: UIFont.TextStyle
  @available(tvOS 7.0, *)
  static let caption2: UIFont.TextStyle
}
