
@available(tvOS 13.0, *)
class HMAddAccessoryRequest : NSObject {
  var home: HMHome { get }
  var accessoryName: String { get }
  var accessoryCategory: HMAccessoryCategory { get }
  var requiresSetupPayloadURL: Bool { get }
  @available(tvOS, introduced: 13.0, deprecated: 13.0, message: "No longer supported")
  var requiresOwnershipToken: Bool { get }
  func makePayload(ownershipToken: HMAccessoryOwnershipToken) -> HMAccessorySetupPayload?
  func makePayload(url setupPayloadURL: URL, ownershipToken: HMAccessoryOwnershipToken) -> HMAccessorySetupPayload?
}
