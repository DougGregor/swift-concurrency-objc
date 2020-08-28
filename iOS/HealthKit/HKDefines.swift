
@available(iOS 8.0, *)
let HKErrorDomain: String
@available(iOS 8.0, *)
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
  @available(iOS 9.0, *)
  static var errorAnotherWorkoutSessionStarted: HKError.Code { get }
  @available(iOS 9.0, *)
  static var errorUserExitedWorkoutSession: HKError.Code { get }
  @available(iOS 12.0, *)
  static var errorRequiredAuthorizationDenied: HKError.Code { get }
  @available(iOS 14.0, *)
  static var errorNoData: HKError.Code { get }
}
@available(iOS 8.0, *)
enum HKUpdateFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case hourly
  case daily
  case weekly
}
@available(iOS 8.0, *)
enum HKAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case sharingDenied
  case sharingAuthorized
}
@available(iOS 12.0, *)
enum HKAuthorizationRequestStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case shouldRequest
  case unnecessary
}
@available(iOS 8.0, *)
enum HKBiologicalSex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case female
  case male
  @available(iOS 8.2, *)
  case other
}
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
enum HKCategoryValueSleepAnalysis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inBed
  case asleep
  @available(iOS 10.0, *)
  case awake
}
@available(iOS 9.0, *)
enum HKCategoryValueAppleStandHour : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stood
  case idle
}
@available(iOS 9.0, *)
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
@available(iOS 10.0, *)
enum HKWheelchairUse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case no
  case yes
}
@available(iOS 9.0, *)
enum HKCategoryValueCervicalMucusQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case dry
  case sticky
  case creamy
  case watery
  case eggWhite
}
@available(iOS 9.0, *)
enum HKCategoryValueOvulationTestResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case negative
  @available(iOS 13.0, *)
  case luteinizingHormoneSurge
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "HKCategoryValueOvulationTestResult.luteinizingHormoneSurge")
  static var positive: HKCategoryValueOvulationTestResult { get }
  case indeterminate
  @available(iOS 13.0, *)
  case estrogenSurge
}
@available(iOS 9.0, *)
enum HKCategoryValueMenstrualFlow : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case light
  case medium
  case heavy
  @available(iOS 12.0, *)
  case none
}
@available(iOS 9.0, *)
enum HKCategoryValue : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notApplicable
}
@available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "HKCategoryValueEnvironmentalAudioExposureEvent")
enum HKCategoryValueAudioExposureEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "HKCategoryValueEnvironmentalAudioExposureEvent.momentaryLimit")
  case loudEnvironment
}
@available(iOS 14.0, *)
enum HKCategoryValueEnvironmentalAudioExposureEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case momentaryLimit
}
@available(iOS 13.6, *)
enum HKCategoryValueSeverity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case notPresent
  case mild
  case moderate
  case severe
}
@available(iOS 13.6, *)
enum HKCategoryValueAppetiteChanges : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case noChange
  case decreased
  case increased
}
@available(iOS 13.6, *)
enum HKCategoryValuePresence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case present
  case notPresent
}
@available(iOS 14.0, *)
enum HKActivityMoveMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case activeEnergy
  case appleMoveTime
}
