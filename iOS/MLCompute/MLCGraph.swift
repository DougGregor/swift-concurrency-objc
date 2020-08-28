
@available(iOS 14.0, *)
class MLCGraph : NSObject {
  var device: MLCDevice? { get }
  var layers: [MLCLayer] { get }
  var summarizedDOTDescription: String { get }
  func node(with layer: MLCLayer, source: MLCTensor) -> MLCTensor?
  func node(with layer: MLCLayer, sources: [MLCTensor]) -> MLCTensor?
  func node(with layer: MLCLayer, sources: [MLCTensor], disableUpdate: Bool) -> MLCTensor?
  func node(with layer: MLCLayer, sources: [MLCTensor], lossLabels: [MLCTensor]) -> MLCTensor?
  func split(source: MLCTensor, splitCount: Int, dimension: Int) -> [MLCTensor]?
  func __split(withSource source: MLCTensor, splitSectionLengths: [NSNumber], dimension: Int) -> [MLCTensor]?
  func concatenate(sources: [MLCTensor], dimension: Int) -> MLCTensor?
  func __reshape(withShape shape: [NSNumber], source: MLCTensor) -> MLCTensor?
  func __transpose(withDimensions dimensions: [NSNumber], source: MLCTensor) -> MLCTensor?
  func bindAndWriteData(_ inputsData: [String : MLCTensorData], forInputs inputTensors: [String : MLCTensor], to device: MLCDevice, batchSize: Int, synchronous: Bool) -> Bool
  func bindAndWriteData(_ inputsData: [String : MLCTensorData], forInputs inputTensors: [String : MLCTensor], to device: MLCDevice, synchronous: Bool) -> Bool
  func sourceTensors(for layer: MLCLayer) -> [MLCTensor]
  func resultTensors(for layer: MLCLayer) -> [MLCTensor]
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCGraph {
  @inlinable func split(source: MLCTensor, splitSectionLengths: [Int], dimension: Int) -> [MLCTensor]?
  @inlinable func reshape(shape: [Int], source: MLCTensor) -> MLCTensor?
  @inlinable func transpose(dimensions: [Int], source: MLCTensor) -> MLCTensor?
}
