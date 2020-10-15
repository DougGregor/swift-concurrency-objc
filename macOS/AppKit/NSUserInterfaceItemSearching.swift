
protocol NSUserInterfaceItemSearching : NSObjectProtocol {
  func searchForItems(withSearch searchString: String, resultLimit: Int, matchedItemHandler handleMatchedItems: @escaping ([Any]) -> Void)
  func localizedTitles(forItem item: Any) -> [String]
  optional func performAction(forItem item: Any)
  optional func showAllHelpTopics(forSearch searchString: String)
}
extension NSApplication {
  @available(macOS 10.6, *)
  func registerUserInterfaceItemSearchHandler(_ handler: NSUserInterfaceItemSearching)
  @available(macOS 10.6, *)
  func unregisterUserInterfaceItemSearchHandler(_ handler: NSUserInterfaceItemSearching)
  @available(macOS 10.6, *)
  func searchString(_ searchString: String, inUserInterfaceItemString stringToSearch: String, range searchRange: NSRange, found foundRange: UnsafeMutablePointer<NSRange>?) -> Bool
}
