
typealias CFErrorDomain = CFString
class CFError : _CFObject {
}
@available(iOS 2.0, *)
func CFErrorGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
let kCFErrorDomainPOSIX: CFErrorDomain!
@available(iOS 2.0, *)
let kCFErrorDomainOSStatus: CFErrorDomain!
@available(iOS 2.0, *)
let kCFErrorDomainMach: CFErrorDomain!
@available(iOS 2.0, *)
let kCFErrorDomainCocoa: CFErrorDomain!
@available(iOS 2.0, *)
let kCFErrorLocalizedDescriptionKey: CFString!
@available(iOS 11.0, *)
let kCFErrorLocalizedFailureKey: CFString!
@available(iOS 2.0, *)
let kCFErrorLocalizedFailureReasonKey: CFString!
@available(iOS 2.0, *)
let kCFErrorLocalizedRecoverySuggestionKey: CFString!
@available(iOS 2.0, *)
let kCFErrorDescriptionKey: CFString!
@available(iOS 2.0, *)
let kCFErrorUnderlyingErrorKey: CFString!
@available(iOS 5.0, *)
let kCFErrorURLKey: CFString!
@available(iOS 5.0, *)
let kCFErrorFilePathKey: CFString!
@available(iOS 2.0, *)
func CFErrorCreate(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfo: CFDictionary!) -> CFError!
@available(iOS 2.0, *)
func CFErrorCreateWithUserInfoKeysAndValues(_ allocator: CFAllocator!, _ domain: CFErrorDomain!, _ code: CFIndex, _ userInfoKeys: UnsafePointer<UnsafeRawPointer?>!, _ userInfoValues: UnsafePointer<UnsafeRawPointer?>!, _ numUserInfoValues: CFIndex) -> CFError!
@available(iOS 2.0, *)
func CFErrorGetDomain(_ err: CFError!) -> CFErrorDomain!
@available(iOS 2.0, *)
func CFErrorGetCode(_ err: CFError!) -> CFIndex
@available(iOS 2.0, *)
func CFErrorCopyUserInfo(_ err: CFError!) -> CFDictionary!
@available(iOS 2.0, *)
func CFErrorCopyDescription(_ err: CFError!) -> CFString!
@available(iOS 2.0, *)
func CFErrorCopyFailureReason(_ err: CFError!) -> CFString!
@available(iOS 2.0, *)
func CFErrorCopyRecoverySuggestion(_ err: CFError!) -> CFString!
