
@available(macOS 10.9, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  @available(macOS 11.0, *)
  var strokeStart: CGFloat
  @available(macOS 11.0, *)
  var strokeEnd: CGFloat
}
