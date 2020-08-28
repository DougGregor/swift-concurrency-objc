
@available(iOS 8.0, *)
class HKQuery : NSObject {
  @available(iOS 9.3, *)
  var objectType: HKObjectType? { get }
  @available(iOS, introduced: 8.0, deprecated: 9.3)
  var sampleType: HKSampleType? { get }
  var predicate: NSPredicate? { get }
}
@available(iOS 8.0, *)
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
  @available(iOS 9.0, *)
  class func predicateForObjects(from sourceRevisions: Set<HKSourceRevision>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjects(from devices: Set<HKDevice>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjects(withDeviceProperty key: String, allowedValues: Set<String>) -> NSPredicate
  class func predicateForObject(with UUID: UUID) -> NSPredicate
  class func predicateForObjects(with UUIDs: Set<UUID>) -> NSPredicate
  class func predicateForObjectsWithNoCorrelation() -> NSPredicate
  class func predicateForObjects(from workout: HKWorkout) -> NSPredicate
  @available(iOS 14.0, *)
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
  @available(iOS 11.0, *)
  class func predicateForWorkouts(with operatorType: NSComparisonPredicate.Operator, totalFlightsClimbed: HKQuantity) -> NSPredicate
}
extension HKQuery {
  @available(iOS 9.3, *)
  class func predicateForActivitySummary(with dateComponents: DateComponents) -> NSPredicate
  @available(iOS 9.3, *)
  class func predicate(forActivitySummariesBetweenStart startDateComponents: DateComponents, end endDateComponents: DateComponents) -> NSPredicate
}
extension HKQuery {
  @available(iOS 12.0, *)
  class func predicateForClinicalRecords(withFHIRResourceType resourceType: HKFHIRResourceType) -> NSPredicate
  @available(iOS 12.0, *)
  class func predicateForClinicalRecords(from source: HKSource, fhirResourceType resourceType: HKFHIRResourceType, identifier: String) -> NSPredicate
}
extension HKQuery {
  @available(iOS 14.0, *)
  class func predicateForElectrocardiograms(classification: HKElectrocardiogram.Classification) -> NSPredicate
  @available(iOS 14.0, *)
  class func predicateForElectrocardiograms(symptomsStatus: HKElectrocardiogram.SymptomsStatus) -> NSPredicate
}
