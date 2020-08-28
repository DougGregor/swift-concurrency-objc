
@available(tvOS 10.0, *)
class HMService : NSObject {
  weak var accessory: @sil_weak HMAccessory? { get }
  var serviceType: String { get }
  @available(tvOS 9.0, *)
  var localizedDescription: String { get }
  var name: String { get }
  var associatedServiceType: String? { get }
  var characteristics: [HMCharacteristic] { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  @available(tvOS 9.0, *)
  var isUserInteractive: Bool { get }
  @available(tvOS 10.0, *)
  var isPrimaryService: Bool { get }
  @available(tvOS 10.0, *)
  var linkedServices: [HMService]? { get }
  func updateName(_ name: String, completionHandler completion: @escaping (Error?) -> Void)
  func updateAssociatedServiceType(_ serviceType: String?, completionHandler completion: @escaping (Error?) -> Void)
}
