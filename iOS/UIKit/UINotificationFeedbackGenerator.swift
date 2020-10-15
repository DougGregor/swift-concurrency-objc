
extension UINotificationFeedbackGenerator {
  enum FeedbackType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case success
    case warning
    case error
  }
}
@available(iOS 10.0, *)
class UINotificationFeedbackGenerator : UIFeedbackGenerator {
  func notificationOccurred(_ notificationType: UINotificationFeedbackGenerator.FeedbackType)
}
