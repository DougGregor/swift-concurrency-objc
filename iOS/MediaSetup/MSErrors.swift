
let MSErrorDomain: String
let MSServiceSetupErrorDomain: String
let MSCloudKitErrorDomain: String
let MSUserInfoErrorStringKey: String
struct MSErrorCodes : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var connectionError: MSErrorCodes.Code { get }
  static var invalidAttributeError: MSErrorCodes.Code { get }
  static var invalidServiceError: MSErrorCodes.Code { get }
  static var invalidHomeError: MSErrorCodes.Code { get }
  static var invalidHomeUserError: MSErrorCodes.Code { get }
  static var serviceMissingFromHome: MSErrorCodes.Code { get }
  static var invalidNowPlayingInfo: MSErrorCodes.Code { get }
  static var missingPublicDatabaseInfoForService: MSErrorCodes.Code { get }
}
struct MSServiceSetupErrorCodes : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var serviceName: MSServiceSetupErrorCodes.Code { get }
  static var accountName: MSServiceSetupErrorCodes.Code { get }
  static var clientID: MSServiceSetupErrorCodes.Code { get }
  static var clientSecret: MSServiceSetupErrorCodes.Code { get }
  static var iconImageURL: MSServiceSetupErrorCodes.Code { get }
  static var configURL: MSServiceSetupErrorCodes.Code { get }
  static var setUpContext: MSServiceSetupErrorCodes.Code { get }
  static var authURL: MSServiceSetupErrorCodes.Code { get }
  static var bundleIdentifier: MSServiceSetupErrorCodes.Code { get }
  static var serviceIdentifier: MSServiceSetupErrorCodes.Code { get }
}
struct MSCKErrorCodes : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: MSCKErrorCodes.Code { get }
  static var unknnownItem: MSCKErrorCodes.Code { get }
  static var partialFailureError: MSCKErrorCodes.Code { get }
  static var serverRecordChanged: MSCKErrorCodes.Code { get }
  static var manateeUnavailable: MSCKErrorCodes.Code { get }
  static var manateeIdentity: MSCKErrorCodes.Code { get }
  static var throttledError: MSCKErrorCodes.Code { get }
  static var serverChangeTokenExpired: MSCKErrorCodes.Code { get }
  static var internalError: MSCKErrorCodes.Code { get }
  static var privateUnsyncedKeychain: MSCKErrorCodes.Code { get }
}
