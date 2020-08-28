
@available(tvOS 9.2, *)
protocol MKOverlay : MKAnnotation {
  var boundingMapRect: MKMapRect { get }
  optional func intersects(_ mapRect: MKMapRect) -> Bool
  @available(tvOS 7.0, *)
  optional func canReplaceMapContent() -> Bool
}
