
@available(watchOS 6.0, *)
class SNClassifySoundRequest : NSObject, SNRequest {
  var overlapFactor: Double
  init(mlModel: MLModel) throws
}
