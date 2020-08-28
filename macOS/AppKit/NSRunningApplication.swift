
extension NSApplication {
  struct ActivationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var activateAllWindows: NSApplication.ActivationOptions { get }
    static var activateIgnoringOtherApps: NSApplication.ActivationOptions { get }
  }
  enum ActivationPolicy : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case regular
    case accessory
    case prohibited
  }
}
@available(macOS 10.6, *)
class NSRunningApplication : NSObject {
  var isTerminated: Bool { get }
  var isFinishedLaunching: Bool { get }
  var isHidden: Bool { get }
  var isActive: Bool { get }
  @available(macOS 10.7, *)
  var ownsMenuBar: Bool { get }
  var activationPolicy: NSApplication.ActivationPolicy { get }
  var localizedName: String? { get }
  var bundleIdentifier: String? { get }
  var bundleURL: URL? { get }
  var executableURL: URL? { get }
  var processIdentifier: pid_t { get }
  var launchDate: Date? { get }
  var icon: NSImage? { get }
  var executableArchitecture: Int { get }
  func hide() -> Bool
  func unhide() -> Bool
  func activate(options: NSApplication.ActivationOptions = []) -> Bool
  func terminate() -> Bool
  func forceTerminate() -> Bool
  class func runningApplications(withBundleIdentifier bundleIdentifier: String) -> [NSRunningApplication]
  convenience init?(processIdentifier pid: pid_t)
  class var current: NSRunningApplication { get }
  class func terminateAutomaticallyTerminableApplications()
}
extension NSWorkspace {
  @available(macOS 10.6, *)
  var runningApplications: [NSRunningApplication] { get }
}
