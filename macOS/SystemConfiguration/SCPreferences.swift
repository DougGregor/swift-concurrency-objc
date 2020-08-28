
class SCPreferences : _CFObject {
}
struct SCPreferencesNotification : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(macOS 4.0, *)
  static var commit: SCPreferencesNotification { get }
  @available(macOS 4.0, *)
  static var apply: SCPreferencesNotification { get }
}
struct SCPreferencesContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?
  var release: (@convention(c) (UnsafeRawPointer) -> Void)?
  var copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?, release: (@convention(c) (UnsafeRawPointer) -> Void)?, copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?)
}
typealias SCPreferencesCallBack = @convention(c) (SCPreferences, SCPreferencesNotification, UnsafeMutableRawPointer?) -> Void
@available(macOS 10.1, *)
func SCPreferencesGetTypeID() -> CFTypeID
@available(macOS 10.1, *)
func SCPreferencesCreate(_ allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?) -> SCPreferences?
@available(macOS 10.5, *)
func SCPreferencesCreateWithAuthorization(_ allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?, _ authorization: AuthorizationRef?) -> SCPreferences?
@available(macOS 10.1, *)
func SCPreferencesLock(_ prefs: SCPreferences, _ wait: Bool) -> Bool
@available(macOS 10.1, *)
func SCPreferencesCommitChanges(_ prefs: SCPreferences) -> Bool
@available(macOS 10.1, *)
func SCPreferencesApplyChanges(_ prefs: SCPreferences) -> Bool
@available(macOS 10.1, *)
func SCPreferencesUnlock(_ prefs: SCPreferences) -> Bool
@available(macOS 10.1, *)
func SCPreferencesGetSignature(_ prefs: SCPreferences) -> CFData?
@available(macOS 10.1, *)
func SCPreferencesCopyKeyList(_ prefs: SCPreferences) -> CFArray?
@available(macOS 10.1, *)
func SCPreferencesGetValue(_ prefs: SCPreferences, _ key: CFString) -> CFPropertyList?
@available(macOS 10.1, *)
func SCPreferencesAddValue(_ prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(macOS 10.1, *)
func SCPreferencesSetValue(_ prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(macOS 10.1, *)
func SCPreferencesRemoveValue(_ prefs: SCPreferences, _ key: CFString) -> Bool
@available(macOS 10.4, *)
func SCPreferencesSetCallback(_ prefs: SCPreferences, _ callout: SCPreferencesCallBack?, _ context: UnsafeMutablePointer<SCPreferencesContext>?) -> Bool
@available(macOS 10.4, *)
func SCPreferencesScheduleWithRunLoop(_ prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(macOS 10.4, *)
func SCPreferencesUnscheduleFromRunLoop(_ prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(macOS 10.6, *)
func SCPreferencesSetDispatchQueue(_ prefs: SCPreferences, _ queue: DispatchQueue?) -> Bool
@available(macOS 10.4, *)
func SCPreferencesSynchronize(_ prefs: SCPreferences)
