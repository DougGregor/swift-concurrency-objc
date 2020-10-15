
@available(tvOS 11.0, *)
class UIFocusDebugger : NSObject {
  class func help() -> UIFocusDebuggerOutput
  class func status() -> UIFocusDebuggerOutput
  class func checkFocusability(for item: UIFocusItem) -> UIFocusDebuggerOutput
  class func simulateFocusUpdateRequest(from environment: UIFocusEnvironment) -> UIFocusDebuggerOutput
}
@available(tvOS 11.0, *)
protocol UIFocusDebuggerOutput : NSObjectProtocol {
}
