
@available(macOS 10.15, *)
class MKMultiPolygon : MKShape, MKOverlay {
  init(_ polygons: [MKPolygon])
  var polygons: [MKPolygon] { get }
}
