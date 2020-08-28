
@available(macOS 11.0, *)
class CXStartCallAction : CXCallAction {
  init(call callUUID: UUID, handle: CXHandle)
  @NSCopying var handle: CXHandle
  var contactIdentifier: String?
  var isVideo: Bool
  func fulfill(withDateStarted dateStarted: Date)
}
