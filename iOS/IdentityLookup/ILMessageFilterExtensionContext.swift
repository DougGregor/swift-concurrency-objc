
@available(iOS 11.0, *)
class ILMessageFilterExtensionContext : NSExtensionContext {
  func deferQueryRequestToNetwork(completion: @escaping (ILNetworkResponse?, Error?) -> Void)
}
