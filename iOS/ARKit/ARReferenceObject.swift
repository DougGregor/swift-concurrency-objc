
extension ARReferenceObject {
  @available(iOS 12.0, *)
  class let archiveExtension: String
}
@available(iOS 12.0, *)
class ARReferenceObject : NSObject, NSSecureCoding {
  var name: String?
  var center: simd_float3 { get }
  var extent: simd_float3 { get }
  var scale: simd_float3 { get }
  @available(iOS 13.0, *)
  var resourceGroupName: String? { get }
  var rawFeaturePoints: ARPointCloud { get }
  class func referenceObjects(inGroupNamed name: String, bundle: Bundle?) -> Set<ARReferenceObject>?
  init(archiveURL url: URL) throws
  func export(to url: URL, previewImage: UIImage?) throws
  func applyingTransform(_ transform: simd_float4x4) -> ARReferenceObject
  func merging(_ object: ARReferenceObject) throws -> ARReferenceObject
}
