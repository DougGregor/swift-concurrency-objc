
typealias NSErrorDomain = NSString
let NSCocoaErrorDomain: String
let NSPOSIXErrorDomain: String
let NSOSStatusErrorDomain: String
let NSMachErrorDomain: String
extension NSError {
  typealias UserInfoKey = NSString
}
let NSUnderlyingErrorKey: String
let NSLocalizedDescriptionKey: String
let NSLocalizedFailureReasonErrorKey: String
let NSLocalizedRecoverySuggestionErrorKey: String
let NSLocalizedRecoveryOptionsErrorKey: String
let NSRecoveryAttempterErrorKey: String
let NSHelpAnchorErrorKey: String
@available(macOS 10.5, *)
let NSDebugDescriptionErrorKey: String
@available(macOS 10.13, *)
let NSLocalizedFailureErrorKey: String
let NSStringEncodingErrorKey: String
let NSURLErrorKey: String
let NSFilePathErrorKey: String
class NSError : NSObject, NSCopying, NSSecureCoding {
  init(domain: String, code: Int, userInfo dict: [String : Any]? = nil)
  var domain: String { get }
  var code: Int { get }
  var userInfo: [String : Any] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: Any? { get }
  var helpAnchor: String? { get }
  @available(macOS 10.11, *)
  class func setUserInfoValueProvider(forDomain errorDomain: String, provider: ((Error, String) -> Any?)? = nil)
  @available(macOS 10.11, *)
  class func userInfoValueProvider(forDomain errorDomain: String) -> ((Error, String) -> Any?)?
}

extension NSError : Error {
}
extension NSObject {
  class func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int, delegate: Any?, didRecoverSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int, delegate: Any?, didRecoverSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  class func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
}
