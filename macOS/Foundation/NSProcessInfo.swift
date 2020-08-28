
var NSWindowsNTOperatingSystem: Int { get }
var NSWindows95OperatingSystem: Int { get }
var NSSolarisOperatingSystem: Int { get }
var NSHPUXOperatingSystem: Int { get }
var NSMACHOperatingSystem: Int { get }
var NSSunOSOperatingSystem: Int { get }
var NSOSF1OperatingSystem: Int { get }
struct OperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class ProcessInfo : NSObject {
  class var processInfo: ProcessInfo { get }
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(macOS 10.10, *)
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(macOS 10.5, *)
  var processorCount: Int { get }
  @available(macOS 10.5, *)
  var activeProcessorCount: Int { get }
  @available(macOS 10.5, *)
  var physicalMemory: UInt64 { get }
  @available(macOS 10.10, *)
  func isOperatingSystemAtLeast(_ version: OperatingSystemVersion) -> Bool
  @available(macOS 10.6, *)
  var systemUptime: TimeInterval { get }
  @available(macOS 10.6, *)
  func disableSuddenTermination()
  @available(macOS 10.6, *)
  func enableSuddenTermination()
  @available(macOS 10.7, *)
  func disableAutomaticTermination(_ reason: String)
  @available(macOS 10.7, *)
  func enableAutomaticTermination(_ reason: String)
  @available(macOS 10.7, *)
  var automaticTerminationSupportEnabled: Bool
}
extension ProcessInfo {
  @available(macOS 10.9, *)
  struct ActivityOptions : OptionSet {
    init(rawValue: UInt64)
    let rawValue: UInt64
    static var idleDisplaySleepDisabled: ProcessInfo.ActivityOptions { get }
    static var idleSystemSleepDisabled: ProcessInfo.ActivityOptions { get }
    static var suddenTerminationDisabled: ProcessInfo.ActivityOptions { get }
    static var automaticTerminationDisabled: ProcessInfo.ActivityOptions { get }
    static var userInitiated: ProcessInfo.ActivityOptions { get }
    static var userInitiatedAllowingIdleSystemSleep: ProcessInfo.ActivityOptions { get }
    static var background: ProcessInfo.ActivityOptions { get }
    static var latencyCritical: ProcessInfo.ActivityOptions { get }
  }
  @available(macOS 10.10.3, *)
  enum ThermalState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case nominal
    case fair
    case serious
    case critical
  }
  @available(macOS 10.10.3, *)
  class let thermalStateDidChangeNotification: NSNotification.Name
}
extension ProcessInfo {
  @available(macOS 10.9, *)
  func beginActivity(options: ProcessInfo.ActivityOptions = [], reason: String) -> NSObjectProtocol
  @available(macOS 10.9, *)
  func endActivity(_ activity: NSObjectProtocol)
  @available(macOS 10.9, *)
  func performActivity(options: ProcessInfo.ActivityOptions = [], reason: String, using block: @escaping () -> Void)
}
extension ProcessInfo {
  @available(macOS 10.12, *)
  var userName: String { get }
  @available(macOS 10.12, *)
  var fullUserName: String { get }
}
extension ProcessInfo {
  @available(macOS 10.10.3, *)
  var thermalState: ProcessInfo.ThermalState { get }
}
extension ProcessInfo {
}
extension NSNotification.Name {
}
extension ProcessInfo {
  @available(macOS 10.15, *)
  var isMacCatalystApp: Bool { get }
  @available(macOS 11.0, *)
  var isiOSAppOnMac: Bool { get }
}
