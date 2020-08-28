
@available(tvOS 9.2, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  @available(tvOS 14.0, *)
  var strokeStart: CGFloat
  @available(tvOS 14.0, *)
  var strokeEnd: CGFloat
}
