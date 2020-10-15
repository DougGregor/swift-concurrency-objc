
extension SCNNode {
  @available(macOS 10.13, *)
  weak var entity: @sil_weak GKEntity?
}
extension SCNScene : GKSceneRootNodeType {
}
