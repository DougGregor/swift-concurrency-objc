
@available(watchOS 6.0, *)
class MKMultiPolygon : MKShape, MKOverlay {
  init(_ polygons: [MKPolygon])
  var polygons: [MKPolygon] { get }
}
