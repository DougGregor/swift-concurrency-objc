
@available(tvOS 13.0, *)
class TVBrowserTransitionAnimator : NSObject, UIViewControllerAnimatedTransitioning {
}
@available(tvOS 13.0, *)
protocol TVBrowserViewControllerDataSource : NSObjectProtocol {
  func browserViewController(_ browserViewController: TVBrowserViewController, documentViewControllerFor viewElement: TVViewElement) -> TVDocumentViewController?
}
@available(tvOS 13.0, *)
protocol TVBrowserViewControllerDelegate : NSObjectProtocol {
  optional func browserViewController(_ browserViewController: TVBrowserViewController, willCenterOn viewElement: TVViewElement)
  optional func browserViewController(_ browserViewController: TVBrowserViewController, didCenterOn viewElement: TVViewElement)
}
@available(tvOS 13.0, *)
class TVBrowserViewController : UIViewController {
  var viewElement: TVViewElement { get }
  var cornerRadius: CGFloat
  var interitemSpacing: CGFloat
  var maskInset: UIEdgeInsets
  var centeredViewElement: TVViewElement
  weak var delegate: @sil_weak TVBrowserViewControllerDelegate?
  weak var dataSource: @sil_weak TVBrowserViewControllerDataSource?
  convenience init?(viewElement: TVViewElement)
}
