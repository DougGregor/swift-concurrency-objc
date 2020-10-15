
@available(watchOS 2.0, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(_ rowTypes: [String])
  func setNumberOfRows(_ numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowController(at index: Int) -> Any?
  func insertRows(at rows: IndexSet, withRowType rowType: String)
  func removeRows(at rows: IndexSet)
  func scrollToRow(at index: Int)
  @available(watchOS 3.0, *)
  func performSegue(forRow row: Int)
  @available(watchOS 5.1, *)
  var curvesAtTop: Bool
  @available(watchOS 5.1, *)
  var curvesAtBottom: Bool
}
