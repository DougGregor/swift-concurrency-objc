
@available(watchOS 6.0, *)
class MKMultiPolyline : MKShape, MKOverlay {
  init(_ polylines: [MKPolyline])
  var polylines: [MKPolyline] { get }
}
