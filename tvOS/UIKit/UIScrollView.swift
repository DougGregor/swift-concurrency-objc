
extension UIScrollView {
  enum IndicatorStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case black
    case white
  }
  @available(tvOS 7.0, *)
  enum KeyboardDismissMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case onDrag
    case interactive
  }
  @available(tvOS 10.2, *)
  enum IndexDisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case alwaysHidden
  }
  @available(tvOS 11.0, *)
  enum ContentInsetAdjustmentBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case scrollableAxes
    case never
    case always
  }
  struct DecelerationRate : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: CGFloat)
    let rawValue: CGFloat
  }
}
extension UIScrollView.DecelerationRate {
  @available(tvOS 3.0, *)
  static let normal: UIScrollView.DecelerationRate
  @available(tvOS 3.0, *)
  static let fast: UIScrollView.DecelerationRate
}
@available(tvOS 2.0, *)
class UIScrollView : UIView, NSCoding, UIFocusItemScrollableContainer {
  var contentInset: UIEdgeInsets
  @available(tvOS 11.0, *)
  var adjustedContentInset: UIEdgeInsets { get }
  @available(tvOS 11.0, *)
  func adjustedContentInsetDidChange()
  @available(tvOS 11.0, *)
  var contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior
  @available(tvOS 13.0, *)
  var automaticallyAdjustsScrollIndicatorInsets: Bool
  @available(tvOS 11.0, *)
  var contentLayoutGuide: UILayoutGuide { get }
  @available(tvOS 11.0, *)
  var frameLayoutGuide: UILayoutGuide { get }
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var isDirectionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var isScrollEnabled: Bool
  var showsVerticalScrollIndicator: Bool
  var showsHorizontalScrollIndicator: Bool
  var indicatorStyle: UIScrollView.IndicatorStyle
  @available(tvOS 11.1, *)
  var verticalScrollIndicatorInsets: UIEdgeInsets
  @available(tvOS 11.1, *)
  var horizontalScrollIndicatorInsets: UIEdgeInsets
  var scrollIndicatorInsets: UIEdgeInsets
  @available(tvOS 3.0, *)
  var decelerationRate: UIScrollView.DecelerationRate
  @available(tvOS 10.2, *)
  var indexDisplayMode: UIScrollView.IndexDisplayMode
  func setContentOffset(_ contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(_ rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var isTracking: Bool { get }
  var isDragging: Bool { get }
  var isDecelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(_ touches: Set<UITouch>, with event: UIEvent?, in view: UIView) -> Bool
  func touchesShouldCancel(in view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  @available(tvOS 3.0, *)
  var zoomScale: CGFloat
  @available(tvOS 3.0, *)
  func setZoomScale(_ scale: CGFloat, animated: Bool)
  @available(tvOS 3.0, *)
  func zoom(to rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var isZooming: Bool { get }
  var isZoomBouncing: Bool { get }
  @available(tvOS 5.0, *)
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  @available(tvOS 5.0, *)
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Configuring the panGestureRecognizer for indirect scrolling automatically supports directional presses now, so this property is no longer useful.")
  var directionalPressGestureRecognizer: UIGestureRecognizer { get }
  @available(tvOS 7.0, *)
  var keyboardDismissMode: UIScrollView.KeyboardDismissMode
}
protocol UIScrollViewDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  optional func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  optional func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  optional func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  optional func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  optional func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(tvOS 11.0, *)
  optional func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView)
}
