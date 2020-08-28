
@available(iOS 10.0, *)
enum HKWorkoutSessionLocationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case indoor
  case outdoor
}
@available(iOS 10.0, *)
class HKWorkoutConfiguration : NSObject, NSCopying, NSSecureCoding {
  var activityType: HKWorkoutActivityType
  var locationType: HKWorkoutSessionLocationType
  var swimmingLocationType: HKWorkoutSwimmingLocationType
  @NSCopying var lapLength: HKQuantity?
}
