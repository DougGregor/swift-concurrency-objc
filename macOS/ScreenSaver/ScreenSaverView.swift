
class ScreenSaverView : NSView {
  class func backingStoreType() -> NSWindow.BackingStoreType
  class func performGammaFade() -> Bool
  init?(frame: NSRect, isPreview: Bool)
  var animationTimeInterval: TimeInterval
  func startAnimation()
  func stopAnimation()
  var isAnimating: Bool { get }
  func animateOneFrame()
  var hasConfigureSheet: Bool { get }
  var configureSheet: NSWindow? { get }
  var isPreview: Bool { get }
}
func SSRandomIntBetween(_ a: Int32, _ b: Int32) -> Int32
func SSRandomFloatBetween(_ a: CGFloat, _ b: CGFloat) -> CGFloat
func SSRandomPointForSizeWithinRect(_ size: NSSize, _ rect: NSRect) -> NSPoint
func SSCenteredRectInRect(_ innerRect: NSRect, _ outerRect: NSRect) -> NSRect
