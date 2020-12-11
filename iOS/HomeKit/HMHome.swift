
@available(iOS 11.0, *)
enum HMHomeHubState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notAvailable
  case connected
  case disconnected
}
@available(iOS 8.0, *)
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var isPrimary: Bool { get }
  @available(iOS 11.0, *)
  var homeHubState: HMHomeHubState { get }
  @available(iOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  func updateName(_ name: String, completionHandler completion: @escaping (Error?) -> Void)
  func updateName(_ name: String) async throws
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func addAccessory(_ accessory: HMAccessory, completionHandler completion: @escaping (Error?) -> Void)
  func addAccessory(_ accessory: HMAccessory) async throws
  func removeAccessory(_ accessory: HMAccessory, completionHandler completion: @escaping (Error?) -> Void)
  func removeAccessory(_ accessory: HMAccessory) async throws
  func assignAccessory(_ accessory: HMAccessory, to room: HMRoom, completionHandler completion: @escaping (Error?) -> Void)
  func assignAccessory(_ accessory: HMAccessory, to room: HMRoom) async throws
  func servicesWithTypes(_ serviceTypes: [String]) -> [HMService]?
  func unblockAccessory(_ accessory: HMAccessory, completionHandler completion: @escaping (Error?) -> Void)
  func unblockAccessory(_ accessory: HMAccessory) async throws
  @available(iOS 10.0, *)
  func addAndSetupAccessories(completionHandler completion: @escaping (Error?) -> Void)
  @available(iOS 10.0, *)
  func addAndSetupAccessories() async throws
  @available(iOS 11.3, *)
  func addAndSetupAccessories(with payload: HMAccessorySetupPayload, completionHandler completion: @escaping ([HMAccessory]?, Error?) -> Void)
  @available(iOS 11.3, *)
  func addAndSetupAccessories(with payload: HMAccessorySetupPayload) async throws -> [HMAccessory]
  @available(iOS 13.2, *)
  var supportsAddingNetworkRouter: Bool { get }
}
extension HMHome {
  @available(iOS 9.0, *)
  var currentUser: HMUser { get }
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "No longer supported.")
  var users: [HMUser] { get }
  @available(iOS 9.0, *)
  func manageUsers(completionHandler completion: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func manageUsers() async throws
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  func addUser(completionHandler completion: @escaping (HMUser?, Error?) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  func addUser() async throws -> HMUser
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  func removeUser(_ user: HMUser, completionHandler completion: @escaping (Error?) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  func removeUser(_ user: HMUser) async throws
  @available(iOS 9.0, *)
  func homeAccessControl(for user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func addRoom(withName roomName: String, completionHandler completion: @escaping (HMRoom?, Error?) -> Void)
  func addRoom(withName roomName: String) async throws -> HMRoom
  func removeRoom(_ room: HMRoom, completionHandler completion: @escaping (Error?) -> Void)
  func removeRoom(_ room: HMRoom) async throws
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
  func addZone(withName zoneName: String, completionHandler completion: @escaping (HMZone?, Error?) -> Void)
  func addZone(withName zoneName: String) async throws -> HMZone
  func removeZone(_ zone: HMZone, completionHandler completion: @escaping (Error?) -> Void)
  func removeZone(_ zone: HMZone) async throws
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
  func addServiceGroup(withName serviceGroupName: String, completionHandler completion: @escaping (HMServiceGroup?, Error?) -> Void)
  func addServiceGroup(withName serviceGroupName: String) async throws -> HMServiceGroup
  func removeServiceGroup(_ group: HMServiceGroup, completionHandler completion: @escaping (Error?) -> Void)
  func removeServiceGroup(_ group: HMServiceGroup) async throws
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func addActionSet(withName actionSetName: String, completionHandler completion: @escaping (HMActionSet?, Error?) -> Void)
  func addActionSet(withName actionSetName: String) async throws -> HMActionSet
  func removeActionSet(_ actionSet: HMActionSet, completionHandler completion: @escaping (Error?) -> Void)
  func removeActionSet(_ actionSet: HMActionSet) async throws
  func executeActionSet(_ actionSet: HMActionSet, completionHandler completion: @escaping (Error?) -> Void)
  func executeActionSet(_ actionSet: HMActionSet) async throws
  @available(iOS 9.0, *)
  func builtinActionSet(ofType actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
  func addTrigger(_ trigger: HMTrigger, completionHandler completion: @escaping (Error?) -> Void)
  func addTrigger(_ trigger: HMTrigger) async throws
  func removeTrigger(_ trigger: HMTrigger, completionHandler completion: @escaping (Error?) -> Void)
  func removeTrigger(_ trigger: HMTrigger) async throws
}
@available(iOS 8.0, *)
protocol HMHomeDelegate : NSObjectProtocol {
  optional func homeDidUpdateName(_ home: HMHome)
  @available(iOS 11.0, *)
  optional func homeDidUpdateAccessControl(forCurrentUser home: HMHome)
  optional func home(_ home: HMHome, didAdd accessory: HMAccessory)
  optional func home(_ home: HMHome, didRemove accessory: HMAccessory)
  optional func home(_ home: HMHome, didAdd user: HMUser)
  optional func home(_ home: HMHome, didRemove user: HMUser)
  optional func home(_ home: HMHome, didUpdate room: HMRoom, for accessory: HMAccessory)
  optional func home(_ home: HMHome, didAdd room: HMRoom)
  optional func home(_ home: HMHome, didRemove room: HMRoom)
  optional func home(_ home: HMHome, didUpdateNameFor room: HMRoom)
  optional func home(_ home: HMHome, didAdd zone: HMZone)
  optional func home(_ home: HMHome, didRemove zone: HMZone)
  optional func home(_ home: HMHome, didUpdateNameFor zone: HMZone)
  optional func home(_ home: HMHome, didAdd room: HMRoom, to zone: HMZone)
  optional func home(_ home: HMHome, didRemove room: HMRoom, from zone: HMZone)
  optional func home(_ home: HMHome, didAdd group: HMServiceGroup)
  optional func home(_ home: HMHome, didRemove group: HMServiceGroup)
  optional func home(_ home: HMHome, didUpdateNameFor group: HMServiceGroup)
  optional func home(_ home: HMHome, didAdd service: HMService, to group: HMServiceGroup)
  optional func home(_ home: HMHome, didRemove service: HMService, from group: HMServiceGroup)
  optional func home(_ home: HMHome, didAdd actionSet: HMActionSet)
  optional func home(_ home: HMHome, didRemove actionSet: HMActionSet)
  optional func home(_ home: HMHome, didUpdateNameFor actionSet: HMActionSet)
  optional func home(_ home: HMHome, didUpdateActionsFor actionSet: HMActionSet)
  optional func home(_ home: HMHome, didAdd trigger: HMTrigger)
  optional func home(_ home: HMHome, didRemove trigger: HMTrigger)
  optional func home(_ home: HMHome, didUpdateNameFor trigger: HMTrigger)
  optional func home(_ home: HMHome, didUpdate trigger: HMTrigger)
  optional func home(_ home: HMHome, didUnblockAccessory accessory: HMAccessory)
  optional func home(_ home: HMHome, didEncounterError error: Error, for accessory: HMAccessory)
  @available(iOS 11.0, *)
  optional func home(_ home: HMHome, didUpdate homeHubState: HMHomeHubState)
  @available(iOS 13.2, *)
  optional func homeDidUpdateSupportedFeatures(_ home: HMHome)
}
@available(iOS 8.0, *)
let HMUserFailedAccessoriesKey: String
