
@available(macOS 10.10, *)
class SK3DNode : SKNode {
  init(viewportSize: CGSize)
  var viewportSize: CGSize
  var sceneTime: TimeInterval
  func projectPoint(_ point: vector_float3) -> vector_float3
  func unprojectPoint(_ point: vector_float3) -> vector_float3
  var isPlaying: Bool
  var loops: Bool
  var autoenablesDefaultLighting: Bool
}
