
@available(macOS 10.15, *)
let OSSystemExtensionErrorDomain: String
@available(macOS 10.15, *)
let OSBundleUsageDescriptionKey: String
@available(macOS 10.15, *)
let NSSystemExtensionUsageDescriptionKey: String
@available(macOS 10.15, *)
struct OSSystemExtensionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: OSSystemExtensionError.Code { get }
  static var missingEntitlement: OSSystemExtensionError.Code { get }
  static var unsupportedParentBundleLocation: OSSystemExtensionError.Code { get }
  static var extensionNotFound: OSSystemExtensionError.Code { get }
  static var extensionMissingIdentifier: OSSystemExtensionError.Code { get }
  static var duplicateExtensionIdentifer: OSSystemExtensionError.Code { get }
  static var unknownExtensionCategory: OSSystemExtensionError.Code { get }
  static var codeSignatureInvalid: OSSystemExtensionError.Code { get }
  static var validationFailed: OSSystemExtensionError.Code { get }
  static var forbiddenBySystemPolicy: OSSystemExtensionError.Code { get }
  static var requestCanceled: OSSystemExtensionError.Code { get }
  static var requestSuperseded: OSSystemExtensionError.Code { get }
  static var authorizationRequired: OSSystemExtensionError.Code { get }
}
extension OSSystemExtensionRequest {
  @available(macOS 10.15, *)
  enum ReplacementAction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case cancel
    case replace
  }
  @available(macOS 10.15, *)
  enum Result : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case completed
    case willCompleteAfterReboot
  }
}
@available(macOS 10.15, *)
class OSSystemExtensionRequest : NSObject {
  @available(macOS 10.15, *)
  class func activationRequest(forExtensionWithIdentifier identifier: String, queue: DispatchQueue) -> Self
  @available(macOS 10.15, *)
  class func deactivationRequest(forExtensionWithIdentifier identifier: String, queue: DispatchQueue) -> Self
  @available(macOS 10.15, *)
  weak var delegate: @sil_weak OSSystemExtensionRequestDelegate?
  @available(macOS 10.15, *)
  var identifier: String { get }
}
@available(macOS 10.15, *)
class OSSystemExtensionProperties : NSObject {
  @available(macOS 10.15, *)
  var url: URL { get }
  @available(macOS 10.15, *)
  var bundleIdentifier: String { get }
  @available(macOS 10.15, *)
  var bundleVersion: String { get }
  @available(macOS 10.15, *)
  var bundleShortVersion: String { get }
}
@available(macOS 10.15, *)
protocol OSSystemExtensionRequestDelegate : NSObjectProtocol {
  @available(macOS 10.15, *)
  func request(_ request: OSSystemExtensionRequest, actionForReplacingExtension existing: OSSystemExtensionProperties, withExtension ext: OSSystemExtensionProperties) -> OSSystemExtensionRequest.ReplacementAction
  @available(macOS 10.15, *)
  func requestNeedsUserApproval(_ request: OSSystemExtensionRequest)
  @available(macOS 10.15, *)
  @asyncHandler func request(_ request: OSSystemExtensionRequest, didFinishWithResult result: OSSystemExtensionRequest.Result)
  @available(macOS 10.15, *)
  @asyncHandler func request(_ request: OSSystemExtensionRequest, didFailWithError error: Error)
}
@available(macOS 10.15, *)
class OSSystemExtensionManager : NSObject {
  @available(macOS 10.15, *)
  class var shared: OSSystemExtensionManager { get }
  @available(macOS 10.15, *)
  func submitRequest(_ request: OSSystemExtensionRequest)
}
