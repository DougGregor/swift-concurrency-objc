
@available(iOS 12.0, *)
protocol MLBatchProvider {
  var count: Int { get }
  func features(at index: Int) -> MLFeatureProvider
}
