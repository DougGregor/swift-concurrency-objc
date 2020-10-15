
@available(macOS 10.0, *)
class NSShadow : NSObject, NSCopying, NSSecureCoding {
  var shadowOffset: NSSize
  var shadowBlurRadius: CGFloat
  @NSCopying var shadowColor: NSColor?
  func set()
}
