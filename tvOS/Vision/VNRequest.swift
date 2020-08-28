
typealias VNRequestCompletionHandler = (VNRequest, Error?) -> Void
@available(tvOS 11.0, *)
class VNRequest : NSObject, NSCopying {
  init(completionHandler: VNRequestCompletionHandler? = nil)
  var preferBackgroundProcessing: Bool
  var usesCPUOnly: Bool
  var results: [Any]? { get }
  var completionHandler: VNRequestCompletionHandler? { get }
  @available(tvOS 12.0, *)
  var revision: Int
  @available(tvOS 12.0, *)
  class var supportedRevisions: IndexSet { get }
  @available(tvOS 12.0, *)
  class var defaultRevision: Int { get }
  @available(tvOS 12.0, *)
  class var currentRevision: Int { get }
  @available(tvOS 13.0, *)
  func cancel()
}
@available(tvOS 12.0, *)
let VNRequestRevisionUnspecified: Int
@available(tvOS 11.0, *)
class VNImageBasedRequest : VNRequest {
  var regionOfInterest: CGRect
}
typealias VNRequestProgressHandler = (VNRequest, Double, Error?) -> Void
@available(tvOS 13.0, *)
protocol VNRequestProgressProviding : NSObjectProtocol {
  var progressHandler: VNRequestProgressHandler { get set }
  var indeterminate: Bool { get }
}
