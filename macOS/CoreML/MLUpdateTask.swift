
@available(macOS 10.15, *)
class MLUpdateTask : MLTask {
  convenience init(forModelAt modelURL: URL, trainingData: MLBatchProvider, configuration: MLModelConfiguration?, completionHandler: @escaping (MLUpdateContext) -> Void) throws
  @available(macOS 11.0, *)
  convenience init(forModelAt modelURL: URL, trainingData: MLBatchProvider, completionHandler: @escaping (MLUpdateContext) -> Void) throws
  convenience init(forModelAt modelURL: URL, trainingData: MLBatchProvider, configuration: MLModelConfiguration?, progressHandlers: MLUpdateProgressHandlers) throws
  @available(macOS 11.0, *)
  convenience init(forModelAt modelURL: URL, trainingData: MLBatchProvider, progressHandlers: MLUpdateProgressHandlers) throws
  func resume(withParameters updateParameters: [MLParameterKey : Any])
}
