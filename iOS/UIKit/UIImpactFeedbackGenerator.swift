
extension UIImpactFeedbackGenerator {
  enum FeedbackStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case light
    case medium
    case heavy
    @available(iOS 13.0, *)
    case soft
    @available(iOS 13.0, *)
    case rigid
  }
}
@available(iOS 10.0, *)
class UIImpactFeedbackGenerator : UIFeedbackGenerator {
  init(style: UIImpactFeedbackGenerator.FeedbackStyle)
  func impactOccurred()
  @available(iOS 13.0, *)
  func impactOccurred(intensity: CGFloat)
}
