
typealias CFErrorDomain = CFString
class CFError : _CFObject {
}
@available(macOS 10.5, *)
func CFErrorGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
let kCFErrorDomainPOSIX: CFErrorDomain!
@available(macOS 10.5, *)
let kCFErrorDomainOSStatus: CFErrorDomain!
@available(macOS 10.5, *)
let kCFErrorDomainMach: CFErrorDomain!
@available(macOS 10.5, *)
let kCFErrorDomainCocoa: CFErrorDomain!
@available(macOS 10.5, *)
let kCFErrorLocalizedDescriptionKey: CFString!
@available(macOS 10.13, *)
let kCFErrorLocalizedFailureKey: CFString!
@available(macOS 10.5, *)
let kCFErrorLocalizedFailureReasonKey: CFString!
@available(macOS 10.5, *)
let kCFErrorLocalizedRecoverySuggestionKey: CFString!
@available(macOS 10.5, *)
let kCFErrorDescriptionKey: CFString!
@available(macOS 10.5, *)
let kCFErrorUnderlyingErrorKey: CFString!
@available(macOS 10.7, *)
let kCFErrorURLKey: CFString!
@available(macOS 10.7, *)
let kCFErrorFilePathKey: CFString!
@available(macOS 10.5, *)
func CFErrorCreate(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfo: CFDictionary!) -> CFError!
@available(macOS 10.5, *)
func CFErrorCreateWithUserInfoKeysAndValues(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfoKeys: UnsafePointer<UnsafeRawPointer?>!, _ userInfoValues: UnsafePointer<UnsafeRawPointer?>!, _ numUserInfoValues: CFIndex) -> CFError!
@available(macOS 10.5, *)
func CFErrorGetDomain(_ err: CFError!) -> CFErrorDomain!
@available(macOS 10.5, *)
func CFErrorGetCode(_ err: CFError!) -> CFIndex
@available(macOS 10.5, *)
func CFErrorCopyUserInfo(_ err: CFError!) -> CFDictionary!
@available(macOS 10.5, *)
func CFErrorCopyDescription(_ err: CFError!) -> CFString!
@available(macOS 10.5, *)
func CFErrorCopyFailureReason(_ err: CFError!) -> CFString!
@available(macOS 10.5, *)
func CFErrorCopyRecoverySuggestion(_ err: CFError!) -> CFString!
