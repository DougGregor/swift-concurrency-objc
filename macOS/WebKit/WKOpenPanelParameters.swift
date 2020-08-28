
@available(macOS 10.12, *)
class WKOpenPanelParameters : NSObject {
  var allowsMultipleSelection: Bool { get }
  @available(macOS 10.13.4, *)
  var allowsDirectories: Bool { get }
}
