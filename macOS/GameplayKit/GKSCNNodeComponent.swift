
@available(macOS 10.13, *)
class GKSCNNodeComponent : GKComponent, GKAgentDelegate {
  init(node: SCNNode)
  var node: SCNNode { get }
}
