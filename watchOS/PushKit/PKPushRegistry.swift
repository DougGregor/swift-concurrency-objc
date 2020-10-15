
extension PKPushType {
  @available(watchOS 6.0, *)
  static let complication: PKPushType
}
@available(watchOS 6.0, *)
class PKPushRegistry : NSObject {
  weak var delegate: @sil_weak PKPushRegistryDelegate?
  var desiredPushTypes: Set<PKPushType>?
  func pushToken(for type: PKPushType) -> Data?
  init(queue: DispatchQueue?)
}
protocol PKPushRegistryDelegate : NSObjectProtocol {
  @available(watchOS 6.0, *)
  @asyncHandler func pushRegistry(_ registry: PKPushRegistry, didUpdate pushCredentials: PKPushCredentials, for type: PKPushType)
  @available(watchOS 6.0, *)
  @asyncHandler optional func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType, completion: @escaping () -> Void)
  @available(watchOS 6.0, *)
  optional func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType) async
  @available(watchOS 6.0, *)
  @asyncHandler optional func pushRegistry(_ registry: PKPushRegistry, didInvalidatePushTokenFor type: PKPushType)
}
