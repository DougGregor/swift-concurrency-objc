
class Process : NSObject {
  @available(macOS 10.13, *)
  var executableURL: URL?
  var arguments: [String]?
  var environment: [String : String]?
  @available(macOS 10.13, *)
  var currentDirectoryURL: URL?
  var standardInput: Any?
  var standardOutput: Any?
  var standardError: Any?
  @available(macOS 10.13, *)
  func run() throws
  func interrupt()
  func terminate()
  func suspend() -> Bool
  func resume() -> Bool
  var processIdentifier: Int32 { get }
  var isRunning: Bool { get }
  var terminationStatus: Int32 { get }
  @available(macOS 10.6, *)
  var terminationReason: Process.TerminationReason { get }
  @available(macOS 10.7, *)
  var terminationHandler: ((Process) -> Void)?
  @available(macOS 10.10, *)
  var qualityOfService: QualityOfService
}
extension Process {
  @available(macOS 10.13, *)
  class func run(_ url: URL, arguments: [String], terminationHandler: ((Process) -> Void)? = nil) throws -> Process
  func waitUntilExit()
}
extension Process {
  @available(macOS, introduced: 10.0, deprecated: 100000)
  var launchPath: String?
  @available(macOS, introduced: 10.0, deprecated: 100000)
  var currentDirectoryPath: String
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func launch()
  @available(macOS, introduced: 10.0, deprecated: 100000)
  class func launchedProcess(launchPath path: String, arguments: [String]) -> Process
}
extension Process {
  class let didTerminateNotification: NSNotification.Name
  @available(macOS 10.6, *)
  enum TerminationReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case exit
    case uncaughtSignal
  }
}
