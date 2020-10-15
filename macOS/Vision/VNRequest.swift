
typealias VNRequestCompletionHandler = (VNRequest, Error?) -> Void
@available(macOS 10.13, *)
class VNRequest : NSObject, NSCopying {
  init(completionHandler: VNRequestCompletionHandler? = nil)
  var preferBackgroundProcessing: Bool
  var usesCPUOnly: Bool
  var results: [Any]? { get }
  var completionHandler: VNRequestCompletionHandler? { get }
  @available(macOS 10.14, *)
  var revision: Int
  @available(macOS 10.14, *)
  class var supportedRevisions: IndexSet { get }
  @available(macOS 10.14, *)
  class var defaultRevision: Int { get }
  @available(macOS 10.14, *)
  class var currentRevision: Int { get }
  @available(macOS 10.15, *)
  func cancel()
}
@available(macOS 10.14, *)
let VNRequestRevisionUnspecified: Int
@available(macOS 10.13, *)
class VNImageBasedRequest : VNRequest {
  var regionOfInterest: CGRect
}
typealias VNRequestProgressHandler = (VNRequest, Double, Error?) -> Void
@available(macOS 10.15, *)
protocol VNRequestProgressProviding : NSObjectProtocol {
  var progressHandler: VNRequestProgressHandler { get set }
  var indeterminate: Bool { get }
}
