
@available(iOS 13.0, *)
class MKMultiPolyline : MKShape, MKOverlay {
  init(_ polylines: [MKPolyline])
  var polylines: [MKPolyline] { get }
}
