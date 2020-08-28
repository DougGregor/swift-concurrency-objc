
@available(iOS 11.0, *)
protocol MLFeatureProvider {
  var featureNames: Set<String> { get }
  func featureValue(for featureName: String) -> MLFeatureValue?
}
