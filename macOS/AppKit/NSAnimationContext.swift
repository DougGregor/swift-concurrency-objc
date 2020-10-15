
@available(macOS 10.5, *)
class NSAnimationContext : NSObject {
  @available(macOS 10.7, *)
  class func runAnimationGroup(_ changes: (NSAnimationContext) -> Void, completionHandler: (() -> Void)? = nil)
  @available(macOS 10.12, *)
  class func runAnimationGroup(_ changes: (NSAnimationContext) -> Void)
  class func beginGrouping()
  class func endGrouping()
  class var current: NSAnimationContext { get }
  var duration: TimeInterval
  @available(macOS 10.7, *)
  var timingFunction: CAMediaTimingFunction?
  @available(macOS 10.7, *)
  var completionHandler: (() -> Void)?
  @available(macOS 10.8, *)
  var allowsImplicitAnimation: Bool
}
