
extension NSViewController {
  @available(macOS 10.10, *)
  struct TransitionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var crossfade: NSViewController.TransitionOptions { get }
    static var slideUp: NSViewController.TransitionOptions { get }
    static var slideDown: NSViewController.TransitionOptions { get }
    static var slideLeft: NSViewController.TransitionOptions { get }
    static var slideRight: NSViewController.TransitionOptions { get }
    static var slideForward: NSViewController.TransitionOptions { get }
    static var slideBackward: NSViewController.TransitionOptions { get }
    static var allowUserInteraction: NSViewController.TransitionOptions { get }
  }
}
@available(macOS 10.5, *)
class NSViewController : NSResponder, NSEditor, NSSeguePerforming, NSUserInterfaceItemIdentification {
  init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?)
  var nibName: NSNib.Name? { get }
  var nibBundle: Bundle? { get }
  var representedObject: Any?
  var title: String?
  @IBOutlet var view: NSView
  func loadView()
  @available(macOS 10.10, *)
  func viewDidLoad()
  @available(macOS 10.10, *)
  var isViewLoaded: Bool { get }
  @available(macOS 10.10, *)
  func viewWillAppear()
  @available(macOS 10.10, *)
  func viewDidAppear()
  @available(macOS 10.10, *)
  func viewWillDisappear()
  @available(macOS 10.10, *)
  func viewDidDisappear()
  @available(macOS 10.10, *)
  var preferredContentSize: NSSize
  @available(macOS 10.10, *)
  func updateViewConstraints()
  @available(macOS 10.10, *)
  func viewWillLayout()
  @available(macOS 10.10, *)
  func viewDidLayout()
}
extension NSViewController {
  @available(macOS 10.10, *)
  func present(_ viewController: NSViewController, animator: NSViewControllerPresentationAnimator)
  @available(macOS 10.10, *)
  func dismiss(_ viewController: NSViewController)
  @available(macOS 10.10, *)
  @IBAction func dismiss(_ sender: Any?)
  @available(macOS 10.10, *)
  var presentedViewControllers: [NSViewController]? { get }
  @available(macOS 10.10, *)
  unowned(unsafe) var presentingViewController: @sil_unmanaged NSViewController? { get }
}
extension NSViewController {
  @available(macOS 10.10, *)
  func presentAsSheet(_ viewController: NSViewController)
  @available(macOS 10.10, *)
  func presentAsModalWindow(_ viewController: NSViewController)
  @available(macOS 10.10, *)
  func present(_ viewController: NSViewController, asPopoverRelativeTo positioningRect: NSRect, of positioningView: NSView, preferredEdge: NSRectEdge, behavior: NSPopover.Behavior)
  @available(macOS 10.10, *)
  func transition(from fromViewController: NSViewController, to toViewController: NSViewController, options: NSViewController.TransitionOptions = [], completionHandler completion: (() -> Void)? = nil)
  @available(macOS 10.10, *)
  func transition(from fromViewController: NSViewController, to toViewController: NSViewController, options: NSViewController.TransitionOptions = []) async
}
extension NSViewController {
  @available(macOS 10.10, *)
  var parent: NSViewController? { get }
  @available(macOS 10.10, *)
  var children: [NSViewController]
  @available(macOS 10.10, *)
  func addChild(_ childViewController: NSViewController)
  @available(macOS 10.10, *)
  func removeFromParent()
  @available(macOS 10.10, *)
  func insertChild(_ childViewController: NSViewController, at index: Int)
  @available(macOS 10.10, *)
  func removeChild(at index: Int)
  @available(macOS 10.10, *)
  func preferredContentSizeDidChange(for viewController: NSViewController)
  @available(macOS 10.10, *)
  func viewWillTransition(to newSize: NSSize)
}
protocol NSViewControllerPresentationAnimator : NSObjectProtocol {
  @available(macOS 10.10, *)
  func animatePresentation(of viewController: NSViewController, from fromViewController: NSViewController)
  @available(macOS 10.10, *)
  func animateDismissal(of viewController: NSViewController, from fromViewController: NSViewController)
}
extension NSViewController {
  @available(macOS 10.10, *)
  var storyboard: NSStoryboard? { get }
}
extension NSViewController : NSExtensionRequestHandling {
  @available(macOS 10.10, *)
  var extensionContext: NSExtensionContext? { get }
  @available(macOS 10.10, *)
  @IBOutlet var sourceItemView: NSView?
  @available(macOS 10.10, *)
  var preferredScreenOrigin: NSPoint
  @available(macOS 10.10, *)
  var preferredMinimumSize: NSSize { get }
  @available(macOS 10.10, *)
  var preferredMaximumSize: NSSize { get }
}
