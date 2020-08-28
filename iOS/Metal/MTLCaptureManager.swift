
@available(iOS 13.0, *)
let MTLCaptureErrorDomain: String
@available(iOS 13.0, *)
enum MTLCaptureError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSupported
  case alreadyCapturing
  case invalidDescriptor
}
@available(iOS 13.0, *)
enum MTLCaptureDestination : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case developerTools
  case gpuTraceDocument
}
@available(iOS 13.0, *)
class MTLCaptureDescriptor : NSObject, NSCopying {
  var captureObject: Any?
  var destination: MTLCaptureDestination
  var outputURL: URL?
}
@available(iOS 11.0, *)
class MTLCaptureManager : NSObject {
  class func shared() -> MTLCaptureManager
  func makeCaptureScope(device: MTLDevice) -> MTLCaptureScope
  func makeCaptureScope(commandQueue: MTLCommandQueue) -> MTLCaptureScope
  @available(iOS 13.0, *)
  func supportsDestination(_ destination: MTLCaptureDestination) -> Bool
  @available(iOS 13.0, *)
  func startCapture(with descriptor: MTLCaptureDescriptor) throws
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "Use startCaptureWithDescriptor:error: instead")
  func startCapture(device: MTLDevice)
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "Use startCaptureWithDescriptor:error: instead")
  func startCapture(commandQueue: MTLCommandQueue)
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "Use startCaptureWithDescriptor:error: instead")
  func startCapture(scope captureScope: MTLCaptureScope)
  func stopCapture()
  var defaultCaptureScope: MTLCaptureScope?
  var isCapturing: Bool { get }
}
