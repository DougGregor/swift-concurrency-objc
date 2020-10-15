
enum NSPreferencePaneUnselectReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unselectCancel
  case unselectNow
  case unselectLater
}
extension NSNotification.Name {
  static let NSPreferencePaneDoUnselect: NSNotification.Name
  static let NSPreferencePaneCancelUnselect: NSNotification.Name
  static let NSPreferencePaneSwitchToPane: NSNotification.Name
  static let NSPreferencePrefPaneIsAvailable: NSNotification.Name
  static let NSPreferencePaneUpdateHelpMenu: NSNotification.Name
}
let NSPrefPaneHelpMenuInfoPListKey: String
let NSPrefPaneHelpMenuTitleKey: String
let NSPrefPaneHelpMenuAnchorKey: String
class NSPreferencePane : NSObject {
  init(bundle: Bundle)
  var bundle: Bundle { get }
  func loadMainView() -> NSView
  func mainViewDidLoad()
  var mainNibName: String { get }
  func assignMainView()
  func willSelect()
  func didSelect()
  var shouldUnselect: NSPreferencePaneUnselectReply { get }
  func reply(toShouldUnselect shouldUnselect: Bool)
  func willUnselect()
  func didUnselect()
  var mainView: NSView
  var initialKeyView: NSView?
  var firstKeyView: NSView?
  var lastKeyView: NSView?
  var autoSaveTextFields: Bool { get }
  var isSelected: Bool { get }
  func updateHelpMenu(with inArrayOfMenuItems: [[String : String]]?)
}
