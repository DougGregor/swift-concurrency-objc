
@available(macOS 10.15, *)
class MKMultiPolyline : MKShape, MKOverlay {
  init(_ polylines: [MKPolyline])
  var polylines: [MKPolyline] { get }
}
