
@available(iOS 7.1, *)
let ADClientErrorDomain: String
@available(iOS 7.1, *)
struct ADClientError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(*, deprecated, message: "ADClientErrorUnknown is not used and never returned.")
  static var unknown: ADClientError.Code { get }
  static var trackingRestrictedOrDenied: ADClientError.Code { get }
  @available(*, deprecated, message: "ADClientErrorLimitAdTracking has been deprecated use ADClientErrorTrackingRestrictedOrDenied.")
  static var limitAdTracking: ADClientError.Code { get }
  static var missingData: ADClientError.Code { get }
  static var corruptResponse: ADClientError.Code { get }
  static var requestClientError: ADClientError.Code { get }
  static var requestServerError: ADClientError.Code { get }
  static var requestNetworkError: ADClientError.Code { get }
  static var unsupportedPlatform: ADClientError.Code { get }
}
@available(iOS 7.1, *)
class ADClient : NSObject {
  @available(iOS 7.1, *)
  class func shared() -> ADClient
  @available(iOS, introduced: 7.1, deprecated: 9.0, message: "Use requestAttributionDetailsWithBlock instead.")
  func determineAppInstallationAttribution(completionHandler: @escaping (Bool) -> Void)
  @available(iOS, introduced: 7.1, deprecated: 9.0, message: "Use requestAttributionDetailsWithBlock instead.")
  func determineAppInstallationAttribution() async -> Bool
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "Use requestAttributionDetailsWithBlock instead.")
  func lookupAdConversionDetails(_ completionHandler: @escaping (Date?, Date?) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "Use requestAttributionDetailsWithBlock instead.")
  func lookupAdConversionDetails() async -> (Date?, Date?)
  @available(iOS 9.0, *)
  func requestAttributionDetails(_ completionHandler: @escaping ([String : NSObject]?, Error?) -> Void)
  @available(iOS 9.0, *)
  func requestAttributionDetailsWithBlock() async throws -> [String : NSObject]
  @available(iOS, introduced: 8.0, deprecated: 13.0)
  func add(toSegments segmentIdentifiers: [String], replaceExisting: Bool)
}
