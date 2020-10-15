
@available(iOS 13.0, *)
class MKMultiPolygon : MKShape, MKOverlay {
  init(_ polygons: [MKPolygon])
  var polygons: [MKPolygon] { get }
}
