
extension VZVirtualMachine {
  @available(macOS 11.0, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case stopped
    case running
    case paused
    case error
    case starting
    case pausing
    case resuming
  }
}
@available(macOS 11.0, *)
class VZVirtualMachine : NSObject {
  convenience init(configuration: VZVirtualMachineConfiguration)
  init(configuration: VZVirtualMachineConfiguration, queue: DispatchQueue)
  class var isSupported: Bool { get }
  var state: VZVirtualMachine.State { get }
  weak var delegate: @sil_weak VZVirtualMachineDelegate?
  var canStart: Bool { get }
  var canPause: Bool { get }
  var canResume: Bool { get }
  var canRequestStop: Bool { get }
  var memoryBalloonDevices: [VZMemoryBalloonDevice] { get }
  var socketDevices: [VZSocketDevice] { get }
  func __start(completionHandler: @escaping (Error?) -> Void)
  func __start() async throws
  func __pause(completionHandler: @escaping (Error?) -> Void)
  func __pause() async throws
  func __resume(completionHandler: @escaping (Error?) -> Void)
  func __resume() async throws
  func requestStop() throws
}

extension VZVirtualMachine {
  func start(completionHandler: @escaping (Result<Void, Error>) -> Void)
  func pause(completionHandler: @escaping (Result<Void, Error>) -> Void)
  func resume(completionHandler: @escaping (Result<Void, Error>) -> Void)
}
