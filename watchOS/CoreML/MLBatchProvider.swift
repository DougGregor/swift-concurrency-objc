
@available(watchOS 5.0, *)
protocol MLBatchProvider {
  var count: Int { get }
  func features(at index: Int) -> MLFeatureProvider
}
