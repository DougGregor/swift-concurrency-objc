
@available(watchOS 6.0, *)
class HMAccessoryOwnershipToken : NSObject {
  init?(data: Data)
}
@available(watchOS 4.3, *)
class HMAccessorySetupPayload : NSObject {
  convenience init?(url setupPayloadURL: URL?)
  @available(watchOS 6.0, *)
  init?(url setupPayloadURL: URL, ownershipToken: HMAccessoryOwnershipToken?)
}
