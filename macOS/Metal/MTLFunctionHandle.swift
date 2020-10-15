
@available(macOS 11.0, *)
protocol MTLFunctionHandle : NSObjectProtocol {
  var functionType: MTLFunctionType { get }
  var name: String { get }
  var device: MTLDevice { get }
}
