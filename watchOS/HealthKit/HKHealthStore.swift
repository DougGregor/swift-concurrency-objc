
@available(watchOS 2.0, *)
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  @available(watchOS 5.0, *)
  func supportsHealthRecords() -> Bool
  func authorizationStatus(for type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorization(toShare typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?, completion: @escaping (Bool, Error?) -> Void)
  @available(watchOS 5.0, *)
  func getRequestStatusForAuthorization(toShare typesToShare: Set<HKSampleType>, read typesToRead: Set<HKObjectType>, completion: @escaping (HKAuthorizationRequestStatus, Error?) -> Void)
  @available(watchOS 2.0, *)
  func earliestPermittedSampleDate() -> Date
  func save(_ object: HKObject, withCompletion completion: @escaping (Bool, Error?) -> Void)
  func save(_ objects: [HKObject], withCompletion completion: @escaping (Bool, Error?) -> Void)
  func delete(_ object: HKObject, withCompletion completion: @escaping (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func delete(_ objects: [HKObject], withCompletion completion: @escaping (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func deleteObjects(of objectType: HKObjectType, predicate: NSPredicate, withCompletion completion: @escaping (Bool, Int, Error?) -> Void)
  func execute(_ query: HKQuery)
  func stop(_ query: HKQuery)
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "No longer supported")
  func splitTotalEnergy(_ totalEnergy: HKQuantity, start startDate: Date, end endDate: Date, resultsHandler: @escaping (HKQuantity?, HKQuantity?, Error?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 3.0)
  func dateOfBirth() throws -> Date
  @available(watchOS 3.0, *)
  func dateOfBirthComponents() throws -> DateComponents
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(watchOS 2.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
  @available(watchOS 3.0, *)
  func wheelchairUse() throws -> HKWheelchairUseObject
  @available(watchOS 7.0, *)
  func activityMoveMode() throws -> HKActivityMoveModeObject
}
extension HKHealthStore {
  func add(_ samples: [HKSample], to workout: HKWorkout, completion: @escaping (Bool, Error?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 5.0, message: "Use HKWorkoutSession's start method")
  func start(_ workoutSession: HKWorkoutSession)
  @available(watchOS, introduced: 2.0, deprecated: 5.0, message: "Use HKWorkoutSession's end method")
  func end(_ workoutSession: HKWorkoutSession)
  @available(watchOS, introduced: 3.0, deprecated: 5.0, message: "Use HKWorkoutSession's pause method")
  func pause(_ workoutSession: HKWorkoutSession)
  @available(watchOS, introduced: 3.0, deprecated: 5.0, message: "Use HKWorkoutSession's resume method")
  func resumeWorkoutSession(_ workoutSession: HKWorkoutSession)
  @available(watchOS 5.0, *)
  func recoverActiveWorkoutSession(completion: @escaping (HKWorkoutSession?, Error?) -> Void)
}
extension HKHealthStore {
  func enableBackgroundDelivery(for type: HKObjectType, frequency: HKUpdateFrequency, withCompletion completion: @escaping (Bool, Error?) -> Void)
  func disableBackgroundDelivery(for type: HKObjectType, withCompletion completion: @escaping (Bool, Error?) -> Void)
  func disableAllBackgroundDelivery(completion: @escaping (Bool, Error?) -> Void)
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let HKUserPreferencesDidChange: NSNotification.Name
}
extension HKHealthStore {
  @available(watchOS 2.0, *)
  func preferredUnits(for quantityTypes: Set<HKQuantityType>, completion: @escaping ([HKQuantityType : HKUnit], Error?) -> Void)
}
