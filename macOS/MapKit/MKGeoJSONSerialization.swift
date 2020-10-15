
@available(macOS 10.15, *)
protocol MKGeoJSONObject : NSObjectProtocol {
}
@available(macOS 10.15, *)
class MKGeoJSONDecoder : NSObject {
  func decode(_ data: Data) throws -> [MKGeoJSONObject]
}
@available(macOS 10.15, *)
class MKGeoJSONFeature : NSObject, MKGeoJSONObject {
  var identifier: String? { get }
  var properties: Data? { get }
  var geometry: [MKShape & MKGeoJSONObject] { get }
}
@available(macOS 10.15, *)
extension MKPointAnnotation : MKGeoJSONObject {
}
@available(macOS 10.15, *)
extension MKMultiPoint : MKGeoJSONObject {
}
@available(macOS 10.15, *)
extension MKMultiPolyline : MKGeoJSONObject {
}
@available(macOS 10.15, *)
extension MKMultiPolygon : MKGeoJSONObject {
}
@available(macOS 10.15, *)
extension MKPolyline : MKGeoJSONObject {
}
@available(macOS 10.15, *)
extension MKPolygon : MKGeoJSONObject {
}
