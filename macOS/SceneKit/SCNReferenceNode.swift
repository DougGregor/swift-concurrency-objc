
@available(macOS 10.11, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case onDemand
}
@available(macOS 10.11, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: URL)
  var referenceURL: URL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
}
