
extension NSNotification {
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
class NSNotification : NSObject, NSCopying, NSCoding {
  var name: NSNotification.Name { get }
  var object: Any? { get }
  var userInfo: [AnyHashable : Any]? { get }
  @available(macOS 10.6, *)
  init(name: NSNotification.Name, object: Any?, userInfo: [AnyHashable : Any]? = nil)
}

extension NSNotification : _HasCustomAnyHashableRepresentation {
}
extension NSNotification {
  convenience init(name aName: NSNotification.Name, object anObject: Any?)
}
class NotificationCenter : NSObject {
  class var `default`: NotificationCenter { get }
  func addObserver(_ observer: Any, selector aSelector: Selector, name aName: NSNotification.Name?, object anObject: Any?)
  func post(_ notification: Notification)
  func post(name aName: NSNotification.Name, object anObject: Any?)
  func post(name aName: NSNotification.Name, object anObject: Any?, userInfo aUserInfo: [AnyHashable : Any]? = nil)
  func removeObserver(_ observer: Any)
  func removeObserver(_ observer: Any, name aName: NSNotification.Name?, object anObject: Any?)
  @available(macOS 10.6, *)
  func addObserver(forName name: NSNotification.Name?, object obj: Any?, queue: OperationQueue?, using block: @escaping (Notification) -> Void) -> NSObjectProtocol
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NotificationCenter {
  func publisher(for name: Notification.Name, object: AnyObject? = nil) -> NotificationCenter.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NotificationCenter {
  struct Publisher : Publisher {
    let center: NotificationCenter
    let name: Notification.Name
    let object: AnyObject?
    init(center: NotificationCenter, name: Notification.Name, object: AnyObject? = nil)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NotificationCenter.Publisher : Equatable {
}
