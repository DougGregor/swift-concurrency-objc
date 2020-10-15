
@available(iOS 11.0, *)
struct MTLResourceUsage : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var read: MTLResourceUsage { get }
  static var write: MTLResourceUsage { get }
  static var sample: MTLResourceUsage { get }
}
@available(iOS 12.0, *)
struct MTLBarrierScope : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var buffers: MTLBarrierScope { get }
  static var textures: MTLBarrierScope { get }
}
@available(iOS 8.0, *)
protocol MTLCommandEncoder : NSObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get set }
  func endEncoding()
  func insertDebugSignpost(_ string: String)
  func pushDebugGroup(_ string: String)
  func popDebugGroup()
}
