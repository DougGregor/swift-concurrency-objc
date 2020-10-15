
@available(macOS, introduced: 10.3, deprecated: 10.14)
class WebFrameView : NSView {
  var documentView: (NSView & WebDocumentView)! { get }
  var allowsScrolling: Bool
  var canPrintHeadersAndFooters: Bool { get }
  func printOperation(with printInfo: NSPrintInfo!) -> NSPrintOperation!
  var documentViewShouldHandlePrint: Bool { get }
  func printDocumentView()
}
