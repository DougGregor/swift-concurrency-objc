
@available(watchOS 2.0, *)
let HKErrorDomain: String
@available(watchOS 2.0, *)
struct HKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var noError: HKError.Code { get }
  static var errorHealthDataUnavailable: HKError.Code { get }
  static var errorHealthDataRestricted: HKError.Code { get }
  static var errorInvalidArgument: HKError.Code { get }
  static var errorAuthorizationDenied: HKError.Code { get }
  static var errorAuthorizationNotDetermined: HKError.Code { get }
  static var errorDatabaseInaccessible: HKError.Code { get }
  static var errorUserCanceled: HKError.Code { get }
  @available(watchOS 2.0, *)
  static var errorAnotherWorkoutSessionStarted: HKError.Code { get }
  @available(watchOS 2.0, *)
  static var errorUserExitedWorkoutSession: HKError.Code { get }
  @available(watchOS 5.0, *)
  static var errorRequiredAuthorizationDenied: HKError.Code { get }
  @available(watchOS 7.0, *)
  static var errorNoData: HKError.Code { get }
}
@available(watchOS 2.0, *)
enum HKUpdateFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case hourly
  case daily
  case weekly
}
@available(watchOS 2.0, *)
enum HKAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case sharingDenied
  case sharingAuthorized
}
@available(watchOS 5.0, *)
enum HKAuthorizationRequestStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case shouldRequest
  case unnecessary
}
@available(watchOS 2.0, *)
enum HKBiologicalSex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case female
  case male
  @available(watchOS 2.0, *)
  case other
}
@available(watchOS 2.0, *)
enum HKBloodType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case aPositive
  case aNegative
  case bPositive
  case bNegative
  case abPositive
  case abNegative
  case oPositive
  case oNegative
}
@available(watchOS 2.0, *)
enum HKCategoryValueSleepAnalysis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inBed
  case asleep
  @available(watchOS 3.0, *)
  case awake
}
@available(watchOS 2.0, *)
enum HKCategoryValueAppleStandHour : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stood
  case idle
}
@available(watchOS 2.0, *)
enum HKFitzpatrickSkinType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case I
  case II
  case III
  case IV
  case V
  case VI
}
@available(watchOS 3.0, *)
enum HKWheelchairUse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case no
  case yes
}
@available(watchOS 2.0, *)
enum HKCategoryValueCervicalMucusQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case dry
  case sticky
  case creamy
  case watery
  case eggWhite
}
@available(watchOS 2.0, *)
enum HKCategoryValueOvulationTestResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case negative
  @available(watchOS 6.0, *)
  case luteinizingHormoneSurge
  @available(watchOS, introduced: 2.0, deprecated: 6.0, renamed: "HKCategoryValueOvulationTestResult.luteinizingHormoneSurge")
  static var positive: HKCategoryValueOvulationTestResult { get }
  case indeterminate
  @available(watchOS 6.0, *)
  case estrogenSurge
}
@available(watchOS 2.0, *)
enum HKCategoryValueMenstrualFlow : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case light
  case medium
  case heavy
  @available(watchOS 5.0, *)
  case none
}
@available(watchOS 2.0, *)
enum HKCategoryValue : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notApplicable
}
@available(watchOS, introduced: 6.0, deprecated: 7.0, renamed: "HKCategoryValueEnvironmentalAudioExposureEvent")
enum HKCategoryValueAudioExposureEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(watchOS, introduced: 6.0, deprecated: 7.0, renamed: "HKCategoryValueEnvironmentalAudioExposureEvent.momentaryLimit")
  case loudEnvironment
}
@available(watchOS 7.0, *)
enum HKCategoryValueEnvironmentalAudioExposureEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case momentaryLimit
}
@available(watchOS 7.0, *)
enum HKCategoryValueSeverity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case notPresent
  case mild
  case moderate
  case severe
}
@available(watchOS 7.0, *)
enum HKCategoryValueAppetiteChanges : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case noChange
  case decreased
  case increased
}
@available(watchOS 7.0, *)
enum HKCategoryValuePresence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case present
  case notPresent
}
@available(watchOS 7.0, *)
enum HKActivityMoveMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case activeEnergy
  case appleMoveTime
}
