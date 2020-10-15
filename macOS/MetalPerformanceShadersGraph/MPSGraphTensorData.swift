
@available(macOS 11.0, *)
class MPSGraphTensorData : NSObject {
  var shape: [NSNumber] { get }
  var dataType: MPSDataType { get }
  var device: MPSGraphDevice { get }
  init(device: MPSGraphDevice, data: Data, shape: [NSNumber], dataType: MPSDataType)
  init(_ buffer: MTLBuffer, shape: [NSNumber], dataType: MPSDataType)
  init(_ matrix: MPSMatrix)
  init(_ matrix: MPSMatrix, rank: Int)
  init(_ vector: MPSVector)
  init(_ vector: MPSVector, rank: Int)
  init(_ ndarray: MPSNDArray)
  init(_ imageBatch: [MPSImage])
  func mpsndarray() -> MPSNDArray
}
