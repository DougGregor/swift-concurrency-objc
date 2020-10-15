
@available(macOS 10.13, *)
protocol MLFeatureProvider {
  var featureNames: Set<String> { get }
  func featureValue(for featureName: String) -> MLFeatureValue?
}
