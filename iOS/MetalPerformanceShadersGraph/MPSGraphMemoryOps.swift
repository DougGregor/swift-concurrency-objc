
@available(iOS 14.0, *)
class MPSGraphVariableOp : MPSGraphOperation {
  var shape: [NSNumber] { get }
  var dataType: MPSDataType { get }
}
@available(iOS 14.0, *)
extension MPSGraph {
  func placeholder(shape: [NSNumber]?, dataType: MPSDataType, name: String?) -> MPSGraphTensor
  func placeholder(shape: [NSNumber]?, name: String?) -> MPSGraphTensor
  func constant(_ data: Data, shape: [NSNumber], dataType: MPSDataType) -> MPSGraphTensor
  func constant(_ scalar: Double, dataType: MPSDataType) -> MPSGraphTensor
  func constant(_ scalar: Double, shape: [NSNumber], dataType: MPSDataType) -> MPSGraphTensor
  func variable(with data: Data, shape: [NSNumber], dataType: MPSDataType, name: String?) -> MPSGraphTensor
  func read(_ variable: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func assign(_ variable: MPSGraphTensor, tensor: MPSGraphTensor, name: String?) -> MPSGraphOperation
}
