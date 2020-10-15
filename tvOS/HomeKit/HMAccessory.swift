
@available(tvOS 10.0, *)
class HMAccessory : NSObject {
  var name: String { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  weak var delegate: @sil_weak HMAccessoryDelegate?
  var isReachable: Bool { get }
  var isBridged: Bool { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifiersForBridgedAccessories: [UUID]? { get }
  @available(tvOS 9.0, *)
  var category: HMAccessoryCategory { get }
  weak var room: @sil_weak HMRoom? { get }
  var services: [HMService] { get }
  @available(tvOS 11.0, *)
  var profiles: [HMAccessoryProfile] { get }
  var isBlocked: Bool { get }
  @available(tvOS 11.0, *)
  var model: String? { get }
  @available(tvOS 11.0, *)
  var manufacturer: String? { get }
  @available(tvOS 11.0, *)
  var firmwareVersion: String? { get }
  @available(tvOS 11.3, *)
  var supportsIdentify: Bool { get }
  func identify(completionHandler completion: @escaping (Error?) -> Void)
}
@available(tvOS 10.0, *)
protocol HMAccessoryDelegate : NSObjectProtocol {
  optional func accessoryDidUpdateName(_ accessory: HMAccessory)
  optional func accessory(_ accessory: HMAccessory, didUpdateNameFor service: HMService)
  optional func accessory(_ accessory: HMAccessory, didUpdateAssociatedServiceTypeFor service: HMService)
  optional func accessoryDidUpdateServices(_ accessory: HMAccessory)
  @available(tvOS 11.0, *)
  optional func accessory(_ accessory: HMAccessory, didAdd profile: HMAccessoryProfile)
  @available(tvOS 11.0, *)
  optional func accessory(_ accessory: HMAccessory, didRemove profile: HMAccessoryProfile)
  optional func accessoryDidUpdateReachability(_ accessory: HMAccessory)
  optional func accessory(_ accessory: HMAccessory, service: HMService, didUpdateValueFor characteristic: HMCharacteristic)
  @available(tvOS 11.0, *)
  optional func accessory(_ accessory: HMAccessory, didUpdateFirmwareVersion firmwareVersion: String)
}
