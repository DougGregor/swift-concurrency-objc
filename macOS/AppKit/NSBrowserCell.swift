
class NSBrowserCell : NSCell {
  class var branchImage: NSImage? { get }
  class var highlightedBranchImage: NSImage? { get }
  func highlightColor(in controlView: NSView) -> NSColor?
  var isLeaf: Bool
  var isLoaded: Bool
  func reset()
  func set()
  var alternateImage: NSImage?
}
