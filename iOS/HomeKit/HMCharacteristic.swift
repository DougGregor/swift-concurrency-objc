
@available(iOS 8.0, *)
class HMCharacteristic : NSObject {
  var characteristicType: String { get }
  @available(iOS 9.0, *)
  var localizedDescription: String { get }
  weak var service: @sil_weak HMService? { get }
  var properties: [String] { get }
  var metadata: HMCharacteristicMetadata? { get }
  var value: Any? { get }
  var isNotificationEnabled: Bool { get }
  @available(iOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  func writeValue(_ value: Any?, completionHandler completion: @escaping (Error?) -> Void)
  func readValue(completionHandler completion: @escaping (Error?) -> Void)
  func enableNotification(_ enable: Bool, completionHandler completion: @escaping (Error?) -> Void)
  func updateAuthorizationData(_ data: Data?, completionHandler completion: @escaping (Error?) -> Void)
}
