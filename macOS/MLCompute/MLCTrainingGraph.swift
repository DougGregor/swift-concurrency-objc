
@available(macOS 11.0, *)
class MLCTrainingGraph : MLCGraph {
  var optimizer: MLCOptimizer? { get }
  var deviceMemorySize: Int { get }
  convenience init(graphObjects: [MLCGraph], lossLayer: MLCLayer?, optimizer: MLCOptimizer?)
  func addInputs(_ inputs: [String : MLCTensor], lossLabels: [String : MLCTensor]?) -> Bool
  func addInputs(_ inputs: [String : MLCTensor], lossLabels: [String : MLCTensor]?, lossLabelWeights: [String : MLCTensor]?) -> Bool
  func addOutputs(_ outputs: [String : MLCTensor]) -> Bool
  func stopGradient(for tensors: [MLCTensor]) -> Bool
  func compile(options: MLCGraphCompilationOptions = [], device: MLCDevice) -> Bool
  func compileOptimizer(_ optimizer: MLCOptimizer) -> Bool
  func link(with graphs: [MLCTrainingGraph]) -> Bool
  func gradientTensor(forInput input: MLCTensor) -> MLCTensor?
  func sourceGradientTensors(for layer: MLCLayer) -> [MLCTensor]
  func resultGradientTensors(for layer: MLCLayer) -> [MLCTensor]
  func gradientData(forParameter parameter: MLCTensor, layer: MLCLayer) -> Data?
  func allocateUserGradient(for tensor: MLCTensor) -> MLCTensor?
  func execute(inputsData: [String : MLCTensorData], lossLabelsData: [String : MLCTensorData]?, lossLabelWeightsData: [String : MLCTensorData]?, batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func execute(inputsData: [String : MLCTensorData], lossLabelsData: [String : MLCTensorData]?, lossLabelWeightsData: [String : MLCTensorData]?, outputsData: [String : MLCTensorData]?, batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func executeForward(batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func executeForward(batchSize: Int, options: MLCExecutionOptions = [], outputsData: [String : MLCTensorData]?, completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func executeGradient(batchSize: Int, options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func executeGradient(batchSize: Int, options: MLCExecutionOptions = [], outputsData: [String : MLCTensorData]?, completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func executeOptimizerUpdate(options: MLCExecutionOptions = [], completionHandler: MLCGraphCompletionHandler? = nil) -> Bool
  func synchronizeUpdates()
  func setTrainingTensorParameters(_ parameters: [MLCTensorParameter]) -> Bool
}
