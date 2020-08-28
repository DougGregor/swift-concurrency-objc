
@available(macOS 10.12, *)
class GKDecisionNode : NSObject {
  func createBranch(value: NSNumber, attribute: NSObjectProtocol) -> Self
  func createBranch(predicate: NSPredicate, attribute: NSObjectProtocol) -> Self
  func createBranch(weight: Int, attribute: NSObjectProtocol) -> Self
}
@available(macOS 10.12, *)
class GKDecisionTree : NSObject, NSSecureCoding {
  var rootNode: GKDecisionNode? { get }
  @NSCopying var randomSource: GKRandomSource
  init(attribute: NSObjectProtocol)
  init(examples: [[NSObjectProtocol]], actions: [NSObjectProtocol], attributes: [NSObjectProtocol])
  init(url: URL, error: Error?)
  func export(to url: URL, error: Error?) -> Bool
  func findAction(forAnswers answers: [AnyHashable : NSObjectProtocol]) -> NSObjectProtocol?
}
