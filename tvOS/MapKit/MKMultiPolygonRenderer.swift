
@available(tvOS 13.0, *)
class MKMultiPolygonRenderer : MKOverlayPathRenderer {
  init(multiPolygon: MKMultiPolygon)
  var multiPolygon: MKMultiPolygon { get }
}
