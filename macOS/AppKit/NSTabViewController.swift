
extension NSTabViewController {
  @available(macOS 10.10, *)
  enum TabStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case segmentedControlOnTop
    case segmentedControlOnBottom
    case toolbar
    case unspecified
  }
}
@available(macOS 10.10, *)
class NSTabViewController : NSViewController, NSTabViewDelegate, NSToolbarDelegate {
  var tabStyle: NSTabViewController.TabStyle
  var tabView: NSTabView
  var transitionOptions: NSViewController.TransitionOptions
  var canPropagateSelectedChildViewControllerTitle: Bool
  var tabViewItems: [NSTabViewItem]
  var selectedTabViewItemIndex: Int
  func addTabViewItem(_ tabViewItem: NSTabViewItem)
  func insertTabViewItem(_ tabViewItem: NSTabViewItem, at index: Int)
  func removeTabViewItem(_ tabViewItem: NSTabViewItem)
  func tabViewItem(for viewController: NSViewController) -> NSTabViewItem?
}
