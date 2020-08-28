
@available(macOS 10.9, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  @available(macOS 11.0, *)
  var strokeStart: CGFloat
  @available(macOS 11.0, *)
  var strokeEnd: CGFloat
}
