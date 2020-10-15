
typealias SecuritySessionId = UInt32
var noSecuritySession: SecuritySessionId { get }
var callerSecuritySession: SecuritySessionId { get }
struct SessionAttributeBits : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var sessionIsRoot: SessionAttributeBits { get }
  static var sessionHasGraphicAccess: SessionAttributeBits { get }
  static var sessionHasTTY: SessionAttributeBits { get }
  static var sessionIsRemote: SessionAttributeBits { get }
}
struct SessionCreationFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var sessionKeepCurrentBootstrap: SessionCreationFlags { get }
}
var errSessionSuccess: OSStatus { get }
var errSessionInvalidId: OSStatus { get }
var errSessionInvalidAttributes: OSStatus { get }
var errSessionAuthorizationDenied: OSStatus { get }
var errSessionValueNotSet: OSStatus { get }
var errSessionInternal: OSStatus { get }
var errSessionInvalidFlags: OSStatus { get }
func SessionGetInfo(_ session: SecuritySessionId, _ sessionId: UnsafeMutablePointer<SecuritySessionId>?, _ attributes: UnsafeMutablePointer<SessionAttributeBits>?) -> OSStatus
func SessionCreate(_ flags: SessionCreationFlags, _ attributes: SessionAttributeBits) -> OSStatus
