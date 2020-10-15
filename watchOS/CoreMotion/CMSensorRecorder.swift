
@available(watchOS 2.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
}
@available(watchOS 2.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  @available(watchOS 4.0, *)
  class func authorizationStatus() -> CMAuthorizationStatus
  @available(watchOS, introduced: 2.0, deprecated: 4.0)
  class func isAuthorizedForRecording() -> Bool
  func accelerometerData(from fromDate: Date, to toDate: Date) -> CMSensorDataList?
  func recordAccelerometer(forDuration duration: TimeInterval)
}
