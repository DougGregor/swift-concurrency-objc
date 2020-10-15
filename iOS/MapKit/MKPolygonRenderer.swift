
@available(iOS 7.0, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  @available(iOS 14.0, *)
  var strokeStart: CGFloat
  @available(iOS 14.0, *)
  var strokeEnd: CGFloat
}
