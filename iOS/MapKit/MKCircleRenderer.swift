
@available(iOS 7.0, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  @available(iOS 14.0, *)
  var strokeStart: CGFloat
  @available(iOS 14.0, *)
  var strokeEnd: CGFloat
}
