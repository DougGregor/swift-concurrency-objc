
@available(iOS 13.0, *)
class HMAccessoryOwnershipToken : NSObject {
  init?(data: Data)
}
@available(iOS 11.3, *)
class HMAccessorySetupPayload : NSObject {
  convenience init?(url setupPayloadURL: URL?)
  @available(iOS 13.0, *)
  init?(url setupPayloadURL: URL, ownershipToken: HMAccessoryOwnershipToken?)
}
