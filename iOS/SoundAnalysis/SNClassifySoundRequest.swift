
@available(iOS 13.0, *)
class SNClassifySoundRequest : NSObject, SNRequest {
  var overlapFactor: Double
  init(mlModel: MLModel) throws
}
