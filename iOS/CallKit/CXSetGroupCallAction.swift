
@available(iOS 10.0, *)
class CXSetGroupCallAction : CXCallAction {
  init(call callUUID: UUID, callUUIDToGroupWith: UUID?)
  var callUUIDToGroupWith: UUID?
}
