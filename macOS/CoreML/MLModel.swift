
@available(macOS 10.13, *)
class MLModel : NSObject {
  var modelDescription: MLModelDescription { get }
  @available(macOS 10.14, *)
  var configuration: MLModelConfiguration { get }
  convenience init(contentsOf url: URL) throws
  @available(macOS 10.14, *)
  convenience init(contentsOf url: URL, configuration: MLModelConfiguration) throws
  @available(macOS 11.0, *)
  class func __loadContents(of url: URL, configuration: MLModelConfiguration, completionHandler handler: @escaping (MLModel?, Error?) -> Void)
  func prediction(from input: MLFeatureProvider) throws -> MLFeatureProvider
  func prediction(from input: MLFeatureProvider, options: MLPredictionOptions) throws -> MLFeatureProvider
  @available(macOS 10.14, *)
  func predictions(fromBatch inputBatch: MLBatchProvider) throws -> MLBatchProvider
  @available(macOS 10.14, *)
  func predictions(from inputBatch: MLBatchProvider, options: MLPredictionOptions) throws -> MLBatchProvider
  @available(macOS 10.15, *)
  func parameterValue(for key: MLParameterKey) throws -> Any
}

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension MLModel {
  class func load(contentsOf url: URL, configuration: MLModelConfiguration = MLModelConfiguration(), completionHandler handler: @escaping (Result<MLModel, Error>) -> ())
}
