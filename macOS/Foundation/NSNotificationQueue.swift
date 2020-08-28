
extension NotificationQueue {
  enum PostingStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case whenIdle
    case asap
    case now
  }
  struct NotificationCoalescing : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var none: NotificationQueue.NotificationCoalescing { get }
    static var onName: NotificationQueue.NotificationCoalescing { get }
    static var onSender: NotificationQueue.NotificationCoalescing { get }
  }
}
class NotificationQueue : NSObject {
  class var `default`: NotificationQueue { get }
  init(notificationCenter: NotificationCenter)
  func enqueue(_ notification: Notification, postingStyle: NotificationQueue.PostingStyle)
  func enqueue(_ notification: Notification, postingStyle: NotificationQueue.PostingStyle, coalesceMask: NotificationQueue.NotificationCoalescing, forModes modes: [RunLoop.Mode]?)
  func dequeueNotifications(matching notification: Notification, coalesceMask: Int)
}
