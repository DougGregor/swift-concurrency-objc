
@available(iOS 14.0, *)
class __UIBackgroundConfiguration : NSObject, NSCopying, NSSecureCoding {
  class func clear() -> Self
  class func listPlainCell() -> Self
  class func listPlainHeaderFooter() -> Self
  class func listGroupedCell() -> Self
  class func listGroupedHeaderFooter() -> Self
  class func listSidebarHeader() -> Self
  class func listSidebarCell() -> Self
  class func listAccompaniedSidebarCell() -> Self
  func updatedConfiguration(for state: __UIConfigurationState) -> Self
  var customView: UIView?
  var cornerRadius: CGFloat
  var backgroundInsets: NSDirectionalEdgeInsets
  var edgesAddingLayoutMarginsToBackgroundInsets: NSDirectionalRectEdge
  var backgroundColor: UIColor?
  var backgroundColorTransformer: __UIConfigurationColorTransformer?
  func resolvedBackgroundColor(forTintColor tintColor: UIColor) -> UIColor
  @NSCopying var visualEffect: UIVisualEffect?
  var strokeColor: UIColor?
  var strokeColorTransformer: __UIConfigurationColorTransformer?
  func resolvedStrokeColor(forTintColor tintColor: UIColor) -> UIColor
  var strokeWidth: CGFloat
  var strokeOutset: CGFloat
}
