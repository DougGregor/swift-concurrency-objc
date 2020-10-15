
extension NSStoryboardSegue {
  typealias Identifier = String
}
@available(macOS 10.10, *)
class NSStoryboardSegue : NSObject {
  convenience init(identifier: NSStoryboardSegue.Identifier, source sourceController: Any, destination destinationController: Any, performHandler: @escaping () -> Void)
  init(identifier: NSStoryboardSegue.Identifier, source sourceController: Any, destination destinationController: Any)
  var identifier: NSStoryboardSegue.Identifier? { get }
  var sourceController: Any { get }
  var destinationController: Any { get }
  func perform()
}
protocol NSSeguePerforming : NSObjectProtocol {
  @available(macOS 10.10, *)
  optional func prepare(for segue: NSStoryboardSegue, sender: Any?)
  @available(macOS 10.10, *)
  optional func performSegue(withIdentifier identifier: NSStoryboardSegue.Identifier, sender: Any?)
  @available(macOS 10.10, *)
  optional func shouldPerformSegue(withIdentifier identifier: NSStoryboardSegue.Identifier, sender: Any?) -> Bool
}
