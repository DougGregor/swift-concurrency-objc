
extension NSAppleEventManager {
  typealias SuspensionID = OpaquePointer
}
let NSAppleEventTimeOutDefault: Double
let NSAppleEventTimeOutNone: Double
extension NSNotification.Name {
  static let NSAppleEventManagerWillProcessFirstEvent: NSNotification.Name
}
class NSAppleEventManager : NSObject {
  class func shared() -> NSAppleEventManager
  func setEventHandler(_ handler: Any, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandler(forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(_ theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: NSAppleEventDescriptor? { get }
  var currentReplyAppleEvent: NSAppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> NSAppleEventManager.SuspensionID?
  func appleEvent(forSuspensionID suspensionID: NSAppleEventManager.SuspensionID) -> NSAppleEventDescriptor
  func replyAppleEvent(forSuspensionID suspensionID: NSAppleEventManager.SuspensionID) -> NSAppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(_ suspensionID: NSAppleEventManager.SuspensionID)
  func resume(withSuspensionID suspensionID: NSAppleEventManager.SuspensionID)
}
