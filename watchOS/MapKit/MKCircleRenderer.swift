
@available(watchOS 2.0, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  @available(watchOS 7.0, *)
  var strokeStart: CGFloat
  @available(watchOS 7.0, *)
  var strokeEnd: CGFloat
}
