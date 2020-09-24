
extension PKPushType {
  @available(macOS 10.15, *)
  static let fileProvider: PKPushType
}
@available(macOS 10.15, *)
class PKPushRegistry : NSObject {
  weak var delegate: @sil_weak PKPushRegistryDelegate?
  var desiredPushTypes: Set<PKPushType>?
  func pushToken(for type: PKPushType) -> Data?
  init(queue: DispatchQueue?)
}
protocol PKPushRegistryDelegate : NSObjectProtocol {
  @available(macOS 10.15, *)
  @asyncHandler func pushRegistry(_ registry: PKPushRegistry, didUpdate pushCredentials: PKPushCredentials, for type: PKPushType)
  @available(macOS 10.15, *)
  @asyncHandler optional func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType, completion: @escaping () -> Void)
  @available(macOS 10.15, *)
  optional func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType) async
  @available(macOS 10.15, *)
  @asyncHandler optional func pushRegistry(_ registry: PKPushRegistry, didInvalidatePushTokenFor type: PKPushType)
}
