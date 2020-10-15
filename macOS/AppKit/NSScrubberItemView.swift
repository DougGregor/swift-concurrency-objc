
@available(macOS 10.12.2, *)
class NSScrubberArrangedView : NSView {
  var isSelected: Bool
  var isHighlighted: Bool
  func apply(_ layoutAttributes: NSScrubberLayoutAttributes)
}
@available(macOS 10.12.2, *)
class NSScrubberSelectionView : NSScrubberArrangedView {
}
@available(macOS 10.12.2, *)
class NSScrubberItemView : NSScrubberArrangedView {
}
@available(macOS 10.12.2, *)
class NSScrubberTextItemView : NSScrubberItemView {
  var textField: NSTextField { get }
  var title: String
}
@available(macOS 10.12.2, *)
class NSScrubberImageItemView : NSScrubberItemView {
  var imageView: NSImageView { get }
  @NSCopying var image: NSImage
  var imageAlignment: NSImageAlignment
}
