
@available(macOS 10.15, *)
class MKMultiPolygonRenderer : MKOverlayPathRenderer {
  init(multiPolygon: MKMultiPolygon)
  var multiPolygon: MKMultiPolygon { get }
}
