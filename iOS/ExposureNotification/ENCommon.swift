
var EN_FEATURE_GENERAL: Int32 { get }
@available(iOS 13.5, *)
let ENErrorDomain: String
@available(iOS 13.5, *)
struct ENError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: ENError.Code { get }
  static var badParameter: ENError.Code { get }
  static var notEntitled: ENError.Code { get }
  static var notAuthorized: ENError.Code { get }
  static var unsupported: ENError.Code { get }
  static var invalidated: ENError.Code { get }
  static var bluetoothOff: ENError.Code { get }
  static var insufficientStorage: ENError.Code { get }
  static var notEnabled: ENError.Code { get }
  static var apiMisuse: ENError.Code { get }
  static var `internal`: ENError.Code { get }
  static var insufficientMemory: ENError.Code { get }
  static var rateLimited: ENError.Code { get }
  static var restricted: ENError.Code { get }
  static var badFormat: ENError.Code { get }
  static var dataInaccessible: ENError.Code { get }
  static var travelStatusNotAvailable: ENError.Code { get }
}
@available(iOS 13.5, *)
typealias ENErrorOutType = AutoreleasingUnsafeMutablePointer<NSError?>
@available(iOS 13.5, *)
typealias ENAttenuation = UInt8
@available(iOS 13.5, *)
var ENAttenuationMin: Int { get }
@available(iOS 13.5, *)
var ENAttenuationMax: Int { get }
@available(iOS 13.5, *)
enum ENAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case restricted
  case notAuthorized
  case authorized
}
@available(iOS 13.7, *)
enum ENCalibrationConfidence : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case lowest
  case low
  case medium
  case high
}
@available(iOS, introduced: 14.0, deprecated: 14.2, message: "Server must provide keys with days_since_onset_of_symptoms set.")
let ENDaysSinceOnsetOfSymptomsUnknown: Int
@available(iOS 13.7, *)
enum ENDiagnosisReportType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case unknown
  case confirmedTest
  case confirmedClinicalDiagnosis
  case selfReported
  case recursive
  case revoked
}
@available(iOS 13.7, *)
enum ENInfectiousness : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case standard
  case high
}
@available(iOS 13.5, *)
typealias ENIntervalNumber = UInt32
@available(iOS 13.5, *)
typealias ENRiskLevel = UInt8
@available(iOS 13.5, *)
var ENRiskLevelMin: Int { get }
@available(iOS 13.5, *)
var ENRiskLevelMax: Int { get }
@available(iOS 13.5, *)
typealias ENRiskLevelValue = UInt8
@available(iOS 13.5, *)
var ENRiskLevelValueMin: Int { get }
@available(iOS 13.5, *)
var ENRiskLevelValueMax: Int { get }
@available(iOS 13.5, *)
typealias ENRiskScore = UInt8
@available(iOS 13.5, *)
var ENRiskScoreMin: Int { get }
@available(iOS 13.5, *)
var ENRiskScoreMax: Int { get }
@available(iOS 13.5, *)
var ENRiskWeightDefault: Int { get }
@available(iOS 13.7, *)
var ENRiskWeightDefaultV2: Int { get }
@available(iOS 13.5, *)
var ENRiskWeightMin: Int { get }
@available(iOS 13.5, *)
var ENRiskWeightMax: Int { get }
@available(iOS 13.7, *)
var ENRiskWeightMaxV2: Int { get }
@available(iOS 13.5, *)
typealias ENErrorHandler = (Error?) -> Void
@available(iOS 13.5, *)
class ENExposureConfiguration : NSObject {
  @available(iOS 13.7, *)
  var immediateDurationWeight: Double
  @available(iOS 13.7, *)
  var nearDurationWeight: Double
  @available(iOS 13.7, *)
  var mediumDurationWeight: Double
  @available(iOS 13.7, *)
  var otherDurationWeight: Double
  @available(iOS 13.7, *)
  var infectiousnessForDaysSinceOnsetOfSymptoms: [NSNumber : NSNumber]?
  @available(iOS 13.7, *)
  var infectiousnessStandardWeight: Double
  @available(iOS 13.7, *)
  var infectiousnessHighWeight: Double
  @available(iOS 13.7, *)
  var reportTypeConfirmedTestWeight: Double
  @available(iOS 13.7, *)
  var reportTypeConfirmedClinicalDiagnosisWeight: Double
  @available(iOS 13.7, *)
  var reportTypeSelfReportedWeight: Double
  @available(iOS 13.7, *)
  var reportTypeRecursiveWeight: Double
  @available(iOS 13.7, *)
  var reportTypeNoneMap: ENDiagnosisReportType
  var attenuationDurationThresholds: [NSNumber]
  @available(iOS 13.7, *)
  var daysSinceLastExposureThreshold: Int
  var minimumRiskScoreFullRange: Double
  var attenuationLevelValues: [NSNumber]
  var attenuationWeight: Double
  var daysSinceLastExposureLevelValues: [NSNumber]
  var daysSinceLastExposureWeight: Double
  var durationLevelValues: [NSNumber]
  var durationWeight: Double
  var metadata: [AnyHashable : Any]?
  var minimumRiskScore: ENRiskScore
  var transmissionRiskLevelValues: [NSNumber]
  var transmissionRiskWeight: Double
}
@available(iOS 13.7, *)
class ENExposureDaySummary : NSObject {
  var date: Date { get }
  var confirmedTestSummary: ENExposureSummaryItem? { get }
  var confirmedClinicalDiagnosisSummary: ENExposureSummaryItem? { get }
  var recursiveSummary: ENExposureSummaryItem? { get }
  var selfReportedSummary: ENExposureSummaryItem? { get }
  var daySummary: ENExposureSummaryItem { get }
}
@available(iOS 13.5, *)
class ENExposureDetectionSummary : NSObject {
  var attenuationDurations: [NSNumber] { get }
  var daysSinceLastExposure: Int { get }
  var matchedKeyCount: UInt64 { get }
  var maximumRiskScore: ENRiskScore { get }
  var maximumRiskScoreFullRange: Double { get }
  var metadata: [AnyHashable : Any]? { get }
  var riskScoreSumFullRange: Double { get }
  @available(iOS 13.7, *)
  var daySummaries: [ENExposureDaySummary] { get }
}
@available(iOS 13.5, *)
class ENExposureInfo : NSObject {
  var attenuationDurations: [NSNumber] { get }
  var attenuationValue: ENAttenuation { get }
  var date: Date { get }
  @available(iOS 13.7, *)
  var daysSinceOnsetOfSymptoms: Int { get }
  @available(iOS 13.7, *)
  var diagnosisReportType: ENDiagnosisReportType { get }
  var duration: TimeInterval { get }
  var metadata: [AnyHashable : Any]? { get }
  var totalRiskScore: ENRiskScore { get }
  var totalRiskScoreFullRange: Double { get }
  var transmissionRiskLevel: ENRiskLevel { get }
}
@available(iOS 13.7, *)
class ENExposureSummaryItem : NSObject {
  var maximumScore: Double { get }
  var scoreSum: Double { get }
  var weightedDurationSum: TimeInterval { get }
}
@available(iOS 13.7, *)
class ENExposureWindow : NSObject {
  var calibrationConfidence: ENCalibrationConfidence { get }
  var date: Date { get }
  var diagnosisReportType: ENDiagnosisReportType { get }
  var infectiousness: ENInfectiousness { get }
  var scanInstances: [ENScanInstance] { get }
}
@available(iOS 13.7, *)
class ENScanInstance : NSObject {
  var minimumAttenuation: ENAttenuation { get }
  var typicalAttenuation: ENAttenuation { get }
  var secondsSinceLastScan: Int { get }
}
@available(iOS 13.5, *)
class ENTemporaryExposureKey : NSObject {
  var keyData: Data
  var rollingPeriod: ENIntervalNumber
  var rollingStartNumber: ENIntervalNumber
  var transmissionRiskLevel: ENRiskLevel
}
