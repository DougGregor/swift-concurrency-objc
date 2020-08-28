
extension PKPushType {
  @available(iOS 9.0, *)
  static let voIP: PKPushType
  @available(iOS, introduced: 9.0, deprecated: 13.0, message: "Complication pushes are supported directly on watchOS now, so this should no longer be used on iOS.")
  static let complication: PKPushType
  @available(iOS 11.0, *)
  static let fileProvider: PKPushType
}
@available(iOS 8.0, *)
class PKPushRegistry : NSObject {
  weak var delegate: @sil_weak PKPushRegistryDelegate?
  var desiredPushTypes: Set<PKPushType>?
  func pushToken(for type: PKPushType) -> Data?
  init(queue: DispatchQueue?)
}
protocol PKPushRegistryDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func pushRegistry(_ registry: PKPushRegistry, didUpdate pushCredentials: PKPushCredentials, for type: PKPushType)
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  optional func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType)
  @available(iOS 11.0, *)
  optional func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType, completion: @escaping () -> Void)
  @available(iOS 11.0, *)
  optional func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType) async
  @available(iOS 8.0, *)
  optional func pushRegistry(_ registry: PKPushRegistry, didInvalidatePushTokenFor type: PKPushType)
}
