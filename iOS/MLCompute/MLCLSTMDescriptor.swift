
@available(iOS 14.0, *)
class MLCLSTMDescriptor : NSObject, NSCopying {
  var inputSize: Int { get }
  var hiddenSize: Int { get }
  var layerCount: Int { get }
  var usesBiases: Bool { get }
  var batchFirst: Bool { get }
  var isBidirectional: Bool { get }
  var returnsSequences: Bool { get }
  var dropout: Float { get }
  var resultMode: MLCLSTMResultMode { get }
  convenience init(inputSize: Int, hiddenSize: Int, layerCount: Int)
  convenience init(inputSize: Int, hiddenSize: Int, layerCount: Int, usesBiases: Bool, isBidirectional: Bool, dropout: Float)
  convenience init(inputSize: Int, hiddenSize: Int, layerCount: Int, usesBiases: Bool, batchFirst: Bool, isBidirectional: Bool, dropout: Float)
  convenience init(inputSize: Int, hiddenSize: Int, layerCount: Int, usesBiases: Bool, batchFirst: Bool, isBidirectional: Bool, returnsSequences: Bool, dropout: Float)
  convenience init(inputSize: Int, hiddenSize: Int, layerCount: Int, usesBiases: Bool, batchFirst: Bool, isBidirectional: Bool, returnsSequences: Bool, dropout: Float, resultMode: MLCLSTMResultMode)
}
