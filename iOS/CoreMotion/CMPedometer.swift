
@available(iOS 8.0, *)
class CMPedometerData : NSObject, NSSecureCoding, NSCopying {
  var startDate: Date { get }
  var endDate: Date { get }
  var numberOfSteps: NSNumber { get }
  var distance: NSNumber? { get }
  var floorsAscended: NSNumber? { get }
  var floorsDescended: NSNumber? { get }
  @available(iOS 9.0, *)
  var currentPace: NSNumber? { get }
  @available(iOS 9.0, *)
  var currentCadence: NSNumber? { get }
  @available(iOS 10.0, *)
  var averageActivePace: NSNumber? { get }
}
@available(iOS 10.0, *)
enum CMPedometerEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pause
  case resume
}
@available(iOS 10.0, *)
class CMPedometerEvent : NSObject, NSSecureCoding, NSCopying {
  var date: Date { get }
  var type: CMPedometerEventType { get }
}
typealias CMPedometerHandler = (CMPedometerData?, Error?) -> Void
@available(iOS 10.0, *)
typealias CMPedometerEventHandler = (CMPedometerEvent?, Error?) -> Void
@available(iOS 8.0, *)
class CMPedometer : NSObject {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  @available(iOS 9.0, *)
  class func isPaceAvailable() -> Bool
  @available(iOS 9.0, *)
  class func isCadenceAvailable() -> Bool
  @available(iOS 10.0, *)
  class func isPedometerEventTrackingAvailable() -> Bool
  @available(iOS 11.0, *)
  class func authorizationStatus() -> CMAuthorizationStatus
  func queryPedometerData(from start: Date, to end: Date, withHandler handler: @escaping CMPedometerHandler)
  func startUpdates(from start: Date, withHandler handler: @escaping CMPedometerHandler)
  func stopUpdates()
  @available(iOS 10.0, *)
  func startEventUpdates(handler: @escaping CMPedometerEventHandler)
  @available(iOS 10.0, *)
  func stopEventUpdates()
}
