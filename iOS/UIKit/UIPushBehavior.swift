
extension UIPushBehavior {
  @available(iOS 7.0, *)
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case continuous
    case instantaneous
  }
}
@available(iOS 7.0, *)
class UIPushBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem], mode: UIPushBehavior.Mode)
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  func targetOffsetFromCenter(for item: UIDynamicItem) -> UIOffset
  func setTargetOffsetFromCenter(_ o: UIOffset, for item: UIDynamicItem)
  var mode: UIPushBehavior.Mode { get }
  var active: Bool
  var angle: CGFloat
  var magnitude: CGFloat
  var pushDirection: CGVector
  func setAngle(_ angle: CGFloat, magnitude: CGFloat)
}
