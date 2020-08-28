
extension NSObject {
  class func webPlugInContainerLoad(_ request: URLRequest!, inFrame target: String!)
  func webPlugInContainerLoad(_ request: URLRequest!, inFrame target: String!)
  class func webPlugInContainerShowStatus(_ message: String!)
  func webPlugInContainerShowStatus(_ message: String!)
  var webPlugInContainerSelectionColor: NSColor! { get }
  var webFrame: WebFrame! { get }
  class func webPlugInContainerSelectionColor() -> NSColor!
  class func webFrame() -> WebFrame!
}
