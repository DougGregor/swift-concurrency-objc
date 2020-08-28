
@available(tvOS 9.2, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  @available(tvOS 14.0, *)
  var strokeStart: CGFloat
  @available(tvOS 14.0, *)
  var strokeEnd: CGFloat
}
