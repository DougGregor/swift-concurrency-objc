
enum AMLogLevel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case debug
  case info
  case warn
  case error
}
@available(macOS 10.4, *)
class AMAction : NSObject {
  init?(definition dict: [String : Any]?, fromArchive archived: Bool)
  @available(macOS 10.5, *)
  init(contentsOf fileURL: URL) throws
  @available(macOS 10.5, *)
  var name: String { get }
  @available(macOS 10.5, *)
  var ignoresInput: Bool { get }
  @available(macOS 10.6, *)
  var selectedInputType: String?
  @available(macOS 10.6, *)
  var selectedOutputType: String?
  @available(macOS 10.6, *)
  var progressValue: CGFloat
  @available(macOS 10.7, *)
  func run(withInput input: Any?) throws -> Any
  @available(macOS 10.5, *)
  func runAsynchronously(withInput input: Any?)
  @available(macOS 10.5, *)
  func willFinishRunning()
  @available(macOS 10.7, *)
  func finishRunningWithError(_ error: Error?)
  @available(macOS 10.5, *)
  var output: Any?
  func stop()
  func reset()
  func write(to dictionary: NSMutableDictionary)
  func opened()
  func activated()
  @available(macOS 10.5, *)
  func closed()
  func updateParameters()
  func parametersUpdated()
  var isStopped: Bool { get }
}
