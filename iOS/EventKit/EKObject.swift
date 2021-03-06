
@available(iOS 13.0, *)
class EKObject : NSObject {
  var hasChanges: Bool { get }
  var isNew: Bool { get }
  func reset()
  func rollback()
  func refresh() -> Bool
}
