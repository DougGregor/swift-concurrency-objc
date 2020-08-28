
typealias CMStepQueryHandler = (Int, Error?) -> Void
typealias CMStepUpdateHandler = (Int, Date, Error?) -> Void
@available(iOS, introduced: 7.0, deprecated: 8.0, message: "Use CMPedometer instead")
class CMStepCounter : NSObject {
  class func isStepCountingAvailable() -> Bool
  func queryStepCountStarting(from start: Date, to end: Date, to queue: OperationQueue, withHandler handler: @escaping CMStepQueryHandler)
  func startStepCountingUpdates(to queue: OperationQueue, updateOn stepCounts: Int, withHandler handler: @escaping CMStepUpdateHandler)
  func stopStepCountingUpdates()
}
