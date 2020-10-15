
@available(iOS 11.0, *)
protocol MTLCaptureScope : NSObjectProtocol {
  func begin()
  func end()
  var label: String? { get set }
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue? { get }
}
