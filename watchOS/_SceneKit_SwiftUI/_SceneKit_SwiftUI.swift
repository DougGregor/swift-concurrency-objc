
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct SceneView : View {
  struct Options : OptionSet {
    static let allowsCameraControl: SceneView.Options
    static let rendersContinuously: SceneView.Options
    static let autoenablesDefaultLighting: SceneView.Options
    static let jitteringEnabled: SceneView.Options
    static let temporalAntialiasingEnabled: SceneView.Options
  }
  init(scene: SCNScene? = nil, pointOfView: SCNNode? = nil, options: SceneView.Options = [], preferredFramesPerSecond: Int = 60, antialiasingMode: SCNAntialiasingMode = .multisampling4X, delegate: SCNSceneRendererDelegate? = nil, technique: SCNTechnique? = nil)
}

