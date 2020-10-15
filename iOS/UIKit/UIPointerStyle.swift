
@available(iOS 13.4, *)
class UIPointerStyle : NSObject, NSCopying {
  convenience init(__effect effect: __UIPointerEffect, shape: __UIPointerShape?)
  convenience init(__shape shape: __UIPointerShape, constrainedAxes axes: UIAxis)
  class func hidden() -> Self
}

@available(iOS 13.4, *)
extension UIPointerStyle {
  convenience init(effect: UIPointerEffect, shape: UIPointerShape? = nil)
  convenience init(shape: UIPointerShape, constrainedAxes: UIAxis = [])
}
@available(iOS 13.4, *)
class __UIPointerEffect : NSObject, NSCopying {
  @NSCopying var preview: UITargetedPreview { get }
  convenience init(preview: UITargetedPreview)
}
@available(iOS 13.4, *)
class __UIPointerHighlightEffect : __UIPointerEffect {
}
@available(iOS 13.4, *)
class __UIPointerLiftEffect : __UIPointerEffect {
}
@available(iOS 13.4, *)
enum __UIPointerEffectTintMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case overlay
  case underlay
}
@available(iOS 13.4, *)
class __UIPointerHoverEffect : __UIPointerEffect {
  var preferredTintMode: __UIPointerEffectTintMode
  var prefersShadow: Bool
  var prefersScaledContent: Bool
}
@available(iOS 13.4, *)
class __UIPointerShape : NSObject, NSCopying {
  convenience init(path: UIBezierPath)
  convenience init(roundedRect rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  class func beam(withPreferredLength length: CGFloat, axis: UIAxis) -> Self
}
