
@available(macOS, introduced: 10.6, deprecated: 10.10)
let kSMErrorDomainIPC: CFString!
@available(macOS, introduced: 10.6, deprecated: 10.10)
let kSMErrorDomainFramework: CFString!
@available(macOS, introduced: 10.6, deprecated: 10.10)
let kSMErrorDomainLaunchd: CFString!
var kSMErrorInternalFailure: Int { get }
var kSMErrorInvalidSignature: Int { get }
var kSMErrorAuthorizationFailure: Int { get }
var kSMErrorToolNotValid: Int { get }
var kSMErrorJobNotFound: Int { get }
var kSMErrorServiceUnavailable: Int { get }
var kSMErrorJobPlistNotFound: Int { get }
var kSMErrorJobMustBeEnabled: Int { get }
var kSMErrorInvalidPlist: Int { get }
@available(macOS 10.6, *)
func SMLoginItemSetEnabled(_ identifier: CFString, _ enabled: Bool) -> Bool
var kSMRightBlessPrivilegedHelper: String { get }
var kSMRightModifySystemDaemons: String { get }
@available(macOS 10.6, *)
let kSMDomainSystemLaunchd: CFString!
@available(macOS 10.6, *)
let kSMDomainUserLaunchd: CFString!
@available(macOS, introduced: 10.6, deprecated: 10.10)
func SMJobCopyDictionary(_ domain: CFString!, _ jobLabel: CFString) -> Unmanaged<CFDictionary>!
@available(macOS, introduced: 10.6, deprecated: 10.10)
func SMCopyAllJobDictionaries(_ domain: CFString!) -> Unmanaged<CFArray>!
@available(macOS, introduced: 10.6, deprecated: 10.10)
func SMJobSubmit(_ domain: CFString!, _ job: CFDictionary, _ auth: AuthorizationRef!, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS, introduced: 10.6, deprecated: 10.10)
func SMJobRemove(_ domain: CFString!, _ jobLabel: CFString, _ auth: AuthorizationRef!, _ wait: Bool, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS 10.6, *)
func SMJobBless(_ domain: CFString!, _ executableLabel: CFString, _ auth: AuthorizationRef!, _ outError: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
