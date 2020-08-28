
@available(iOS 10.0, *)
class CXSetMutedCallAction : CXCallAction {
  init(call callUUID: UUID, muted: Bool)
  var isMuted: Bool
}
