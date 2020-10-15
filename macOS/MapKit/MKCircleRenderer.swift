
@available(macOS 10.9, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  @available(macOS 11.0, *)
  var strokeStart: CGFloat
  @available(macOS 11.0, *)
  var strokeEnd: CGFloat
}
