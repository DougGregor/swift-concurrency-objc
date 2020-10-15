
@available(iOS 8.0, *)
class HMRoom : NSObject {
  var name: String { get }
  var accessories: [HMAccessory] { get }
  @available(iOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  func updateName(_ name: String, completionHandler completion: @escaping (Error?) -> Void)
}
