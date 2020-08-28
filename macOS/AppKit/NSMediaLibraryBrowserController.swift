
extension NSMediaLibraryBrowserController {
  @available(macOS 10.9, *)
  struct Library : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var audio: NSMediaLibraryBrowserController.Library { get }
    static var image: NSMediaLibraryBrowserController.Library { get }
    static var movie: NSMediaLibraryBrowserController.Library { get }
  }
}
@available(macOS 10.9, *)
class NSMediaLibraryBrowserController : NSObject {
  var isVisible: Bool
  var frame: NSRect
  var mediaLibraries: NSMediaLibraryBrowserController.Library
  class var shared: NSMediaLibraryBrowserController { get }
  @IBAction func togglePanel(_ sender: Any?)
}
