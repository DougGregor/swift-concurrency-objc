
@available(tvOS 9.2, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  @available(tvOS 14.0, *)
  var strokeStart: CGFloat
  @available(tvOS 14.0, *)
  var strokeEnd: CGFloat
}
