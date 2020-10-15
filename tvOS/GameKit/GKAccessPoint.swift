
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
@available(tvOS 14.0, *)
class GKAccessPoint : NSObject {
  class var shared: GKAccessPoint { get }
  var isActive: Bool
  @available(tvOS 14.0, *)
  var isFocused: Bool
  var isVisible: Bool { get }
  var isPresentingGameCenter: Bool { get }
  var showHighlights: Bool
  var location: GKAccessPoint.Location
  var frameInScreenCoordinates: CGRect { get }
  weak var parentWindow: @sil_weak UIWindow?
  func trigger(handler: @escaping () -> Void)
  func trigger(state: GKGameCenterViewControllerState, handler: @escaping () -> Void)
}
