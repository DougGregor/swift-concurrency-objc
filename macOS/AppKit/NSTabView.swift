
extension NSAppKitVersion {
}
extension NSTabView {
  enum TabType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case topTabsBezelBorder
    case leftTabsBezelBorder
    case bottomTabsBezelBorder
    case rightTabsBezelBorder
    case noTabsBezelBorder
    case noTabsLineBorder
    case noTabsNoBorder
  }
  @available(macOS 10.12, *)
  enum TabPosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case top
    case left
    case bottom
    case right
  }
  @available(macOS 10.12, *)
  enum TabViewBorderType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case line
    case bezel
  }
}
class NSTabView : NSView {
  func selectTabViewItem(_ tabViewItem: NSTabViewItem?)
  func selectTabViewItem(at index: Int)
  func selectTabViewItem(withIdentifier identifier: Any)
  func takeSelectedTabViewItemFromSender(_ sender: Any?)
  func selectFirstTabViewItem(_ sender: Any?)
  func selectLastTabViewItem(_ sender: Any?)
  func selectNextTabViewItem(_ sender: Any?)
  func selectPreviousTabViewItem(_ sender: Any?)
  var selectedTabViewItem: NSTabViewItem? { get }
  var font: NSFont
  var tabViewType: NSTabView.TabType
  @available(macOS 10.12, *)
  var tabPosition: NSTabView.TabPosition
  @available(macOS 10.12, *)
  var tabViewBorderType: NSTabView.TabViewBorderType
  var tabViewItems: [NSTabViewItem]
  var allowsTruncatedLabels: Bool
  var minimumSize: NSSize { get }
  var drawsBackground: Bool
  var controlSize: NSControl.ControlSize
  func addTabViewItem(_ tabViewItem: NSTabViewItem)
  func insertTabViewItem(_ tabViewItem: NSTabViewItem, at index: Int)
  func removeTabViewItem(_ tabViewItem: NSTabViewItem)
  weak var delegate: @sil_weak NSTabViewDelegate?
  func tabViewItem(at point: NSPoint) -> NSTabViewItem?
  var contentRect: NSRect { get }
  var numberOfTabViewItems: Int { get }
  func indexOfTabViewItem(_ tabViewItem: NSTabViewItem) -> Int
  func tabViewItem(at index: Int) -> NSTabViewItem
  func indexOfTabViewItem(withIdentifier identifier: Any) -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "The controlTint property is not respected on 10.14 and later.")
  var controlTint: NSControlTint
}
protocol NSTabViewDelegate : NSObjectProtocol {
  optional func tabView(_ tabView: NSTabView, shouldSelect tabViewItem: NSTabViewItem?) -> Bool
  optional func tabView(_ tabView: NSTabView, willSelect tabViewItem: NSTabViewItem?)
  optional func tabView(_ tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?)
  optional func tabViewDidChangeNumberOfTabViewItems(_ tabView: NSTabView)
}
