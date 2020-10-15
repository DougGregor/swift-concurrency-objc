
@available(macOS 10.13, *)
class NSWindowTabGroup : NSObject {
  var identifier: NSWindow.TabbingIdentifier { get }
  var windows: [NSWindow] { get }
  var isOverviewVisible: Bool
  var isTabBarVisible: Bool { get }
  weak var selectedWindow: @sil_weak NSWindow?
  func addWindow(_ window: NSWindow)
  func insertWindow(_ window: NSWindow, at index: Int)
  func removeWindow(_ window: NSWindow)
}
