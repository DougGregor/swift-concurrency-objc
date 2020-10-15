
@available(tvOS 13.0, *)
protocol MKGeoJSONObject : NSObjectProtocol {
}
@available(tvOS 13.0, *)
class MKGeoJSONDecoder : NSObject {
  func decode(_ data: Data) throws -> [MKGeoJSONObject]
}
@available(tvOS 13.0, *)
class MKGeoJSONFeature : NSObject, MKGeoJSONObject {
  var identifier: String? { get }
  var properties: Data? { get }
  var geometry: [MKShape & MKGeoJSONObject] { get }
}
@available(tvOS 13.0, *)
extension MKPointAnnotation : MKGeoJSONObject {
}
@available(tvOS 13.0, *)
extension MKMultiPoint : MKGeoJSONObject {
}
@available(tvOS 13.0, *)
extension MKMultiPolyline : MKGeoJSONObject {
}
@available(tvOS 13.0, *)
extension MKMultiPolygon : MKGeoJSONObject {
}
@available(tvOS 13.0, *)
extension MKPolyline : MKGeoJSONObject {
}
@available(tvOS 13.0, *)
extension MKPolygon : MKGeoJSONObject {
}
