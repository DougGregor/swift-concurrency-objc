
@available(watchOS 2.0, *)
class HMServiceGroup : NSObject {
  var name: String { get }
  var services: [HMService] { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
  func updateName(_ name: String, completionHandler completion: @escaping (Error?) -> Void)
  func addService(_ service: HMService, completionHandler completion: @escaping (Error?) -> Void)
  func removeService(_ service: HMService, completionHandler completion: @escaping (Error?) -> Void)
}
