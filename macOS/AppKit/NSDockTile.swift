
extension NSAppKitVersion {
}
@available(macOS 10.5, *)
class NSDockTile : NSObject {
  var size: NSSize { get }
  var contentView: NSView?
  func display()
  var showsApplicationBadge: Bool
  var badgeLabel: String?
  weak var owner: @sil_weak AnyObject? { get }
}
protocol NSDockTilePlugIn : NSObjectProtocol {
  @available(macOS 10.5, *)
  func setDockTile(_ dockTile: NSDockTile?)
  optional func dockMenu() -> NSMenu?
}
