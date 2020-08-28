
@available(iOS 13.0, *)
protocol MKGeoJSONObject : NSObjectProtocol {
}
@available(iOS 13.0, *)
class MKGeoJSONDecoder : NSObject {
  func decode(_ data: Data) throws -> [MKGeoJSONObject]
}
@available(iOS 13.0, *)
class MKGeoJSONFeature : NSObject, MKGeoJSONObject {
  var identifier: String? { get }
  var properties: Data? { get }
  var geometry: [MKShape & MKGeoJSONObject] { get }
}
@available(iOS 13.0, *)
extension MKPointAnnotation : MKGeoJSONObject {
}
@available(iOS 13.0, *)
extension MKMultiPoint : MKGeoJSONObject {
}
@available(iOS 13.0, *)
extension MKMultiPolyline : MKGeoJSONObject {
}
@available(iOS 13.0, *)
extension MKMultiPolygon : MKGeoJSONObject {
}
@available(iOS 13.0, *)
extension MKPolyline : MKGeoJSONObject {
}
@available(iOS 13.0, *)
extension MKPolygon : MKGeoJSONObject {
}
