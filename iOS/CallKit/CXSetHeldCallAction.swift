
@available(iOS 10.0, *)
class CXSetHeldCallAction : CXCallAction {
  init(call callUUID: UUID, onHold: Bool)
  var isOnHold: Bool
}
