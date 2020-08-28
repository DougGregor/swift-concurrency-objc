
@available(iOS 9.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
}
@available(iOS 9.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  @available(iOS 11.0, *)
  class func authorizationStatus() -> CMAuthorizationStatus
  @available(iOS, introduced: 9.0, deprecated: 11.0)
  class func isAuthorizedForRecording() -> Bool
  func accelerometerData(from fromDate: Date, to toDate: Date) -> CMSensorDataList?
  func recordAccelerometer(forDuration duration: TimeInterval)
}
