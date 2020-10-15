
extension NSStatusItem {
  class let variableLength: CGFloat
  class let squareLength: CGFloat
}
class NSStatusBar : NSObject {
  class var system: NSStatusBar { get }
  func statusItem(withLength length: CGFloat) -> NSStatusItem
  func removeStatusItem(_ item: NSStatusItem)
  var isVertical: Bool { get }
  var thickness: CGFloat { get }
}
