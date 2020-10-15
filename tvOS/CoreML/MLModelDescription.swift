
@available(tvOS 11.0, *)
class MLModelDescription : NSObject, NSSecureCoding {
  var inputDescriptionsByName: [String : MLFeatureDescription] { get }
  var outputDescriptionsByName: [String : MLFeatureDescription] { get }
  var predictedFeatureName: String? { get }
  var predictedProbabilitiesName: String? { get }
  var metadata: [MLModelMetadataKey : Any] { get }
  @available(tvOS 14.0, *)
  var classLabels: [Any]? { get }
}
@available(tvOS 14.0, *)
extension MLModelDescription {
  var isUpdatable: Bool { get }
  var trainingInputDescriptionsByName: [String : MLFeatureDescription] { get }
}
@available(tvOS 14.0, *)
extension MLModelDescription {
  var parameterDescriptionsByKey: [MLParameterKey : MLParameterDescription] { get }
}
