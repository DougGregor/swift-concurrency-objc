
@available(macOS 10.13, *)
protocol MTLFence : NSObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get set }
}
