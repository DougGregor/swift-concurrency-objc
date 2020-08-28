
@available(macOS 10.15, *)
class SNClassifySoundRequest : NSObject, SNRequest {
  var overlapFactor: Double
  init(mlModel: MLModel) throws
}
