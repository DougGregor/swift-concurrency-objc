
@available(watchOS 4.0, *)
class MLModel : NSObject {
  var modelDescription: MLModelDescription { get }
  @available(watchOS 5.0, *)
  var configuration: MLModelConfiguration { get }
  convenience init(contentsOf url: URL) throws
  @available(watchOS 5.0, *)
  convenience init(contentsOf url: URL, configuration: MLModelConfiguration) throws
  @available(watchOS 7.0, *)
  class func __loadContents(of url: URL, configuration: MLModelConfiguration, completionHandler handler: @escaping (MLModel?, Error?) -> Void)
  func prediction(from input: MLFeatureProvider) throws -> MLFeatureProvider
  func prediction(from input: MLFeatureProvider, options: MLPredictionOptions) throws -> MLFeatureProvider
  @available(watchOS 5.0, *)
  func predictions(fromBatch inputBatch: MLBatchProvider) throws -> MLBatchProvider
  @available(watchOS 5.0, *)
  func predictions(from inputBatch: MLBatchProvider, options: MLPredictionOptions) throws -> MLBatchProvider
  @available(watchOS 6.0, *)
  func parameterValue(for key: MLParameterKey) throws -> Any
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension MLModel {
  class func load(contentsOf url: URL, configuration: MLModelConfiguration = MLModelConfiguration(), completionHandler handler: @escaping (Result<MLModel, Error>) -> ())
}
