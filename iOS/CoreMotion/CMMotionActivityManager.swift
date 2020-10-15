
@available(iOS 7.0, *)
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
@available(iOS 7.0, *)
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, Error?) -> Void
@available(iOS 7.0, *)
class CMMotionActivityManager : NSObject {
  class func isActivityAvailable() -> Bool
  @available(iOS 11.0, *)
  class func authorizationStatus() -> CMAuthorizationStatus
  func queryActivityStarting(from start: Date, to end: Date, to queue: OperationQueue, withHandler handler: @escaping CMMotionActivityQueryHandler)
  func startActivityUpdates(to queue: OperationQueue, withHandler handler: @escaping CMMotionActivityHandler)
  func stopActivityUpdates()
}
