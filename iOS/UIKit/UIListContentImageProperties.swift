
@available(iOS 14.0, *)
class __UIListContentImageProperties : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var preferredSymbolConfiguration: UIImage.SymbolConfiguration?
  var tintColor: UIColor?
  var tintColorTransformer: __UIConfigurationColorTransformer?
  func resolvedTintColor(forTintColor tintColor: UIColor) -> UIColor
  var cornerRadius: CGFloat
  var maximumSize: CGSize
  var reservedLayoutSize: CGSize
  var accessibilityIgnoresInvertColors: Bool
}
@available(iOS 14.0, *)
let __UIListContentImageStandardDimension: CGFloat
