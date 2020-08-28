
class DRNotificationCenter : NSObject {
  class func currentRunLoop() -> DRNotificationCenter!
  func addObserver(_ observer: Any!, selector aSelector: Selector!, name notificationName: String!, object anObject: Any!)
  func removeObserver(_ observer: Any!, name aName: String!, object anObject: Any!)
}
