
var kSCStatusOK: Int { get }
var kSCStatusFailed: Int { get }
var kSCStatusInvalidArgument: Int { get }
var kSCStatusAccessError: Int { get }
var kSCStatusNoKey: Int { get }
var kSCStatusKeyExists: Int { get }
var kSCStatusLocked: Int { get }
var kSCStatusNeedLock: Int { get }
var kSCStatusNoStoreSession: Int { get }
var kSCStatusNoStoreServer: Int { get }
var kSCStatusNotifierActive: Int { get }
var kSCStatusNoPrefsSession: Int { get }
var kSCStatusPrefsBusy: Int { get }
var kSCStatusNoConfigFile: Int { get }
var kSCStatusNoLink: Int { get }
var kSCStatusStale: Int { get }
var kSCStatusMaxLink: Int { get }
var kSCStatusReachabilityUnknown: Int { get }
@available(macOS 6.0, *)
var kSCStatusConnectionNoService: Int { get }
@available(macOS 9.0, *)
var kSCStatusConnectionIgnore: Int { get }
@available(macOS 10.5, *)
let kCFErrorDomainSystemConfiguration: CFString
@available(macOS 10.5, *)
func SCCopyLastError() -> CFError
@available(macOS 10.1, *)
func SCError() -> Int32
@available(macOS 10.1, *)
func SCErrorString(_ status: Int32) -> UnsafePointer<CChar>
