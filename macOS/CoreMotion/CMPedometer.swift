
class CMPedometerData : NSObject, NSSecureCoding, NSCopying {
  var startDate: Date { get }
  var endDate: Date { get }
  var numberOfSteps: NSNumber { get }
  var distance: NSNumber? { get }
  var floorsAscended: NSNumber? { get }
  var floorsDescended: NSNumber? { get }
  var currentPace: NSNumber? { get }
  var currentCadence: NSNumber? { get }
  var averageActivePace: NSNumber? { get }
}
enum CMPedometerEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pause
  case resume
}
class CMPedometerEvent : NSObject, NSSecureCoding, NSCopying {
  var date: Date { get }
  var type: CMPedometerEventType { get }
}
typealias CMPedometerHandler = (CMPedometerData?, Error?) -> Void
typealias CMPedometerEventHandler = (CMPedometerEvent?, Error?) -> Void
class CMPedometer : NSObject {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  class func isPaceAvailable() -> Bool
  func queryPedometerData(from start: Date, to end: Date, withHandler handler: @escaping CMPedometerHandler)
  func startUpdates(from start: Date, withHandler handler: @escaping CMPedometerHandler)
  func stopUpdates()
}
