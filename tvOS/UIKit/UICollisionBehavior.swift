
extension UICollisionBehavior {
  @available(tvOS 7.0, *)
  struct Mode : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var items: UICollisionBehavior.Mode { get }
    static var boundaries: UICollisionBehavior.Mode { get }
    static var everything: UICollisionBehavior.Mode { get }
  }
}
protocol UICollisionBehaviorDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, with item2: UIDynamicItem, at p: CGPoint)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, endedContactFor item1: UIDynamicItem, with item2: UIDynamicItem)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?)
}
@available(tvOS 7.0, *)
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehavior.Mode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundary(with insets: UIEdgeInsets)
  func addBoundary(withIdentifier identifier: NSCopying, for bezierPath: UIBezierPath)
  func addBoundary(withIdentifier identifier: NSCopying, from p1: CGPoint, to p2: CGPoint)
  func boundary(withIdentifier identifier: NSCopying) -> UIBezierPath?
  func removeBoundary(withIdentifier identifier: NSCopying)
  var boundaryIdentifiers: [NSCopying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
}
