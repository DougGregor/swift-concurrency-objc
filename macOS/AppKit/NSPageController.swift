
extension NSPageController {
  typealias ObjectIdentifier = String
  @available(macOS 10.8, *)
  enum TransitionStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case stackHistory
    case stackBook
    case horizontalStrip
  }
}
@available(macOS 10.8, *)
class NSPageController : NSViewController, NSAnimatablePropertyContainer, NSCoding {
  @IBOutlet weak var delegate: @sil_weak NSPageControllerDelegate?
  var selectedViewController: NSViewController? { get }
  var transitionStyle: NSPageController.TransitionStyle
  var arrangedObjects: [Any]
  var selectedIndex: Int
  func navigateForward(to object: Any)
  func completeTransition()
  @IBAction func navigateBack(_ sender: Any?)
  @IBAction func navigateForward(_ sender: Any?)
  @IBAction func takeSelectedIndexFrom(_ sender: Any?)
}
protocol NSPageControllerDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  optional func pageController(_ pageController: NSPageController, identifierFor object: Any) -> NSPageController.ObjectIdentifier
  @available(macOS 10.8, *)
  optional func pageController(_ pageController: NSPageController, viewControllerForIdentifier identifier: NSPageController.ObjectIdentifier) -> NSViewController
  @available(macOS 10.8, *)
  optional func pageController(_ pageController: NSPageController, frameFor object: Any?) -> NSRect
  @available(macOS 10.8, *)
  optional func pageController(_ pageController: NSPageController, prepare viewController: NSViewController, with object: Any?)
  @available(macOS 10.8, *)
  @asyncHandler optional func pageController(_ pageController: NSPageController, didTransitionTo object: Any)
  @available(macOS 10.8, *)
  optional func pageControllerWillStartLiveTransition(_ pageController: NSPageController)
  @available(macOS 10.8, *)
  @asyncHandler optional func pageControllerDidEndLiveTransition(_ pageController: NSPageController)
}
