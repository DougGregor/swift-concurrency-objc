
@available(macOS 10.14, *)
protocol MLBatchProvider {
  var count: Int { get }
  func features(at index: Int) -> MLFeatureProvider
}
