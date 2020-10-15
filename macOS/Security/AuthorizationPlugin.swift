
struct AuthorizationValue {
  var length: Int
  var data: UnsafeMutableRawPointer?
  init()
  init(length: Int, data: UnsafeMutableRawPointer?)
}
struct AuthorizationValueVector {
  var count: UInt32
  var values: UnsafeMutablePointer<AuthorizationValue>
  init(count: UInt32, values: UnsafeMutablePointer<AuthorizationValue>)
}
struct AuthorizationContextFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var extractable: AuthorizationContextFlags { get }
  static var volatile: AuthorizationContextFlags { get }
  static var sticky: AuthorizationContextFlags { get }
}
typealias AuthorizationMechanismId = AuthorizationString
typealias AuthorizationPluginId = AuthorizationString
typealias AuthorizationPluginRef = UnsafeMutableRawPointer
typealias AuthorizationMechanismRef = UnsafeMutableRawPointer
typealias AuthorizationEngineRef = OpaquePointer
typealias AuthorizationSessionId = UnsafeMutableRawPointer
@frozen enum AuthorizationResult : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case allow
  case deny
  case undefined
  case userCanceled
}
var kAuthorizationPluginInterfaceVersion: Int { get }
var kAuthorizationCallbacksVersion: Int { get }
struct AuthorizationCallbacks {
  var version: UInt32
  var SetResult: @convention(c) (AuthorizationEngineRef, AuthorizationResult) -> OSStatus
  var RequestInterrupt: @convention(c) (AuthorizationEngineRef) -> OSStatus
  var DidDeactivate: @convention(c) (AuthorizationEngineRef) -> OSStatus
  var GetContextValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafeMutablePointer<AuthorizationContextFlags>?, UnsafeMutablePointer<UnsafePointer<AuthorizationValue>?>?) -> OSStatus
  var SetContextValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, AuthorizationContextFlags, UnsafePointer<AuthorizationValue>) -> OSStatus
  var GetHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafeMutablePointer<UnsafePointer<AuthorizationValue>?>?) -> OSStatus
  var SetHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafePointer<AuthorizationValue>) -> OSStatus
  var GetArguments: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<UnsafePointer<AuthorizationValueVector>?>) -> OSStatus
  var GetSessionId: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<AuthorizationSessionId?>?) -> OSStatus
  var GetImmutableHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafeMutablePointer<UnsafePointer<AuthorizationValue>?>?) -> OSStatus
  @available(macOS 10.13, *)
  var GetLAContext: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> OSStatus
  @available(macOS 10.13, *)
  var GetTokenIdentities: @convention(c) (AuthorizationEngineRef, CFTypeRef, UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> OSStatus
  @available(macOS 10.13.4, *)
  var GetTKTokenWatcher: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> OSStatus
  var RemoveHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString) -> OSStatus
  var RemoveContextValue: @convention(c) (AuthorizationEngineRef, AuthorizationString) -> OSStatus
  init(version: UInt32, SetResult: @convention(c) (AuthorizationEngineRef, AuthorizationResult) -> OSStatus, RequestInterrupt: @convention(c) (AuthorizationEngineRef) -> OSStatus, DidDeactivate: @convention(c) (AuthorizationEngineRef) -> OSStatus, GetContextValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafeMutablePointer<AuthorizationContextFlags>?, UnsafeMutablePointer<UnsafePointer<AuthorizationValue>?>?) -> OSStatus, SetContextValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, AuthorizationContextFlags, UnsafePointer<AuthorizationValue>) -> OSStatus, GetHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafeMutablePointer<UnsafePointer<AuthorizationValue>?>?) -> OSStatus, SetHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafePointer<AuthorizationValue>) -> OSStatus, GetArguments: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<UnsafePointer<AuthorizationValueVector>?>) -> OSStatus, GetSessionId: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<AuthorizationSessionId?>?) -> OSStatus, GetImmutableHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString, UnsafeMutablePointer<UnsafePointer<AuthorizationValue>?>?) -> OSStatus, GetLAContext: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> OSStatus, GetTokenIdentities: @convention(c) (AuthorizationEngineRef, CFTypeRef, UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> OSStatus, GetTKTokenWatcher: @convention(c) (AuthorizationEngineRef, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> OSStatus, RemoveHintValue: @convention(c) (AuthorizationEngineRef, AuthorizationString) -> OSStatus, RemoveContextValue: @convention(c) (AuthorizationEngineRef, AuthorizationString) -> OSStatus)
}
struct AuthorizationPluginInterface {
  var version: UInt32
  var PluginDestroy: @convention(c) (AuthorizationPluginRef) -> OSStatus
  var MechanismCreate: @convention(c) (AuthorizationPluginRef, AuthorizationEngineRef, AuthorizationMechanismId, UnsafeMutablePointer<AuthorizationMechanismRef?>) -> OSStatus
  var MechanismInvoke: @convention(c) (AuthorizationMechanismRef) -> OSStatus
  var MechanismDeactivate: @convention(c) (AuthorizationMechanismRef) -> OSStatus
  var MechanismDestroy: @convention(c) (AuthorizationMechanismRef) -> OSStatus
  init(version: UInt32, PluginDestroy: @convention(c) (AuthorizationPluginRef) -> OSStatus, MechanismCreate: @convention(c) (AuthorizationPluginRef, AuthorizationEngineRef, AuthorizationMechanismId, UnsafeMutablePointer<AuthorizationMechanismRef?>) -> OSStatus, MechanismInvoke: @convention(c) (AuthorizationMechanismRef) -> OSStatus, MechanismDeactivate: @convention(c) (AuthorizationMechanismRef) -> OSStatus, MechanismDestroy: @convention(c) (AuthorizationMechanismRef) -> OSStatus)
}
func AuthorizationPluginCreate(_ callbacks: UnsafePointer<AuthorizationCallbacks>, _ outPlugin: UnsafeMutablePointer<AuthorizationPluginRef?>, _ outPluginInterface: UnsafeMutablePointer<UnsafePointer<AuthorizationPluginInterface>?>) -> OSStatus
