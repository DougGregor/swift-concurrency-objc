
@available(macOS 10.13, *)
class MLModelDescription : NSObject, NSSecureCoding {
  var inputDescriptionsByName: [String : MLFeatureDescription] { get }
  var outputDescriptionsByName: [String : MLFeatureDescription] { get }
  var predictedFeatureName: String? { get }
  var predictedProbabilitiesName: String? { get }
  var metadata: [MLModelMetadataKey : Any] { get }
  @available(macOS 11.0, *)
  var classLabels: [Any]? { get }
}
@available(macOS 10.15, *)
extension MLModelDescription {
  var isUpdatable: Bool { get }
  var trainingInputDescriptionsByName: [String : MLFeatureDescription] { get }
}
@available(macOS 10.15, *)
extension MLModelDescription {
  var parameterDescriptionsByKey: [MLParameterKey : MLParameterDescription] { get }
}
