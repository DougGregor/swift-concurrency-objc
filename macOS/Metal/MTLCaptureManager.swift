
@available(macOS 10.15, *)
let MTLCaptureErrorDomain: String
@available(macOS 10.15, *)
enum MTLCaptureError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSupported
  case alreadyCapturing
  case invalidDescriptor
}
@available(macOS 10.15, *)
enum MTLCaptureDestination : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case developerTools
  case gpuTraceDocument
}
@available(macOS 10.15, *)
class MTLCaptureDescriptor : NSObject, NSCopying {
  var captureObject: Any?
  var destination: MTLCaptureDestination
  var outputURL: URL?
}
@available(macOS 10.13, *)
class MTLCaptureManager : NSObject {
  class func shared() -> MTLCaptureManager
  func makeCaptureScope(device: MTLDevice) -> MTLCaptureScope
  func makeCaptureScope(commandQueue: MTLCommandQueue) -> MTLCaptureScope
  @available(macOS 10.15, *)
  func supportsDestination(_ destination: MTLCaptureDestination) -> Bool
  @available(macOS 10.15, *)
  func startCapture(with descriptor: MTLCaptureDescriptor) throws
  @available(macOS, introduced: 10.13, deprecated: 10.15, message: "Use startCaptureWithDescriptor:error: instead")
  func startCapture(device: MTLDevice)
  @available(macOS, introduced: 10.13, deprecated: 10.15, message: "Use startCaptureWithDescriptor:error: instead")
  func startCapture(commandQueue: MTLCommandQueue)
  @available(macOS, introduced: 10.13, deprecated: 10.15, message: "Use startCaptureWithDescriptor:error: instead")
  func startCapture(scope captureScope: MTLCaptureScope)
  func stopCapture()
  var defaultCaptureScope: MTLCaptureScope?
  var isCapturing: Bool { get }
}
