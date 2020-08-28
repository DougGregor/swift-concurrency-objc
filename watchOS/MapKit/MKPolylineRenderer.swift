
@available(watchOS 2.0, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  @available(watchOS 7.0, *)
  var strokeStart: CGFloat
  @available(watchOS 7.0, *)
  var strokeEnd: CGFloat
}
