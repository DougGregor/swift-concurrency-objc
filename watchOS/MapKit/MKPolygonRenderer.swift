
@available(watchOS 2.0, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  @available(watchOS 7.0, *)
  var strokeStart: CGFloat
  @available(watchOS 7.0, *)
  var strokeEnd: CGFloat
}
