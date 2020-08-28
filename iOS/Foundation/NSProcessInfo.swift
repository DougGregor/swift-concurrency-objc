
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
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(iOS 8.0, *)
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(iOS 2.0, *)
  var processorCount: Int { get }
  @available(iOS 2.0, *)
  var activeProcessorCount: Int { get }
  @available(iOS 2.0, *)
  var physicalMemory: UInt64 { get }
  @available(iOS 8.0, *)
  func isOperatingSystemAtLeast(_ version: OperatingSystemVersion) -> Bool
  @available(iOS 4.0, *)
  var systemUptime: TimeInterval { get }
}
extension ProcessInfo {
  @available(iOS 7.0, *)
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
  @available(iOS 11.0, *)
  enum ThermalState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case nominal
    case fair
    case serious
    case critical
  }
  @available(iOS 11.0, *)
  class let thermalStateDidChangeNotification: NSNotification.Name
}
extension ProcessInfo {
  @available(iOS 7.0, *)
  func beginActivity(options: ProcessInfo.ActivityOptions = [], reason: String) -> NSObjectProtocol
  @available(iOS 7.0, *)
  func endActivity(_ activity: NSObjectProtocol)
  @available(iOS 7.0, *)
  func performActivity(options: ProcessInfo.ActivityOptions = [], reason: String, using block: @escaping () -> Void)
  @available(iOS 8.2, *)
  func performExpiringActivity(withReason reason: String, using block: @escaping (Bool) -> Void)
}
extension ProcessInfo {
}
extension ProcessInfo {
  @available(iOS 11.0, *)
  var thermalState: ProcessInfo.ThermalState { get }
}
extension ProcessInfo {
  @available(iOS 9.0, *)
  var isLowPowerModeEnabled: Bool { get }
}
extension NSNotification.Name {
  @available(iOS 9.0, *)
  static let NSProcessInfoPowerStateDidChange: NSNotification.Name
}
extension ProcessInfo {
  @available(iOS 13.0, *)
  var isMacCatalystApp: Bool { get }
  @available(iOS 14.0, *)
  var isiOSAppOnMac: Bool { get }
}
