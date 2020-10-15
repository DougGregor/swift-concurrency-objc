
extension GKAccessPoint {
  enum Location : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case topLeading
    case topTrailing
    case bottomLeading
    case bottomTrailing
  }
}
@available(macOS 11.0, *)
class GKAccessPoint : NSObject {
  class var shared: GKAccessPoint { get }
  var isActive: Bool
  var isVisible: Bool { get }
  var isPresentingGameCenter: Bool { get }
  var showHighlights: Bool
  var location: GKAccessPoint.Location
  var frameInScreenCoordinates: NSRect { get }
  weak var parentWindow: @sil_weak NSWindow?
  func trigger(handler: @escaping () -> Void)
  func trigger(state: GKGameCenterViewControllerState, handler: @escaping () -> Void)
}
