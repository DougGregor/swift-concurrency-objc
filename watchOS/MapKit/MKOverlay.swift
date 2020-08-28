
@available(watchOS 2.0, *)
protocol MKOverlay : MKAnnotation {
  var boundingMapRect: MKMapRect { get }
  optional func intersects(_ mapRect: MKMapRect) -> Bool
  @available(watchOS 2.0, *)
  optional func canReplaceMapContent() -> Bool
}
