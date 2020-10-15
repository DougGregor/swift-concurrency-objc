
@available(macOS 10.15, *)
class VNClassifyImageRequest : VNImageBasedRequest {
  class func knownClassifications(forRevision requestRevision: Int) throws -> [VNClassificationObservation]
}
@available(macOS 10.15, *)
let VNClassifyImageRequestRevision1: Int
