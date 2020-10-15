
class AMWorkflow : NSObject, NSCopying {
  class func run(at fileURL: URL, withInput input: Any?) throws -> Any
  convenience init(contentsOf fileURL: URL) throws
  func write(to fileURL: URL) throws
  func setValue(_ value: Any?, forVariableWithName variableName: String) -> Bool
  func valueForVariable(withName variableName: String) -> Any?
  func addAction(_ action: AMAction)
  func removeAction(_ action: AMAction)
  func insertAction(_ action: AMAction, at index: Int)
  func moveAction(at startIndex: Int, to endIndex: Int)
  var fileURL: URL? { get }
  var actions: [AMAction] { get }
  var input: Any?
  @available(macOS 10.6, *)
  var output: Any? { get }
}
