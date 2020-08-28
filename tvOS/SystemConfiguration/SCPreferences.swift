
typealias AuthorizationRef = OpaquePointer
class SCPreferences : _CFObject {
}
struct SCPreferencesNotification : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var commit: SCPreferencesNotification { get }
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
func SCPreferencesGetTypeID() -> CFTypeID
func SCPreferencesCreate(_ allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?) -> SCPreferences?
func SCPreferencesCreateWithAuthorization(_ allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?, _ authorization: AuthorizationRef?) -> SCPreferences?
func SCPreferencesLock(_ prefs: SCPreferences, _ wait: Bool) -> Bool
func SCPreferencesCommitChanges(_ prefs: SCPreferences) -> Bool
func SCPreferencesApplyChanges(_ prefs: SCPreferences) -> Bool
func SCPreferencesUnlock(_ prefs: SCPreferences) -> Bool
func SCPreferencesGetSignature(_ prefs: SCPreferences) -> CFData?
func SCPreferencesCopyKeyList(_ prefs: SCPreferences) -> CFArray?
func SCPreferencesGetValue(_ prefs: SCPreferences, _ key: CFString) -> CFPropertyList?
func SCPreferencesAddValue(_ prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCPreferencesSetValue(_ prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCPreferencesRemoveValue(_ prefs: SCPreferences, _ key: CFString) -> Bool
func SCPreferencesSetCallback(_ prefs: SCPreferences, _ callout: SCPreferencesCallBack?, _ context: UnsafeMutablePointer<SCPreferencesContext>?) -> Bool
func SCPreferencesScheduleWithRunLoop(_ prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCPreferencesUnscheduleFromRunLoop(_ prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCPreferencesSetDispatchQueue(_ prefs: SCPreferences, _ queue: DispatchQueue?) -> Bool
func SCPreferencesSynchronize(_ prefs: SCPreferences)
