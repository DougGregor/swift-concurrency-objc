
@available(macOS 11.0, *)
class CXSetGroupCallAction : CXCallAction {
  init(call callUUID: UUID, callUUIDToGroupWith: UUID?)
  var callUUIDToGroupWith: UUID?
}
