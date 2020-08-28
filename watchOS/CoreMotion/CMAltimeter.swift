
@available(watchOS 2.0, *)
typealias CMAltitudeHandler = (CMAltitudeData?, Error?) -> Void
@available(watchOS 2.0, *)
class CMAltimeter : NSObject {
  class func isRelativeAltitudeAvailable() -> Bool
  @available(watchOS 4.0, *)
  class func authorizationStatus() -> CMAuthorizationStatus
  func startRelativeAltitudeUpdates(to queue: OperationQueue, withHandler handler: @escaping CMAltitudeHandler)
  func stopRelativeAltitudeUpdates()
}
