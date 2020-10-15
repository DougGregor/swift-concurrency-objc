
@available(macOS 10.13, *)
class MLDictionaryFeatureProvider : NSObject, MLFeatureProvider, NSFastEnumeration, NSSecureCoding {
  var dictionary: [String : MLFeatureValue] { get }
  init(dictionary: [String : Any]) throws
  subscript(featureName: String) -> MLFeatureValue? { get }
}
