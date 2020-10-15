
typealias VNRequestCompletionHandler = (VNRequest, Error?) -> Void
@available(iOS 11.0, *)
class VNRequest : NSObject, NSCopying {
  init(completionHandler: VNRequestCompletionHandler? = nil)
  var preferBackgroundProcessing: Bool
  var usesCPUOnly: Bool
  var results: [Any]? { get }
  var completionHandler: VNRequestCompletionHandler? { get }
  @available(iOS 12.0, *)
  var revision: Int
  @available(iOS 12.0, *)
  class var supportedRevisions: IndexSet { get }
  @available(iOS 12.0, *)
  class var defaultRevision: Int { get }
  @available(iOS 12.0, *)
  class var currentRevision: Int { get }
  @available(iOS 13.0, *)
  func cancel()
}
@available(iOS 12.0, *)
let VNRequestRevisionUnspecified: Int
@available(iOS 11.0, *)
class VNImageBasedRequest : VNRequest {
  var regionOfInterest: CGRect
}
typealias VNRequestProgressHandler = (VNRequest, Double, Error?) -> Void
@available(iOS 13.0, *)
protocol VNRequestProgressProviding : NSObjectProtocol {
  var progressHandler: VNRequestProgressHandler { get set }
  var indeterminate: Bool { get }
}
