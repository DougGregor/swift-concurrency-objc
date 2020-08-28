
@available(macOS 10.9, *)
protocol MKOverlay : MKAnnotation {
  var boundingMapRect: MKMapRect { get }
  optional func intersects(_ mapRect: MKMapRect) -> Bool
  @available(macOS 10.9, *)
  optional func canReplaceMapContent() -> Bool
}
