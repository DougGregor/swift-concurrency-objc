
@available(watchOS 4.0, *)
enum HMHomeHubState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notAvailable
  case connected
  case disconnected
}
@available(watchOS 2.0, *)
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var isPrimary: Bool { get }
  @available(watchOS 4.0, *)
  var homeHubState: HMHomeHubState { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func servicesWithTypes(_ serviceTypes: [String]) -> [HMService]?
  @available(watchOS 6.1, *)
  var supportsAddingNetworkRouter: Bool { get }
}
extension HMHome {
  @available(watchOS 2.0, *)
  var currentUser: HMUser { get }
  @available(watchOS 2.0, *)
  func homeAccessControl(for user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func executeActionSet(_ actionSet: HMActionSet, completionHandler completion: @escaping (Error?) -> Void)
  func executeActionSet(_ actionSet: HMActionSet) async throws
  @available(watchOS 2.0, *)
  func builtinActionSet(ofType actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
}
@available(watchOS 2.0, *)
protocol HMHomeDelegate : NSObjectProtocol {
  optional func homeDidUpdateName(_ home: HMHome)
  @available(watchOS 4.0, *)
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
  @available(watchOS 4.0, *)
  optional func home(_ home: HMHome, didUpdate homeHubState: HMHomeHubState)
  @available(watchOS 6.1, *)
  optional func homeDidUpdateSupportedFeatures(_ home: HMHome)
}
@available(watchOS 2.0, *)
let HMUserFailedAccessoriesKey: String
