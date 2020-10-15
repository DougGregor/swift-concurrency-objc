
extension ARSession.CollaborationData {
  @available(iOS 13.0, *)
  enum Priority : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case critical
    case optional
  }
}
extension ARSession {
  @available(iOS 13.0, *)
  class CollaborationData : NSObject, NSSecureCoding {
    var priority: ARSession.CollaborationData.Priority { get }
  }
}
