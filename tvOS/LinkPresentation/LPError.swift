
@available(tvOS 13.0, *)
let LPErrorDomain: String
@available(tvOS 13.0, *)
struct LPError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: LPError.Code { get }
  static var metadataFetchFailed: LPError.Code { get }
  static var metadataFetchCancelled: LPError.Code { get }
  static var metadataFetchTimedOut: LPError.Code { get }
}
