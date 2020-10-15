
@available(tvOS 13.0, *)
class VNClassifyImageRequest : VNImageBasedRequest {
  class func knownClassifications(forRevision requestRevision: Int) throws -> [VNClassificationObservation]
}
@available(tvOS 13.0, *)
let VNClassifyImageRequestRevision1: Int
