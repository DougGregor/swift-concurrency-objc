
@available(tvOS 12.0, *)
class UIFocusMovementHint : NSObject, NSCopying {
  var movementDirection: CGVector { get }
  var perspectiveTransform: CATransform3D { get }
  var rotation: CGVector { get }
  var translation: CGVector { get }
  var interactionTransform: CATransform3D { get }
}
