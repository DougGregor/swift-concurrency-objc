
@available(iOS 9.0, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case onDemand
}
@available(iOS 9.0, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: URL)
  var referenceURL: URL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
}
