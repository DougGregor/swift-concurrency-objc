
@available(iOS 11.0, *)
protocol ARSKViewDelegate : ARSessionObserver, SKViewDelegate {
  optional func view(_ view: ARSKView, nodeFor anchor: ARAnchor) -> SKNode?
  optional func view(_ view: ARSKView, didAdd node: SKNode, for anchor: ARAnchor)
  optional func view(_ view: ARSKView, willUpdate node: SKNode, for anchor: ARAnchor)
  optional func view(_ view: ARSKView, didUpdate node: SKNode, for anchor: ARAnchor)
  optional func view(_ view: ARSKView, didRemove node: SKNode, for anchor: ARAnchor)
}
@available(iOS 11.0, *)
class ARSKView : SKView, ARSessionProviding {
  func anchor(for node: SKNode) -> ARAnchor?
  func node(for anchor: ARAnchor) -> SKNode?
  @available(iOS, introduced: 11.0, deprecated: 14.0, message: "Use raycasting")
  func hitTest(_ point: CGPoint, types: ARHitTestResult.ResultType) -> [ARHitTestResult]
}
