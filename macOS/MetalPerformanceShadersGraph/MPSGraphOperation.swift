
@available(macOS 11.0, *)
class MPSGraphOperation : NSObject, NSCopying {
  var inputTensors: [MPSGraphTensor] { get }
  var outputTensors: [MPSGraphTensor] { get }
  var controlDependencies: [MPSGraphOperation] { get }
  var graph: MPSGraph { get }
  var name: String { get }
}
