
@available(tvOS 11.0, *)
enum HMHomeHubState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notAvailable
  case connected
  case disconnected
}
@available(tvOS 10.0, *)
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var isPrimary: Bool { get }
  @available(tvOS 11.0, *)
  var homeHubState: HMHomeHubState { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func servicesWithTypes(_ serviceTypes: [String]) -> [HMService]?
  @available(tvOS 13.2, *)
  var supportsAddingNetworkRouter: Bool { get }
}
extension HMHome {
  @available(tvOS 9.0, *)
  var currentUser: HMUser { get }
  @available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  func builtinActionSet(ofType actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
}
@available(tvOS 10.0, *)
protocol HMHomeDelegate : NSObjectProtocol {
  @asyncHandler optional func homeDidUpdateName(_ home: HMHome)
  @available(tvOS 11.0, *)
  @asyncHandler optional func homeDidUpdateAccessControl(forCurrentUser home: HMHome)
  @asyncHandler optional func home(_ home: HMHome, didAdd accessory: HMAccessory)
  @asyncHandler optional func home(_ home: HMHome, didRemove accessory: HMAccessory)
  @asyncHandler optional func home(_ home: HMHome, didAdd user: HMUser)
  @asyncHandler optional func home(_ home: HMHome, didRemove user: HMUser)
  @asyncHandler optional func home(_ home: HMHome, didUpdate room: HMRoom, for accessory: HMAccessory)
  @asyncHandler optional func home(_ home: HMHome, didAdd room: HMRoom)
  @asyncHandler optional func home(_ home: HMHome, didRemove room: HMRoom)
  @asyncHandler optional func home(_ home: HMHome, didUpdateNameFor room: HMRoom)
  @asyncHandler optional func home(_ home: HMHome, didAdd zone: HMZone)
  @asyncHandler optional func home(_ home: HMHome, didRemove zone: HMZone)
  @asyncHandler optional func home(_ home: HMHome, didUpdateNameFor zone: HMZone)
  @asyncHandler optional func home(_ home: HMHome, didAdd room: HMRoom, to zone: HMZone)
  @asyncHandler optional func home(_ home: HMHome, didRemove room: HMRoom, from zone: HMZone)
  @asyncHandler optional func home(_ home: HMHome, didAdd group: HMServiceGroup)
  @asyncHandler optional func home(_ home: HMHome, didRemove group: HMServiceGroup)
  @asyncHandler optional func home(_ home: HMHome, didUpdateNameFor group: HMServiceGroup)
  @asyncHandler optional func home(_ home: HMHome, didAdd service: HMService, to group: HMServiceGroup)
  @asyncHandler optional func home(_ home: HMHome, didRemove service: HMService, from group: HMServiceGroup)
  @asyncHandler optional func home(_ home: HMHome, didAdd actionSet: HMActionSet)
  @asyncHandler optional func home(_ home: HMHome, didRemove actionSet: HMActionSet)
  @asyncHandler optional func home(_ home: HMHome, didUpdateNameFor actionSet: HMActionSet)
  @asyncHandler optional func home(_ home: HMHome, didUpdateActionsFor actionSet: HMActionSet)
  @asyncHandler optional func home(_ home: HMHome, didAdd trigger: HMTrigger)
  @asyncHandler optional func home(_ home: HMHome, didRemove trigger: HMTrigger)
  @asyncHandler optional func home(_ home: HMHome, didUpdateNameFor trigger: HMTrigger)
  @asyncHandler optional func home(_ home: HMHome, didUpdate trigger: HMTrigger)
  @asyncHandler optional func home(_ home: HMHome, didUnblockAccessory accessory: HMAccessory)
  @asyncHandler optional func home(_ home: HMHome, didEncounterError error: Error, for accessory: HMAccessory)
  @available(tvOS 11.0, *)
  @asyncHandler optional func home(_ home: HMHome, didUpdate homeHubState: HMHomeHubState)
  @available(tvOS 13.2, *)
  @asyncHandler optional func homeDidUpdateSupportedFeatures(_ home: HMHome)
}
@available(tvOS 10.0, *)
let HMUserFailedAccessoriesKey: String
