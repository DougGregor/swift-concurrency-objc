
@available(watchOS 2.0, *)
class HKQuery : NSObject {
  @available(watchOS 2.2, *)
  var objectType: HKObjectType? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.2)
  var sampleType: HKSampleType? { get }
  var predicate: NSPredicate? { get }
}
@available(watchOS 2.0, *)
struct HKQueryOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var strictStartDate: HKQueryOptions { get }
  static var strictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjects(withMetadataKey key: String) -> NSPredicate
  class func predicateForObjects(withMetadataKey key: String, allowedValues: [Any]) -> NSPredicate
  class func predicateForObjects(withMetadataKey key: String, operatorType: NSComparisonPredicate.Operator, value: Any) -> NSPredicate
  class func predicateForObjects(from source: HKSource) -> NSPredicate
  class func predicateForObjects(from sources: Set<HKSource>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjects(from sourceRevisions: Set<HKSourceRevision>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjects(from devices: Set<HKDevice>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjects(withDeviceProperty key: String, allowedValues: Set<String>) -> NSPredicate
  class func predicateForObject(with UUID: UUID) -> NSPredicate
  class func predicateForObjects(with UUIDs: Set<UUID>) -> NSPredicate
  class func predicateForObjectsWithNoCorrelation() -> NSPredicate
  class func predicateForObjects(from workout: HKWorkout) -> NSPredicate
  @available(watchOS 7.0, *)
  class func predicateForObjectsAssociated(electrocardiogram: HKElectrocardiogram) -> NSPredicate
}
extension HKQuery {
  class func predicateForSamples(withStart startDate: Date?, end endDate: Date?, options: HKQueryOptions = []) -> NSPredicate
}
extension HKQuery {
  class func predicateForQuantitySamples(with operatorType: NSComparisonPredicate.Operator, quantity: HKQuantity) -> NSPredicate
}
extension HKQuery {
  class func predicateForCategorySamples(with operatorType: NSComparisonPredicate.Operator, value: Int) -> NSPredicate
}
extension HKQuery {
  class func predicateForWorkouts(with workoutActivityType: HKWorkoutActivityType) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSComparisonPredicate.Operator, duration: TimeInterval) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSComparisonPredicate.Operator, totalEnergyBurned: HKQuantity) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSComparisonPredicate.Operator, totalDistance: HKQuantity) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSComparisonPredicate.Operator, totalSwimmingStrokeCount: HKQuantity) -> NSPredicate
  @available(watchOS 4.0, *)
  class func predicateForWorkouts(with operatorType: NSComparisonPredicate.Operator, totalFlightsClimbed: HKQuantity) -> NSPredicate
}
extension HKQuery {
  @available(watchOS 2.2, *)
  class func predicateForActivitySummary(with dateComponents: DateComponents) -> NSPredicate
  @available(watchOS 2.2, *)
  class func predicate(forActivitySummariesBetweenStart startDateComponents: DateComponents, end endDateComponents: DateComponents) -> NSPredicate
}
extension HKQuery {
}
extension HKQuery {
  @available(watchOS 7.0, *)
  class func predicateForElectrocardiograms(classification: HKElectrocardiogram.Classification) -> NSPredicate
  @available(watchOS 7.0, *)
  class func predicateForElectrocardiograms(symptomsStatus: HKElectrocardiogram.SymptomsStatus) -> NSPredicate
}
