
typealias CFErrorDomain = CFString
class CFError : _CFObject {
}
@available(watchOS 2.0, *)
func CFErrorGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
let kCFErrorDomainPOSIX: CFErrorDomain!
@available(watchOS 2.0, *)
let kCFErrorDomainOSStatus: CFErrorDomain!
@available(watchOS 2.0, *)
let kCFErrorDomainMach: CFErrorDomain!
@available(watchOS 2.0, *)
let kCFErrorDomainCocoa: CFErrorDomain!
@available(watchOS 2.0, *)
let kCFErrorLocalizedDescriptionKey: CFString!
@available(watchOS 4.0, *)
let kCFErrorLocalizedFailureKey: CFString!
@available(watchOS 2.0, *)
let kCFErrorLocalizedFailureReasonKey: CFString!
@available(watchOS 2.0, *)
let kCFErrorLocalizedRecoverySuggestionKey: CFString!
@available(watchOS 2.0, *)
let kCFErrorDescriptionKey: CFString!
@available(watchOS 2.0, *)
let kCFErrorUnderlyingErrorKey: CFString!
@available(watchOS 2.0, *)
let kCFErrorURLKey: CFString!
@available(watchOS 2.0, *)
let kCFErrorFilePathKey: CFString!
@available(watchOS 2.0, *)
func CFErrorCreate(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfo: CFDictionary!) -> CFError!
@available(watchOS 2.0, *)
func CFErrorCreateWithUserInfoKeysAndValues(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfoKeys: UnsafePointer<UnsafeRawPointer?>!, _ userInfoValues: UnsafePointer<UnsafeRawPointer?>!, _ numUserInfoValues: CFIndex) -> CFError!
@available(watchOS 2.0, *)
func CFErrorGetDomain(_ err: CFError!) -> CFErrorDomain!
@available(watchOS 2.0, *)
func CFErrorGetCode(_ err: CFError!) -> CFIndex
@available(watchOS 2.0, *)
func CFErrorCopyUserInfo(_ err: CFError!) -> CFDictionary!
@available(watchOS 2.0, *)
func CFErrorCopyDescription(_ err: CFError!) -> CFString!
@available(watchOS 2.0, *)
func CFErrorCopyFailureReason(_ err: CFError!) -> CFString!
@available(watchOS 2.0, *)
func CFErrorCopyRecoverySuggestion(_ err: CFError!) -> CFString!
