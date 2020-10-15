
@available(tvOS 14.0, *)
class MLCInferenceGraph : MLCGraph {
  var deviceMemorySize: Int { get }
  convenience init(graphObjects: [MLCGraph])
  func addInputs(_ inputs: [String : MLCTensor]) -> Bool
  func addInputs(_ inputs: [String : MLCTensor], lossLabels: [String : MLCTensor]?, lossLabelWeights: [String : MLCTensor]?) -> Bool
  func addOutputs(_ outputs: [String : MLCTensor]) -> Bool
  func compile(options: MLCGraphCompilationOptions = [], device: MLCDevice) -> Bool
  func link(with graphs: [MLCInferenceGraph]) -> Bool
  func execute(inputsData: [String : MLCTensorData], batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func execute(inputsData: [String : MLCTensorData], outputsData: [String : MLCTensorData]?, batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func execute(inputsData: [String : MLCTensorData], lossLabelsData: [String : MLCTensorData]?, lossLabelWeightsData: [String : MLCTensorData]?, batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func execute(inputsData: [String : MLCTensorData], lossLabelsData: [String : MLCTensorData]?, lossLabelWeightsData: [String : MLCTensorData]?, outputsData: [String : MLCTensorData]?, batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  convenience init()
}
