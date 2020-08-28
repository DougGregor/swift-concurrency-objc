
class NSUserDefaultsController : NSController {
  class var shared: NSUserDefaultsController { get }
  init(defaults: UserDefaults?, initialValues: [String : Any]?)
  var defaults: UserDefaults { get }
  var initialValues: [String : Any]?
  var appliesImmediately: Bool
  var hasUnappliedChanges: Bool { get }
  var values: Any { get }
  @IBAction func revert(_ sender: Any?)
  @IBAction func save(_ sender: Any?)
  @IBAction func revertToInitialValues(_ sender: Any?)
}
