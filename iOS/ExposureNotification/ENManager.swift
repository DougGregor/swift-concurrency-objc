
@available(iOS 13.5, *)
enum ENStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case active
  case disabled
  case bluetoothOff
  case restricted
  case paused
  case unauthorized
}
@available(iOS 13.5, *)
typealias ENGetDiagnosisKeysHandler = ([ENTemporaryExposureKey]?, Error?) -> Void
@available(iOS 13.5, *)
typealias ENDetectExposuresHandler = (ENExposureDetectionSummary?, Error?) -> Void
@available(iOS 13.5, *)
typealias ENGetExposureInfoHandler = ([ENExposureInfo]?, Error?) -> Void
@available(iOS 13.7, *)
typealias ENGetExposureWindowsHandler = ([ENExposureWindow]?, Error?) -> Void
@available(iOS 13.7, *)
typealias ENGetUserTraveledHandler = (Bool, Error?) -> Void
@available(iOS 13.5, *)
class ENManager : NSObject {
  var dispatchQueue: DispatchQueue
  var exposureNotificationStatus: ENStatus { get }
  var invalidationHandler: (() -> Void)?
  func activate(completionHandler: @escaping ENErrorHandler)
  func invalidate()
  @available(iOS 13.7, *)
  func getUserTraveled(completionHandler: @escaping ENGetUserTraveledHandler)
  class var authorizationStatus: ENAuthorizationStatus { get }
  var exposureNotificationEnabled: Bool { get }
  func setExposureNotificationEnabled(_ enabled: Bool, completionHandler: @escaping ENErrorHandler)
  @available(iOS 13.7, *)
  func detectExposures(configuration: ENExposureConfiguration, completionHandler: @escaping ENDetectExposuresHandler) -> Progress
  func detectExposures(configuration: ENExposureConfiguration, diagnosisKeyURLs: [URL], completionHandler: @escaping ENDetectExposuresHandler) -> Progress
  @available(iOS, introduced: 13.5, deprecated: 13.6, message: "Use getExposureWindowsFromSummary, if needed.")
  func getExposureInfo(summary: ENExposureDetectionSummary, userExplanation: String, completionHandler: @escaping ENGetExposureInfoHandler) -> Progress
  @available(iOS 13.7, *)
  func getExposureWindows(summary: ENExposureDetectionSummary, completionHandler: @escaping ENGetExposureWindowsHandler) -> Progress
  func getDiagnosisKeys(completionHandler: @escaping ENGetDiagnosisKeysHandler)
  func getTestDiagnosisKeys(completionHandler: @escaping ENGetDiagnosisKeysHandler)
}
