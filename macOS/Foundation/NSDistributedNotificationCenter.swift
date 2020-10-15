
extension DistributedNotificationCenter {
  struct CenterType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum SuspensionBehavior : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case drop
    case coalesce
    case hold
    case deliverImmediately
  }
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var deliverImmediately: DistributedNotificationCenter.Options { get }
    static var postToAllSessions: DistributedNotificationCenter.Options { get }
  }
}
extension DistributedNotificationCenter.CenterType {
  static let localNotificationCenterType: DistributedNotificationCenter.CenterType
}
let NSNotificationDeliverImmediately: DistributedNotificationCenter.Options
let NSNotificationPostToAllSessions: DistributedNotificationCenter.Options
class DistributedNotificationCenter : NotificationCenter {
  class func forType(_ notificationCenterType: DistributedNotificationCenter.CenterType) -> DistributedNotificationCenter
  func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: String?, suspensionBehavior: DistributedNotificationCenter.SuspensionBehavior)
  func postNotificationName(_ name: NSNotification.Name, object: String?, userInfo: [AnyHashable : Any]? = nil, deliverImmediately: Bool)
  func postNotificationName(_ name: NSNotification.Name, object: String?, userInfo: [AnyHashable : Any]? = nil, options: DistributedNotificationCenter.Options = [])
  var suspended: Bool
}
