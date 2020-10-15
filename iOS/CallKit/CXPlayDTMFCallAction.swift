
extension CXPlayDTMFCallAction {
  @available(iOS 10.0, *)
  enum ActionType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case singleTone
    case softPause
    case hardPause
  }
}
@available(iOS 10.0, *)
class CXPlayDTMFCallAction : CXCallAction {
  init(call callUUID: UUID, digits: String, type: CXPlayDTMFCallAction.ActionType)
  var digits: String
  var type: CXPlayDTMFCallAction.ActionType
}
