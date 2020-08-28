
@available(macOS 10.12.2, *)
class NSPopoverTouchBarItem : NSTouchBarItem {
  var popoverTouchBar: NSTouchBar
  var collapsedRepresentation: NSView
  var collapsedRepresentationImage: NSImage?
  var collapsedRepresentationLabel: String
  var pressAndHoldTouchBar: NSTouchBar?
  var showsCloseButton: Bool
  func showPopover(_ sender: Any?)
  func dismissPopover(_ sender: Any?)
  func makeStandardActivatePopoverGestureRecognizer() -> NSGestureRecognizer
}
