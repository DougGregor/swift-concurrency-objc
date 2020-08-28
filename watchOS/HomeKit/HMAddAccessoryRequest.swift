
@available(watchOS 6.0, *)
class HMAddAccessoryRequest : NSObject {
  var home: HMHome { get }
  var accessoryName: String { get }
  var accessoryCategory: HMAccessoryCategory { get }
  var requiresSetupPayloadURL: Bool { get }
  @available(watchOS, introduced: 6.0, deprecated: 6.0, message: "No longer supported")
  var requiresOwnershipToken: Bool { get }
  func makePayload(ownershipToken: HMAccessoryOwnershipToken) -> HMAccessorySetupPayload?
  func makePayload(url setupPayloadURL: URL, ownershipToken: HMAccessoryOwnershipToken) -> HMAccessorySetupPayload?
}
