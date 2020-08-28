
@available(iOS 7.0, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  @available(iOS 14.0, *)
  var strokeStart: CGFloat
  @available(iOS 14.0, *)
  var strokeEnd: CGFloat
}
