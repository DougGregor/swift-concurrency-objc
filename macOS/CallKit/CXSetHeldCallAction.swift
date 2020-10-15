
@available(macOS 11.0, *)
class CXSetHeldCallAction : CXCallAction {
  init(call callUUID: UUID, onHold: Bool)
  var isOnHold: Bool
}
