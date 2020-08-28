
@available(iOS 8.0, *)
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  @available(iOS 12.0, *)
  func supportsHealthRecords() -> Bool
  func authorizationStatus(for type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorization(toShare typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?, completion: @escaping (Bool, Error?) -> Void)
  func requestAuthorization(toShare typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?) async throws -> Bool
  @available(iOS 12.0, *)
  func getRequestStatusForAuthorization(toShare typesToShare: Set<HKSampleType>, read typesToRead: Set<HKObjectType>, completion: @escaping (HKAuthorizationRequestStatus, Error?) -> Void)
  @available(iOS 12.0, *)
  func getRequestStatusForAuthorization(toShare typesToShare: Set<HKSampleType>, read typesToRead: Set<HKObjectType>) async throws -> HKAuthorizationRequestStatus
  @available(iOS 9.0, *)
  func handleAuthorizationForExtension(completion: @escaping (Bool, Error?) -> Void)
  @available(iOS 9.0, *)
  func handleAuthorizationForExtension() async throws -> Bool
  @available(iOS 9.0, *)
  func earliestPermittedSampleDate() -> Date
  func save(_ object: HKObject, withCompletion completion: @escaping (Bool, Error?) -> Void)
  func save(_ objects: [HKObject], withCompletion completion: @escaping (Bool, Error?) -> Void)
  func delete(_ object: HKObject, withCompletion completion: @escaping (Bool, Error?) -> Void)
  @available(iOS 9.0, *)
  func delete(_ objects: [HKObject], withCompletion completion: @escaping (Bool, Error?) -> Void)
  @available(iOS 9.0, *)
  func deleteObjects(of objectType: HKObjectType, predicate: NSPredicate, withCompletion completion: @escaping (Bool, Int, Error?) -> Void)
  func execute(_ query: HKQuery)
  func stop(_ query: HKQuery)
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "No longer supported")
  func splitTotalEnergy(_ totalEnergy: HKQuantity, start startDate: Date, end endDate: Date, resultsHandler: @escaping (HKQuantity?, HKQuantity?, Error?) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 10.0)
  func dateOfBirth() throws -> Date
  @available(iOS 10.0, *)
  func dateOfBirthComponents() throws -> DateComponents
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(iOS 9.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
  @available(iOS 10.0, *)
  func wheelchairUse() throws -> HKWheelchairUseObject
  @available(iOS 14.0, *)
  func activityMoveMode() throws -> HKActivityMoveModeObject
}
extension HKHealthStore {
  func add(_ samples: [HKSample], to workout: HKWorkout, completion: @escaping (Bool, Error?) -> Void)
  func add(_ samples: [HKSample], to workout: HKWorkout) async throws -> Bool
  func start(_ workoutSession: HKWorkoutSession)
  func end(_ workoutSession: HKWorkoutSession)
  func pause(_ workoutSession: HKWorkoutSession)
  func resumeWorkoutSession(_ workoutSession: HKWorkoutSession)
  @available(iOS 10.0, *)
  func startWatchApp(with workoutConfiguration: HKWorkoutConfiguration, completion: @escaping (Bool, Error?) -> Void)
  @available(iOS 10.0, *)
  func startWatchApp(with workoutConfiguration: HKWorkoutConfiguration) async throws -> Bool
  func recoverActiveWorkoutSession(completion: @escaping (HKWorkoutSession?, Error?) -> Void)
  func recoverActiveWorkoutSession() async throws -> HKWorkoutSession?
}
extension HKHealthStore {
  func enableBackgroundDelivery(for type: HKObjectType, frequency: HKUpdateFrequency, withCompletion completion: @escaping (Bool, Error?) -> Void)
  func disableBackgroundDelivery(for type: HKObjectType, withCompletion completion: @escaping (Bool, Error?) -> Void)
  func disableAllBackgroundDelivery(completion: @escaping (Bool, Error?) -> Void)
  func disableAllBackgroundDelivery() async throws -> Bool
}
extension NSNotification.Name {
  @available(iOS 8.2, *)
  static let HKUserPreferencesDidChange: NSNotification.Name
}
extension HKHealthStore {
  @available(iOS 8.2, *)
  func preferredUnits(for quantityTypes: Set<HKQuantityType>, completion: @escaping ([HKQuantityType : HKUnit], Error?) -> Void)
  @available(iOS 8.2, *)
  func preferredUnits(for quantityTypes: Set<HKQuantityType>) async throws -> [HKQuantityType : HKUnit]
}
