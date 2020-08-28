
extension NSPopUpButton {
  enum ArrowPosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noArrow
    case arrowAtCenter
    case arrowAtBottom
  }
}
class NSPopUpButtonCell : NSMenuItemCell, NSMenuItemValidation {
  init(textCell stringValue: String, pullsDown pullDown: Bool)
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  var usesItemFromMenu: Bool
  var altersStateOfSelectedItem: Bool
  func addItem(withTitle title: String)
  func addItems(withTitles itemTitles: [String])
  func insertItem(withTitle title: String, at index: Int)
  func removeItem(withTitle title: String)
  func removeItem(at index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func index(of item: NSMenuItem) -> Int
  func indexOfItem(withTitle title: String) -> Int
  func indexOfItem(withTag tag: Int) -> Int
  func indexOfItem(withRepresentedObject obj: Any?) -> Int
  func indexOfItem(withTarget target: Any?, andAction actionSelector: Selector?) -> Int
  func item(at index: Int) -> NSMenuItem?
  func item(withTitle title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func select(_ item: NSMenuItem?)
  func selectItem(at index: Int)
  func selectItem(withTitle title: String)
  func selectItem(withTag tag: Int) -> Bool
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitle(at index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func attachPopUp(withFrame cellFrame: NSRect, in controlView: NSView)
  func dismissPopUp()
  func performClick(withFrame frame: NSRect, in controlView: NSView)
  var arrowPosition: NSPopUpButton.ArrowPosition
}
extension NSPopUpButtonCell {
  class let willPopUpNotification: NSNotification.Name
}
