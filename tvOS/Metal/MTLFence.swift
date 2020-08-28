
@available(tvOS 10.0, *)
protocol MTLFence : NSObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get set }
}
