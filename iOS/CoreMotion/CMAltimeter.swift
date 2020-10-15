
@available(iOS 8.0, *)
typealias CMAltitudeHandler = (CMAltitudeData?, Error?) -> Void
@available(iOS 8.0, *)
class CMAltimeter : NSObject {
  class func isRelativeAltitudeAvailable() -> Bool
  @available(iOS 11.0, *)
  class func authorizationStatus() -> CMAuthorizationStatus
  func startRelativeAltitudeUpdates(to queue: OperationQueue, withHandler handler: @escaping CMAltitudeHandler)
  func stopRelativeAltitudeUpdates()
}
