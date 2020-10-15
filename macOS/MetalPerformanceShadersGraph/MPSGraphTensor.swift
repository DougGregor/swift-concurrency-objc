
@available(macOS 11.0, *)
class MPSGraphTensor : NSObject, NSCopying {
  var shape: [NSNumber]? { get }
  var dataType: MPSDataType { get }
  var operation: MPSGraphOperation { get }
}
