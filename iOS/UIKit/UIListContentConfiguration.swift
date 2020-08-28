
@available(iOS 14.0, *)
class __UIListContentConfiguration : NSObject, __UIContentConfiguration, NSSecureCoding {
  class func cell() -> Self
  class func subtitleCell() -> Self
  class func valueCell() -> Self
  class func plainHeader() -> Self
  class func plainFooter() -> Self
  class func groupedHeader() -> Self
  class func groupedFooter() -> Self
  class func sidebarCell() -> Self
  class func sidebarSubtitleCell() -> Self
  class func accompaniedSidebarCell() -> Self
  class func accompaniedSidebarSubtitleCell() -> Self
  class func sidebarHeader() -> Self
  var image: UIImage?
  var imageProperties: __UIListContentImageProperties { get }
  var text: String?
  @NSCopying var attributedText: NSAttributedString?
  var textProperties: __UIListContentTextProperties { get }
  var secondaryText: String?
  @NSCopying var secondaryAttributedText: NSAttributedString?
  var secondaryTextProperties: __UIListContentTextProperties { get }
  var axesPreservingSuperviewLayoutMargins: UIAxis
  var directionalLayoutMargins: NSDirectionalEdgeInsets
  var prefersSideBySideTextAndSecondaryText: Bool
  var imageToTextPadding: CGFloat
  var textToSecondaryTextHorizontalPadding: CGFloat
  var textToSecondaryTextVerticalPadding: CGFloat
}
@available(iOS 14.0, *)
class UIListContentView : UIView, __UIContentView {
  init(__configuration configuration: __UIListContentConfiguration)
  var textLayoutGuide: UILayoutGuide? { get }
  var secondaryTextLayoutGuide: UILayoutGuide? { get }
  var imageLayoutGuide: UILayoutGuide? { get }
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIListContentView : UIContentView {
  @available(iOS 14.0, tvOS 14.0, *)
  convenience init(configuration: UIListContentConfiguration)
}
