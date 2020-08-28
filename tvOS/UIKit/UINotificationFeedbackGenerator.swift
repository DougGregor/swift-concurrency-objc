
extension UINotificationFeedbackGenerator {
  enum FeedbackType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case success
    case warning
    case error
  }
}
