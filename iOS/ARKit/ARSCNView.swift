
@available(iOS 11.0, *)
class ARSCNView : SCNView, ARSessionProviding {
  var automaticallyUpdatesLighting: Bool
  @available(iOS 13.0, *)
  var rendersCameraGrain: Bool
  @available(iOS 13.0, *)
  var rendersMotionBlur: Bool
  func anchor(for node: SCNNode) -> ARAnchor?
  func node(for anchor: ARAnchor) -> SCNNode?
  @available(iOS, introduced: 11.0, deprecated: 14.0, message: "Use [ARSCNView raycastQueryFromPoint:allowingTarget:alignment]")
  func hitTest(_ point: CGPoint, types: ARHitTestResult.ResultType) -> [ARHitTestResult]
  @available(iOS 12.0, *)
  func __unprojectPoint(_ point: CGPoint, ontoPlaneWithTransform planeTransform: simd_float4x4) -> simd_float3
  @available(iOS 13.0, *)
  func raycastQuery(from point: CGPoint, allowing target: ARRaycastQuery.Target, alignment: ARRaycastQuery.TargetAlignment) -> ARRaycastQuery?
}

@available(iOS 12.0, *)
extension ARSCNView {
  @nonobjc func unprojectPoint(_ point: CGPoint, ontoPlane planeTransform: simd_float4x4) -> simd_float3?
}
@available(iOS 11.0, *)
protocol ARSCNViewDelegate : ARSessionObserver, SCNSceneRendererDelegate {
  optional func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode?
  optional func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor)
  optional func renderer(_ renderer: SCNSceneRenderer, willUpdate node: SCNNode, for anchor: ARAnchor)
  optional func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor)
  optional func renderer(_ renderer: SCNSceneRenderer, didRemove node: SCNNode, for anchor: ARAnchor)
}
@available(iOS 11.0, *)
typealias ARSCNDebugOptions = SCNDebugOptions
extension SCNDebugOptions {
  @available(iOS 11.0, *)
  static let showWorldOrigin: SCNDebugOptions
  @available(iOS 11.0, *)
  static let showFeaturePoints: SCNDebugOptions
}
