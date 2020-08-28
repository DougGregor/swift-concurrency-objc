
@available(macOS 11.0, *)
class CXCallAction : CXAction {
  var callUUID: UUID { get }
  init(call callUUID: UUID)
}
