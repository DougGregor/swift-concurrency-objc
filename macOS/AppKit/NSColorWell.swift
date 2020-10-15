
class NSColorWell : NSControl {
  func deactivate()
  func activate(_ exclusive: Bool)
  var isActive: Bool { get }
  func drawWell(inside insideRect: NSRect)
  var isBordered: Bool
  func takeColorFrom(_ sender: Any?)
  @NSCopying var color: NSColor
}
