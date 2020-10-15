
@available(iOS 9.3, *)
class HKActivitySummary : NSObject, NSSecureCoding, NSCopying {
  func dateComponents(for calendar: Calendar) -> DateComponents
  @available(iOS 14.0, *)
  var activityMoveMode: HKActivityMoveMode
  var activeEnergyBurned: HKQuantity
  @available(iOS 14.0, *)
  var appleMoveTime: HKQuantity
  var appleExerciseTime: HKQuantity
  var appleStandHours: HKQuantity
  var activeEnergyBurnedGoal: HKQuantity
  @available(iOS 14.0, *)
  var appleMoveTimeGoal: HKQuantity
  var appleExerciseTimeGoal: HKQuantity
  var appleStandHoursGoal: HKQuantity
}
@available(iOS 9.3, *)
let HKPredicateKeyPathDateComponents: String
