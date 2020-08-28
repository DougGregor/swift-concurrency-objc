
class NSScreen : NSObject {
  class var screens: [NSScreen] { get }
  class var main: NSScreen? { get }
  class var deepest: NSScreen? { get }
  @available(macOS 10.9, *)
  class var screensHaveSeparateSpaces: Bool { get }
  var depth: NSWindow.Depth { get }
  var frame: NSRect { get }
  var visibleFrame: NSRect { get }
  var deviceDescription: [NSDeviceDescriptionKey : Any] { get }
  @available(macOS 10.6, *)
  var colorSpace: NSColorSpace? { get }
  var supportedWindowDepths: UnsafePointer<NSWindow.Depth> { get }
  @available(macOS 10.12, *)
  func canRepresent(_ displayGamut: NSDisplayGamut) -> Bool
  @available(macOS 10.7, *)
  func convertRectToBacking(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func convertRectFromBacking(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func backingAlignedRect(_ rect: NSRect, options: AlignmentOptions = []) -> NSRect
  @available(macOS 10.7, *)
  var backingScaleFactor: CGFloat { get }
  @available(macOS 10.15, *)
  var localizedName: String { get }
}
extension NSScreen {
  @available(macOS 10.6, *)
  class let colorSpaceDidChangeNotification: NSNotification.Name
}
extension NSScreen {
  @available(macOS 10.11, *)
  var maximumExtendedDynamicRangeColorComponentValue: CGFloat { get }
  @available(macOS 10.15, *)
  var maximumPotentialExtendedDynamicRangeColorComponentValue: CGFloat { get }
  @available(macOS 10.15, *)
  var maximumReferenceExtendedDynamicRangeColorComponentValue: CGFloat { get }
}
extension NSScreen {
}
