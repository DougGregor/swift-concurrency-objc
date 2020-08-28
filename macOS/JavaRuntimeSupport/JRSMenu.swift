
extension NSNotification.Name {
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
  static let JRSMenuDidReuseItem: NSNotification.Name
}
protocol JRSMenuDelegate : NSObjectProtocol {
  optional func handleJavaMouseEvent(_ event: NSEvent!)
  optional func handleJavaMenuItemTargeted(at menuIndex: Int, rect: NSRect)
}
extension NSMenu {
  class func javaMenu(withTitle title: String!) -> NSMenu!
  func setJavaMenuDelegate(_ delegate: JRSMenuDelegate!)
  func isJavaMenu() -> Bool
}
