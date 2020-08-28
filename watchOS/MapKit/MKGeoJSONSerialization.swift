
@available(watchOS 6.0, *)
protocol MKGeoJSONObject : NSObjectProtocol {
}
@available(watchOS 6.0, *)
class MKGeoJSONDecoder : NSObject {
  func decode(_ data: Data) throws -> [MKGeoJSONObject]
}
@available(watchOS 6.0, *)
class MKGeoJSONFeature : NSObject, MKGeoJSONObject {
  var identifier: String? { get }
  var properties: Data? { get }
  var geometry: [MKShape & MKGeoJSONObject] { get }
}
@available(watchOS 6.0, *)
extension MKPointAnnotation : MKGeoJSONObject {
}
@available(watchOS 6.0, *)
extension MKMultiPoint : MKGeoJSONObject {
}
@available(watchOS 6.0, *)
extension MKMultiPolyline : MKGeoJSONObject {
}
@available(watchOS 6.0, *)
extension MKMultiPolygon : MKGeoJSONObject {
}
@available(watchOS 6.0, *)
extension MKPolyline : MKGeoJSONObject {
}
@available(watchOS 6.0, *)
extension MKPolygon : MKGeoJSONObject {
}
