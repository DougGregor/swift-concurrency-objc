
protocol UIPopoverBackgroundViewMethods {
  static func arrowBase() -> CGFloat
  static func contentViewInsets() -> UIEdgeInsets
  static func arrowHeight() -> CGFloat
}
@available(tvOS 5.0, *)
class UIPopoverBackgroundView : UIView, UIPopoverBackgroundViewMethods {
  var arrowOffset: CGFloat
  var arrowDirection: UIPopoverArrowDirection
  @available(tvOS, introduced: 6.0, deprecated: 13.0, message: "No longer supported")
  class var wantsDefaultContentAppearance: Bool { get }
}
