
extension UIImpactFeedbackGenerator {
  enum FeedbackStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case light
    case medium
    case heavy
    @available(tvOS 13.0, *)
    case soft
    @available(tvOS 13.0, *)
    case rigid
  }
}
