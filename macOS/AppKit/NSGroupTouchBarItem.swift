
@available(macOS 10.12.2, *)
class NSGroupTouchBarItem : NSTouchBarItem {
  convenience init(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem])
  @available(macOS 10.13, *)
  convenience init(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem], allowedCompressionOptions: NSUserInterfaceCompressionOptions)
  @available(macOS 10.13, *)
  convenience init(alertStyleWithIdentifier identifier: NSTouchBarItem.Identifier)
  var groupTouchBar: NSTouchBar
  @available(macOS 10.13, *)
  var groupUserInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  @available(macOS 10.13, *)
  var prefersEqualWidths: Bool
  @available(macOS 10.13, *)
  var preferredItemWidth: CGFloat
  @available(macOS 10.13, *)
  var effectiveCompressionOptions: NSUserInterfaceCompressionOptions { get }
  @available(macOS 10.13, *)
  var prioritizedCompressionOptions: [NSUserInterfaceCompressionOptions]
}
