
class CFHTTPAuthentication : _CFObject {
}
enum CFStreamErrorHTTPAuthentication : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case typeUnsupported
  case badUserName
  case badPassword
}
@available(macOS 10.4, *)
let kCFHTTPAuthenticationUsername: CFString
@available(macOS 10.4, *)
let kCFHTTPAuthenticationPassword: CFString
@available(macOS 10.4, *)
let kCFHTTPAuthenticationAccountDomain: CFString
@available(macOS 10.2, *)
func CFHTTPAuthenticationGetTypeID() -> CFTypeID
@available(macOS 10.2, *)
func CFHTTPAuthenticationCreateFromResponse(_ alloc: CFAllocator?, _ response: CFHTTPMessage) -> Unmanaged<CFHTTPAuthentication>
@available(macOS 10.2, *)
func CFHTTPAuthenticationIsValid(_ auth: CFHTTPAuthentication, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.2, *)
func CFHTTPAuthenticationAppliesToRequest(_ auth: CFHTTPAuthentication, _ request: CFHTTPMessage) -> Bool
@available(macOS 10.2, *)
func CFHTTPAuthenticationRequiresOrderedRequests(_ auth: CFHTTPAuthentication) -> Bool
@available(macOS 10.2, *)
func CFHTTPMessageApplyCredentials(_ request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ username: CFString?, _ password: CFString?, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.4, *)
func CFHTTPMessageApplyCredentialDictionary(_ request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ dict: CFDictionary, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.2, *)
func CFHTTPAuthenticationCopyRealm(_ auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(macOS 10.2, *)
func CFHTTPAuthenticationCopyDomains(_ auth: CFHTTPAuthentication) -> Unmanaged<CFArray>
@available(macOS 10.2, *)
func CFHTTPAuthenticationCopyMethod(_ auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(macOS 10.3, *)
func CFHTTPAuthenticationRequiresUserNameAndPassword(_ auth: CFHTTPAuthentication) -> Bool
@available(macOS 10.4, *)
func CFHTTPAuthenticationRequiresAccountDomain(_ auth: CFHTTPAuthentication) -> Bool
