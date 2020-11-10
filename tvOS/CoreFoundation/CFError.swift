
typealias CFErrorDomain = CFString
class CFError : _CFObject {
}
@available(tvOS 9.0, *)
func CFErrorGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
let kCFErrorDomainPOSIX: CFErrorDomain!
@available(tvOS 9.0, *)
let kCFErrorDomainOSStatus: CFErrorDomain!
@available(tvOS 9.0, *)
let kCFErrorDomainMach: CFErrorDomain!
@available(tvOS 9.0, *)
let kCFErrorDomainCocoa: CFErrorDomain!
@available(tvOS 9.0, *)
let kCFErrorLocalizedDescriptionKey: CFString!
@available(tvOS 11.0, *)
let kCFErrorLocalizedFailureKey: CFString!
@available(tvOS 9.0, *)
let kCFErrorLocalizedFailureReasonKey: CFString!
@available(tvOS 9.0, *)
let kCFErrorLocalizedRecoverySuggestionKey: CFString!
@available(tvOS 9.0, *)
let kCFErrorDescriptionKey: CFString!
@available(tvOS 9.0, *)
let kCFErrorUnderlyingErrorKey: CFString!
@available(tvOS 9.0, *)
let kCFErrorURLKey: CFString!
@available(tvOS 9.0, *)
let kCFErrorFilePathKey: CFString!
@available(tvOS 9.0, *)
func CFErrorCreate(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfo: CFDictionary!) -> CFError!
@available(tvOS 9.0, *)
func CFErrorCreateWithUserInfoKeysAndValues(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfoKeys: UnsafePointer<UnsafeRawPointer?>!, _ userInfoValues: UnsafePointer<UnsafeRawPointer?>!, _ numUserInfoValues: CFIndex) -> CFError!
@available(tvOS 9.0, *)
func CFErrorGetDomain(_ err: CFError!) -> CFErrorDomain!
@available(tvOS 9.0, *)
func CFErrorGetCode(_ err: CFError!) -> CFIndex
@available(tvOS 9.0, *)
func CFErrorCopyUserInfo(_ err: CFError!) -> CFDictionary!
@available(tvOS 9.0, *)
func CFErrorCopyDescription(_ err: CFError!) -> CFString!
@available(tvOS 9.0, *)
func CFErrorCopyFailureReason(_ err: CFError!) -> CFString!
@available(tvOS 9.0, *)
func CFErrorCopyRecoverySuggestion(_ err: CFError!) -> CFString!
