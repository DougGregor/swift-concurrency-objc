
@available(macOS 11.0, *)
class VZVirtioSocketDevice : VZSocketDevice {
  func setSocketListener(_ listener: VZVirtioSocketListener, forPort port: UInt32)
  func removeSocketListener(forPort port: UInt32)
  func __connect(toPort port: UInt32, completionHandler: @escaping (VZVirtioSocketConnection?, Error?) -> Void)
  func __connect(toPort port: UInt32) async throws -> VZVirtioSocketConnection
}

extension VZVirtioSocketDevice {
  func connect(toPort port: UInt32, completionHandler: @escaping (Result<VZVirtioSocketConnection, Error>) -> Void)
}
