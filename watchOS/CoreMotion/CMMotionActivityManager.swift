
@available(watchOS 2.0, *)
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
@available(watchOS 2.0, *)
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, Error?) -> Void
@available(watchOS 2.0, *)
class CMMotionActivityManager : NSObject {
  class func isActivityAvailable() -> Bool
  @available(watchOS 4.0, *)
  class func authorizationStatus() -> CMAuthorizationStatus
  func queryActivityStarting(from start: Date, to end: Date, to queue: OperationQueue, withHandler handler: @escaping CMMotionActivityQueryHandler)
  func startActivityUpdates(to queue: OperationQueue, withHandler handler: @escaping CMMotionActivityHandler)
  func stopActivityUpdates()
}
