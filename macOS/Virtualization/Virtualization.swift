
extension VZVirtualMachine {
  func start(completionHandler: @escaping (Result<Void, Error>) -> Void)
  func pause(completionHandler: @escaping (Result<Void, Error>) -> Void)
  func resume(completionHandler: @escaping (Result<Void, Error>) -> Void)
}

extension VZVirtioSocketDevice {
  func connect(toPort port: UInt32, completionHandler: @escaping (Result<VZVirtioSocketConnection, Error>) -> Void)
}

