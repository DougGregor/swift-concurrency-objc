
@available(macOS 11.0, *)
class CXSetMutedCallAction : CXCallAction {
  init(call callUUID: UUID, muted: Bool)
  var isMuted: Bool
}
