
extension NSSplitViewItem {
  @available(macOS 10.11, *)
  enum Behavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case sidebar
    case contentList
  }
  @available(macOS 10.11, *)
  enum CollapseBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case preferResizingSplitViewWithFixedSiblings
    case preferResizingSiblingsWithFixedSplitView
    case useConstraints
  }
  @available(macOS 10.11, *)
  class let unspecifiedDimension: CGFloat
}
@available(macOS 10.10, *)
class NSSplitViewItem : NSObject, NSAnimatablePropertyContainer, NSCoding {
  convenience init(viewController: NSViewController)
  @available(macOS 10.11, *)
  convenience init(sidebarWithViewController viewController: NSViewController)
  @available(macOS 10.11, *)
  convenience init(contentListWithViewController viewController: NSViewController)
  @available(macOS 10.11, *)
  var behavior: NSSplitViewItem.Behavior { get }
  var viewController: NSViewController
  var isCollapsed: Bool
  var canCollapse: Bool
  @available(macOS 10.11, *)
  var collapseBehavior: NSSplitViewItem.CollapseBehavior
  @available(macOS 10.11, *)
  var minimumThickness: CGFloat
  @available(macOS 10.11, *)
  var maximumThickness: CGFloat
  @available(macOS 10.11, *)
  var preferredThicknessFraction: CGFloat
  var holdingPriority: NSLayoutConstraint.Priority
  @available(macOS 10.11, *)
  var automaticMaximumThickness: CGFloat
  @available(macOS 10.11, *)
  var isSpringLoaded: Bool
  @available(macOS 11.0, *)
  var allowsFullHeightLayout: Bool
  @available(macOS 11.0, *)
  var titlebarSeparatorStyle: NSTitlebarSeparatorStyle
}
