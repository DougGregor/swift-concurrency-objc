
@available(iOS 11.2, *)
protocol MLCustomLayer {
  init(parameters: [String : Any]) throws
  func setWeightData(_ weights: [Data]) throws
  func outputShapes(forInputShapes inputShapes: [[NSNumber]]) throws -> [[NSNumber]]
  func evaluate(inputs: [MLMultiArray], outputs: [MLMultiArray]) throws
  optional func encode(commandBuffer: MTLCommandBuffer, inputs: [MTLTexture], outputs: [MTLTexture]) throws
}
