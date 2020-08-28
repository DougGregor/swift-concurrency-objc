
@available(tvOS 4.2, *)
class UIPrintFormatter : NSObject, NSCopying {
  weak var printPageRenderer: @sil_weak UIPrintPageRenderer? { get }
  func removeFromPrintPageRenderer()
  var maximumContentHeight: CGFloat
  var maximumContentWidth: CGFloat
  @available(tvOS, introduced: 4.2, deprecated: 10.0)
  var contentInsets: UIEdgeInsets
  var perPageContentInsets: UIEdgeInsets
  var startPage: Int
  var pageCount: Int { get }
  func rectForPage(at pageIndex: Int) -> CGRect
  func draw(in rect: CGRect, forPageAt pageIndex: Int)
}
@available(tvOS 4.2, *)
class UISimpleTextPrintFormatter : UIPrintFormatter {
  init(text: String)
  @available(tvOS 7.0, *)
  init(attributedText: NSAttributedString)
  var text: String?
  @available(tvOS 7.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var font: UIFont?
  var color: UIColor?
  var textAlignment: NSTextAlignment
}
@available(tvOS 4.2, *)
class UIMarkupTextPrintFormatter : UIPrintFormatter {
  init(markupText: String)
  var markupText: String?
}
@available(tvOS 4.2, *)
class UIViewPrintFormatter : UIPrintFormatter {
  var view: UIView { get }
}
extension UIView {
  func viewPrintFormatter() -> UIViewPrintFormatter
  func draw(_ rect: CGRect, for formatter: UIViewPrintFormatter)
}
