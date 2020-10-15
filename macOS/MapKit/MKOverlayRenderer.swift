
@available(macOS 10.9, *)
class MKOverlayRenderer : NSObject {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func point(for mapPoint: MKMapPoint) -> CGPoint
  func mapPoint(for point: CGPoint) -> MKMapPoint
  func rect(for mapRect: MKMapRect) -> CGRect
  func mapRect(for rect: CGRect) -> MKMapRect
  func canDraw(_ mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func draw(_ mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplay(_ mapRect: MKMapRect)
  func setNeedsDisplay(_ mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
}
@available(macOS 10.9, *)
func MKRoadWidthAtZoomScale(_ zoomScale: MKZoomScale) -> CGFloat
