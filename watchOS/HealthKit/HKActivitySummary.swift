
@available(watchOS 2.2, *)
class HKActivitySummary : NSObject, NSSecureCoding, NSCopying {
  func dateComponents(for calendar: Calendar) -> DateComponents
  @available(watchOS 7.0, *)
  var activityMoveMode: HKActivityMoveMode
  var activeEnergyBurned: HKQuantity
  @available(watchOS 7.0, *)
  var appleMoveTime: HKQuantity
  var appleExerciseTime: HKQuantity
  var appleStandHours: HKQuantity
  var activeEnergyBurnedGoal: HKQuantity
  @available(watchOS 7.0, *)
  var appleMoveTimeGoal: HKQuantity
  var appleExerciseTimeGoal: HKQuantity
  var appleStandHoursGoal: HKQuantity
}
@available(watchOS 2.2, *)
let HKPredicateKeyPathDateComponents: String
