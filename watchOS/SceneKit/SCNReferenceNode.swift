
@available(watchOS 2.0, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case onDemand
}
@available(watchOS 2.0, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: URL)
  var referenceURL: URL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
}
