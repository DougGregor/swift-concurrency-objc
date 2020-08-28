
@available(iOS 10.0, *)
class CXTransaction : NSObject, NSCopying, NSSecureCoding {
  var uuid: UUID { get }
  var isComplete: Bool { get }
  var actions: [CXAction] { get }
  init(actions: [CXAction])
  convenience init(action: CXAction)
  func addAction(_ action: CXAction)
}
