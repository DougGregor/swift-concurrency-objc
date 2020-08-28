
@available(iOS 11.0, *)
protocol UIAccessibilityContentSizeCategoryImageAdjusting : NSObjectProtocol {
  var adjustsImageSizeForAccessibilityContentSizeCategory: Bool { get set }
}
extension UIImageView : UIAccessibilityContentSizeCategoryImageAdjusting {
}
extension UIButton : UIAccessibilityContentSizeCategoryImageAdjusting {
}
extension NSTextAttachment : UIAccessibilityContentSizeCategoryImageAdjusting {
}
