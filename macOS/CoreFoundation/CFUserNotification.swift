
class CFUserNotification : _CFObject {
}
typealias CFUserNotificationCallBack = @convention(c) (CFUserNotification?, CFOptionFlags) -> Void
@available(macOS 10.0, *)
func CFUserNotificationGetTypeID() -> CFTypeID
@available(macOS 10.0, *)
func CFUserNotificationCreate(_ allocator: CFAllocator!, _ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ error: UnsafeMutablePointer<Int32>!, _ dictionary: CFDictionary!) -> CFUserNotification!
@available(macOS 10.0, *)
func CFUserNotificationReceiveResponse(_ userNotification: CFUserNotification!, _ timeout: CFTimeInterval, _ responseFlags: UnsafeMutablePointer<CFOptionFlags>!) -> Int32
@available(macOS 10.0, *)
func CFUserNotificationGetResponseValue(_ userNotification: CFUserNotification!, _ key: CFString!, _ idx: CFIndex) -> CFString!
@available(macOS 10.0, *)
func CFUserNotificationGetResponseDictionary(_ userNotification: CFUserNotification!) -> CFDictionary!
@available(macOS 10.0, *)
func CFUserNotificationUpdate(_ userNotification: CFUserNotification!, _ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ dictionary: CFDictionary!) -> Int32
@available(macOS 10.0, *)
func CFUserNotificationCancel(_ userNotification: CFUserNotification!) -> Int32
@available(macOS 10.0, *)
func CFUserNotificationCreateRunLoopSource(_ allocator: CFAllocator!, _ userNotification: CFUserNotification!, _ callout: CFUserNotificationCallBack!, _ order: CFIndex) -> CFRunLoopSource!
@available(macOS 10.0, *)
func CFUserNotificationDisplayNotice(_ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ iconURL: CFURL!, _ soundURL: CFURL!, _ localizationURL: CFURL!, _ alertHeader: CFString!, _ alertMessage: CFString!, _ defaultButtonTitle: CFString!) -> Int32
@available(macOS 10.0, *)
func CFUserNotificationDisplayAlert(_ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ iconURL: CFURL!, _ soundURL: CFURL!, _ localizationURL: CFURL!, _ alertHeader: CFString!, _ alertMessage: CFString!, _ defaultButtonTitle: CFString!, _ alternateButtonTitle: CFString!, _ otherButtonTitle: CFString!, _ responseFlags: UnsafeMutablePointer<CFOptionFlags>!) -> Int32
@available(macOS 10.0, *)
var kCFUserNotificationStopAlertLevel: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationNoteAlertLevel: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationCautionAlertLevel: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationPlainAlertLevel: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationDefaultResponse: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationAlternateResponse: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationOtherResponse: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationCancelResponse: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationNoDefaultButtonFlag: CFOptionFlags { get }
@available(macOS 10.0, *)
var kCFUserNotificationUseRadioButtonsFlag: CFOptionFlags { get }
@available(macOS 10.0, *)
func CFUserNotificationCheckBoxChecked(_ i: CFIndex) -> CFOptionFlags
@available(macOS 10.0, *)
func CFUserNotificationSecureTextField(_ i: CFIndex) -> CFOptionFlags
@available(macOS 10.0, *)
func CFUserNotificationPopUpSelection(_ n: CFIndex) -> CFOptionFlags
@available(macOS 10.0, *)
let kCFUserNotificationIconURLKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationSoundURLKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationLocalizationURLKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationAlertHeaderKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationAlertMessageKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationDefaultButtonTitleKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationAlternateButtonTitleKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationOtherButtonTitleKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationProgressIndicatorValueKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationPopUpTitlesKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationTextFieldTitlesKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationCheckBoxTitlesKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationTextFieldValuesKey: CFString!
@available(macOS 10.3, *)
let kCFUserNotificationPopUpSelectionKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationAlertTopMostKey: CFString!
@available(macOS 10.0, *)
let kCFUserNotificationKeyboardTypesKey: CFString!
