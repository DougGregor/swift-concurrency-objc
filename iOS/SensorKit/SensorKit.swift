
@available(iOS 14.0, *)
struct SRSensor : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension SRSensor {
  @available(iOS 14.0, *)
  static let ambientLightSensor: SRSensor
  @available(iOS 14.0, *)
  static let accelerometer: SRSensor
  @available(iOS 14.0, *)
  static let rotationRate: SRSensor
  @available(iOS 14.0, *)
  static let visits: SRSensor
  @available(iOS 14.0, *)
  static let pedometerData: SRSensor
  @available(iOS 14.0, *)
  static let deviceUsageReport: SRSensor
  @available(iOS 14.0, *)
  static let messagesUsageReport: SRSensor
  @available(iOS 14.0, *)
  static let phoneUsageReport: SRSensor
  @available(iOS 14.0, *)
  static let onWristState: SRSensor
  @available(iOS 14.0, *)
  static let keyboardMetrics: SRSensor
}
@available(iOS 14.0, *)
struct SRAbsoluteTime : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFTimeInterval)
  init(rawValue: CFTimeInterval)
  let rawValue: CFTimeInterval
}
extension SRAbsoluteTime {
  @available(iOS 14.0, *)
  static func current() -> SRAbsoluteTime
  @available(iOS 14.0, *)
  static func fromContinuousTime(_continuous cont: UInt64) -> SRAbsoluteTime
  @available(iOS 14.0, *)
  func toCFAbsoluteTime() -> CFAbsoluteTime
  @available(iOS 14.0, *)
  static func fromCFAbsoluteTime(_cf cf: CFAbsoluteTime) -> SRAbsoluteTime
}
@available(iOS 14.0, *)
extension NSDate {
  convenience init(srAbsoluteTime time: SRAbsoluteTime)
  var srAbsoluteTime: SRAbsoluteTime { get }
}
@available(iOS 14.0, *)
class SRFetchResult<SampleType> : NSObject, NSCopying where SampleType : AnyObject {
  @NSCopying var sample: SampleType { get }
  var timestamp: SRAbsoluteTime { get }
}
@available(iOS 14.0, *)
class SRDevice : NSObject, NSSecureCoding, NSCopying {
  class var current: SRDevice { get }
  var name: String { get }
  var model: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
}
@available(iOS 14.0, *)
class SRFetchRequest : NSObject {
  var from: SRAbsoluteTime
  var to: SRAbsoluteTime
  var device: SRDevice
}
@available(iOS 14.0, *)
enum SRAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case authorized
  case denied
}
@available(iOS 14.0, *)
protocol SRSensorReaderDelegate : NSObjectProtocol {
  optional func sensorReader(_ reader: SRSensorReader, fetching fetchRequest: SRFetchRequest, didFetchResult result: SRFetchResult<AnyObject>) -> Bool
  optional func sensorReader(_ reader: SRSensorReader, didCompleteFetch fetchRequest: SRFetchRequest)
  optional func sensorReader(_ reader: SRSensorReader, fetching fetchRequest: SRFetchRequest, failedWithError error: Error)
  optional func sensorReader(_ reader: SRSensorReader, didChange authorizationStatus: SRAuthorizationStatus)
  optional func sensorReaderWillStartRecording(_ reader: SRSensorReader)
  optional func sensorReader(_ reader: SRSensorReader, startRecordingFailedWithError error: Error)
  optional func sensorReaderDidStopRecording(_ reader: SRSensorReader)
  optional func sensorReader(_ reader: SRSensorReader, stopRecordingFailedWithError error: Error)
  optional func sensorReader(_ reader: SRSensorReader, didFetch devices: [SRDevice])
  optional func sensorReader(_ reader: SRSensorReader, fetchDevicesDidFailWithError error: Error)
}
@available(iOS 14.0, *)
class SRSensorReader : NSObject {
  init(sensor: SRSensor)
  func startRecording()
  func stopRecording()
  func fetchDevices()
  func fetch(_ request: SRFetchRequest)
  var authorizationStatus: SRAuthorizationStatus { get }
  var sensor: SRSensor { get }
  weak var delegate: @sil_weak SRSensorReaderDelegate?
  class func requestAuthorization(sensors: Set<SRSensor>, completion: @escaping (Error?) -> Void)
}
@available(iOS 14.0, *)
let SRErrorDomain: String
@available(iOS 14.0, *)
struct SRError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var invalidEntitlement: SRError.Code { get }
  static var noAuthorization: SRError.Code { get }
  static var dataInaccessible: SRError.Code { get }
  static var fetchRequestInvalid: SRError.Code { get }
  static var promptDeclined: SRError.Code { get }
}
extension SRAmbientLightSample {
  @available(iOS 14.0, *)
  enum SensorPlacement : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case frontTop
    case frontBottom
    case frontRight
    case frontLeft
    case frontTopRight
    case frontTopLeft
    case frontBottomRight
    case frontBottomLeft
  }
  @available(iOS 14.0, *)
  struct Chromaticity {
    var x: Float32
    var y: Float32
    init()
    init(x: Float32, y: Float32)
  }
}
@available(iOS 14.0, *)
class SRAmbientLightSample : NSObject {
  var placement: SRAmbientLightSample.SensorPlacement { get }
  var chromaticity: SRAmbientLightSample.Chromaticity { get }
  var lux: Measurement<UnitIlluminance> { get }
}
extension SRVisit {
  @available(iOS 14.0, *)
  enum LocationCategory : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case home
    case work
    case school
    case gym
  }
}
@available(iOS 14.0, *)
class SRVisit : NSObject {
  var distanceFromHome: CLLocationDistance { get }
  var arrivalDateInterval: DateInterval { get }
  var departureDateInterval: DateInterval { get }
  var locationCategory: SRVisit.LocationCategory { get }
  var identifier: UUID { get }
}
extension SRDeviceUsageReport.CategoryKey {
  @available(iOS 14.0, *)
  static let games: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let business: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let weather: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let utilities: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let travel: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let sports: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let socialNetworking: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let reference: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let productivity: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let photoAndVideo: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let news: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let navigation: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let music: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let lifestyle: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let healthAndFitness: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let finance: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let entertainment: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let education: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let books: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let medical: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let newsstand: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let catalogs: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let kids: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let miscellaneous: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let foodAndDrink: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let developerTools: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let graphicsAndDesign: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let shopping: SRDeviceUsageReport.CategoryKey
  @available(iOS 14.0, *)
  static let stickers: SRDeviceUsageReport.CategoryKey
}
@available(iOS 14.0, *)
class SRDeviceUsageReport : NSObject {
  var duration: TimeInterval { get }
  var applicationUsageByCategory: [SRDeviceUsageReport.CategoryKey : [SRDeviceUsageReport.ApplicationUsage]] { get }
  var notificationUsageByCategory: [SRDeviceUsageReport.CategoryKey : [SRDeviceUsageReport.NotificationUsage]] { get }
  var webUsageByCategory: [SRDeviceUsageReport.CategoryKey : [SRDeviceUsageReport.WebUsage]] { get }
  var totalScreenWakes: Int { get }
  var totalUnlocks: Int { get }
  var totalUnlockDuration: TimeInterval { get }
}
extension SRDeviceUsageReport {
  @available(iOS 14.0, *)
  class ApplicationUsage : NSObject {
    var bundleIdentifier: String? { get }
    var usageTime: TimeInterval { get }
  }
  @available(iOS 14.0, *)
  class NotificationUsage : NSObject {
    var bundleIdentifier: String? { get }
    var event: SRDeviceUsageReport.NotificationUsage.Event { get }
  }
  @available(iOS 14.0, *)
  class WebUsage : NSObject {
    var totalUsageTime: TimeInterval { get }
  }
  struct CategoryKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SRDeviceUsageReport.NotificationUsage {
  @available(iOS 14.0, *)
  enum Event : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case received
    case defaultAction
    case supplementaryAction
    case clear
    case notificationCenterClearAll
    case removed
    case hide
    case longLook
    case silence
    case appLaunch
    case expired
    case bannerPulldown
    case tapCoalesce
    case deduped
    case deviceActivated
    case deviceUnlocked
  }
}
@available(iOS 14.0, *)
class SRMessagesUsageReport : NSObject {
  var duration: TimeInterval { get }
  var totalOutgoingMessages: Int { get }
  var totalIncomingMessages: Int { get }
  var totalUniqueContacts: Int { get }
}
@available(iOS 14.0, *)
class SRPhoneUsageReport : NSObject {
  var duration: TimeInterval { get }
  var totalOutgoingCalls: Int { get }
  var totalIncomingCalls: Int { get }
  var totalUniqueContacts: Int { get }
  var totalPhoneCallDuration: TimeInterval { get }
}
@available(iOS 14.0, *)
class SRKeyboardMetrics : NSObject {
  var duration: TimeInterval { get }
  var keyboardIdentifier: String { get }
  var version: String { get }
  var width: Measurement<UnitLength> { get }
  var height: Measurement<UnitLength> { get }
}
@available(iOS 14.0, *)
extension SRKeyboardMetrics {
  var totalWords: Int { get }
  var totalAlteredWords: Int { get }
  var totalTaps: Int { get }
  var totalDrags: Int { get }
  var totalDeletes: Int { get }
  var totalEmojis: Int { get }
  var totalPaths: Int { get }
  var totalPathTime: TimeInterval { get }
  var totalPathLength: Measurement<UnitLength> { get }
  var totalAutoCorrections: Int { get }
  var totalSpaceCorrections: Int { get }
  var totalRetroCorrections: Int { get }
  var totalTranspositionCorrections: Int { get }
  var totalInsertKeyCorrections: Int { get }
  var totalSkipTouchCorrections: Int { get }
  var totalNearKeyCorrections: Int { get }
  var totalSubstitutionCorrections: Int { get }
  var totalHitTestCorrections: Int { get }
  var totalTypingDuration: TimeInterval { get }
}
extension SRKeyboardMetrics {
  @available(iOS 14.0, *)
  class ProbabilityMetric<UnitType> : NSObject where UnitType : Unit {
    var distributionSampleValues: [Measurement<UnitType>] { get }
  }
}
@available(iOS 14.0, *)
extension SRKeyboardMetrics {
  var upErrorDistance: ProbabilityMetric<UnitLength> { get }
  var downErrorDistance: ProbabilityMetric<UnitLength> { get }
  var spaceUpErrorDistance: ProbabilityMetric<UnitLength> { get }
  var spaceDownErrorDistance: ProbabilityMetric<UnitLength> { get }
  var deleteUpErrorDistance: ProbabilityMetric<UnitLength> { get }
  var deleteDownErrorDistance: ProbabilityMetric<UnitLength> { get }
  var shortWordCharKeyUpErrorDistance: ProbabilityMetric<UnitLength> { get }
  var shortWordCharKeyDownErrorDistance: ProbabilityMetric<UnitLength> { get }
  var touchDownUp: ProbabilityMetric<UnitDuration> { get }
  var spaceTouchDownUp: ProbabilityMetric<UnitDuration> { get }
  var deleteTouchDownUp: ProbabilityMetric<UnitDuration> { get }
  var shortWordCharKeyTouchDownUp: ProbabilityMetric<UnitDuration> { get }
  var touchDownDown: ProbabilityMetric<UnitDuration> { get }
  var charKeyToPrediction: ProbabilityMetric<UnitDuration> { get }
  var shortWordCharKeyToCharKey: ProbabilityMetric<UnitDuration> { get }
  var charKeyToAnyTapKey: ProbabilityMetric<UnitDuration> { get }
  var anyTapToCharKey: ProbabilityMetric<UnitDuration> { get }
  var spaceToCharKey: ProbabilityMetric<UnitDuration> { get }
  var charKeyToSpaceKey: ProbabilityMetric<UnitDuration> { get }
  var spaceToDeleteKey: ProbabilityMetric<UnitDuration> { get }
  var deleteToSpaceKey: ProbabilityMetric<UnitDuration> { get }
  var spaceToSpaceKey: ProbabilityMetric<UnitDuration> { get }
  var spaceToShiftKey: ProbabilityMetric<UnitDuration> { get }
  var spaceToPlaneChangeKey: ProbabilityMetric<UnitDuration> { get }
  var spaceToPredictionKey: ProbabilityMetric<UnitDuration> { get }
  var deleteToCharKey: ProbabilityMetric<UnitDuration> { get }
  var charKeyToDelete: ProbabilityMetric<UnitDuration> { get }
  var deleteToDelete: ProbabilityMetric<UnitDuration> { get }
  var deleteToShiftKey: ProbabilityMetric<UnitDuration> { get }
  var deleteToPlaneChangeKey: ProbabilityMetric<UnitDuration> { get }
  var anyTapToPlaneChangeKey: ProbabilityMetric<UnitDuration> { get }
  var planeChangeToAnyTap: ProbabilityMetric<UnitDuration> { get }
  var charKeyToPlaneChangeKey: ProbabilityMetric<UnitDuration> { get }
  var planeChangeKeyToCharKey: ProbabilityMetric<UnitDuration> { get }
  var pathErrorDistanceRatio: [NSNumber] { get }
  var deleteToPath: ProbabilityMetric<UnitDuration> { get }
  var pathToDelete: ProbabilityMetric<UnitDuration> { get }
  var spaceToPath: ProbabilityMetric<UnitDuration> { get }
  var pathToSpace: ProbabilityMetric<UnitDuration> { get }
  var pathToPath: ProbabilityMetric<UnitDuration> { get }
}
@available(iOS 14.0, *)
extension SRKeyboardMetrics {
  var longWordUpErrorDistance: [ProbabilityMetric<UnitLength>] { get }
  var longWordDownErrorDistance: [ProbabilityMetric<UnitLength>] { get }
  var longWordTouchDownUp: [ProbabilityMetric<UnitDuration>] { get }
  var longWordTouchDownDown: [ProbabilityMetric<UnitDuration>] { get }
  var deleteToDeletes: [ProbabilityMetric<UnitDuration>] { get }
}
@available(iOS 14.0, *)
enum SRDeletionReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case userInitiated
  case lowDiskSpace
  case ageLimit
  case noInterestedClients
  case systemInitiated
}
@available(iOS 14.0, *)
class SRDeletionRecord : NSObject, NSSecureCoding {
  var startTime: SRAbsoluteTime { get }
  var endTime: SRAbsoluteTime { get }
  var reason: SRDeletionReason { get }
}
@available(iOS 14.0, *)
extension NSString {
  func sr_sensorForDeletionRecordsFromSensor() -> SRSensor?
}
extension SRWristDetection {
  @available(iOS 14.0, *)
  enum WristLocation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case left
    case right
  }
  @available(iOS 14.0, *)
  enum CrownOrientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case left
    case right
  }
}
@available(iOS 14.0, *)
class SRWristDetection : NSObject {
  var onWrist: Bool { get }
  var wristLocation: SRWristDetection.WristLocation { get }
  var crownOrientation: SRWristDetection.CrownOrientation { get }
}
