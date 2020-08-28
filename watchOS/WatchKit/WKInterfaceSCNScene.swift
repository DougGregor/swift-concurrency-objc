
@available(watchOS 3.0, *)
class WKInterfaceSCNScene : WKInterfaceObject, SCNSceneRenderer {
  func snapshot() -> UIImage
  var preferredFramesPerSecond: Int
  var antialiasingMode: SCNAntialiasingMode
}
