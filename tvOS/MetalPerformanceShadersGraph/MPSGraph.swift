
enum MPSGraphOptions : UInt64 {
  init?(rawValue: UInt64)
  var rawValue: UInt64 { get }
  @available(tvOS 14.0, *)
  case none
  @available(tvOS 14.0, *)
  case synchronizeResults
  @available(tvOS 14.0, *)
  case verbose
  @available(tvOS 14.0, *)
  static var `default`: MPSGraphOptions { get }
}
typealias MPSGraphCompletionHandler = ([MPSGraphTensor : MPSGraphTensorData], Error?) -> Void
typealias MPSGraphScheduledHandler = ([MPSGraphTensor : MPSGraphTensorData], Error?) -> Void
@available(tvOS 14.0, *)
class MPSGraphExecutionDescriptor : NSObject {
  var scheduledHandler: MPSGraphScheduledHandler
  var completionHandler: MPSGraphCompletionHandler
  var waitUntilCompleted: Bool
}
@available(tvOS 14.0, *)
class MPSGraph : NSObject {
  var options: MPSGraphOptions
  var placeholderTensors: [MPSGraphTensor] { get }
  func run(feeds: [MPSGraphTensor : MPSGraphTensorData], targetTensors: [MPSGraphTensor], targetOperations: [MPSGraphOperation]?) -> [MPSGraphTensor : MPSGraphTensorData]
  func run(with commandQueue: MTLCommandQueue, feeds: [MPSGraphTensor : MPSGraphTensorData], targetTensors: [MPSGraphTensor], targetOperations: [MPSGraphOperation]?) -> [MPSGraphTensor : MPSGraphTensorData]
  func run(with commandQueue: MTLCommandQueue, feeds: [MPSGraphTensor : MPSGraphTensorData], targetOperations: [MPSGraphOperation]?, resultsDictionary: [MPSGraphTensor : MPSGraphTensorData])
  func runAsync(feeds: [MPSGraphTensor : MPSGraphTensorData], targetTensors: [MPSGraphTensor], targetOperations: [MPSGraphOperation]?, executionDescriptor: MPSGraphExecutionDescriptor?) -> [MPSGraphTensor : MPSGraphTensorData]
  func runAsync(with commandQueue: MTLCommandQueue, feeds: [MPSGraphTensor : MPSGraphTensorData], targetTensors: [MPSGraphTensor], targetOperations: [MPSGraphOperation]?, executionDescriptor: MPSGraphExecutionDescriptor?) -> [MPSGraphTensor : MPSGraphTensorData]
  func runAsync(with commandQueue: MTLCommandQueue, feeds: [MPSGraphTensor : MPSGraphTensorData], targetOperations: [MPSGraphOperation]?, resultsDictionary: [MPSGraphTensor : MPSGraphTensorData], executionDescriptor: MPSGraphExecutionDescriptor?)
  func encode(to commandBuffer: MPSCommandBuffer, feeds: [MPSGraphTensor : MPSGraphTensorData], targetTensors: [MPSGraphTensor], targetOperations: [MPSGraphOperation]?, executionDescriptor: MPSGraphExecutionDescriptor?) -> [MPSGraphTensor : MPSGraphTensorData]
  func encode(to commandBuffer: MPSCommandBuffer, feeds: [MPSGraphTensor : MPSGraphTensorData], targetOperations: [MPSGraphOperation]?, resultsDictionary: [MPSGraphTensor : MPSGraphTensorData], executionDescriptor: MPSGraphExecutionDescriptor?)
}
