
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
class NCWidgetListViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetListViewDelegate?
  var contents: [Any]
  var minimumVisibleRowCount: Int
  var hasDividerLines: Bool
  var editing: Bool
  var showsAddButtonWhenEditing: Bool
  func viewController(atRow row: Int, makeIfNecessary makeIfNecesary: Bool) -> NSViewController
  func row(for viewController: NSViewController) -> Int
}
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
protocol NCWidgetListViewDelegate : NSObjectProtocol {
  func widgetList(_ list: NCWidgetListViewController, viewControllerForRow row: Int) -> NSViewController
  optional func widgetListPerformAddAction(_ list: NCWidgetListViewController)
  optional func widgetList(_ list: NCWidgetListViewController, shouldReorderRow row: Int) -> Bool
  optional func widgetList(_ list: NCWidgetListViewController, didReorderRow row: Int, toRow newIndex: Int)
  optional func widgetList(_ list: NCWidgetListViewController, shouldRemoveRow row: Int) -> Bool
  optional func widgetList(_ list: NCWidgetListViewController, didRemoveRow row: Int)
}
