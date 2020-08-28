
class AMWorkspace : NSObject {
  class var shared: AMWorkspace! { get }
  func runWorkflow(atPath path: String!, withInput input: Any!) throws -> Any
}
