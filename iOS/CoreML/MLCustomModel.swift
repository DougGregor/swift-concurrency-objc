
@available(iOS 12.0, *)
protocol MLCustomModel {
  init(modelDescription: MLModelDescription, parameters: [String : Any]) throws
  func prediction(from input: MLFeatureProvider, options: MLPredictionOptions) throws -> MLFeatureProvider
  optional func predictions(from inputBatch: MLBatchProvider, options: MLPredictionOptions) throws -> MLBatchProvider
}
