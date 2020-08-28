
@available(iOS 12.0, *)
class MLArrayBatchProvider : NSObject, MLBatchProvider {
  var array: [MLFeatureProvider] { get }
  init(array: [MLFeatureProvider])
  init(dictionary: [String : [Any]]) throws
}
