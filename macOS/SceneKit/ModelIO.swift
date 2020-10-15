
extension SCNScene {
  @available(macOS 10.11, *)
  convenience init(mdlAsset: MDLAsset)
}
extension MDLAsset {
  @available(macOS 10.11, *)
  convenience init(scnScene: SCNScene)
  @available(macOS 10.12, *)
  convenience init(scnScene: SCNScene, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNNode {
  @available(macOS 10.11, *)
  convenience init(mdlObject: MDLObject)
}
extension MDLObject {
  @available(macOS 10.11, *)
  convenience init(scnNode: SCNNode)
  @available(macOS 10.12, *)
  convenience init(scnNode: SCNNode, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNGeometry {
  @available(macOS 10.11, *)
  convenience init(mdlMesh: MDLMesh)
}
extension MDLMesh {
  @available(macOS 10.11, *)
  convenience init(scnGeometry: SCNGeometry)
  @available(macOS 10.12, *)
  convenience init(scnGeometry: SCNGeometry, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNGeometryElement {
  @available(macOS 10.11, *)
  convenience init(mdlSubmesh mdlSubMesh: MDLSubmesh)
}
extension MDLSubmesh {
  @available(macOS 10.11, *)
  convenience init(scnGeometryElement: SCNGeometryElement)
  @available(macOS 10.12, *)
  convenience init(scnGeometryElement: SCNGeometryElement, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNMaterial {
  @available(macOS 10.11, *)
  convenience init(mdlMaterial: MDLMaterial)
}
extension MDLMaterial {
  @available(macOS 10.11, *)
  convenience init(scnMaterial: SCNMaterial)
}
extension SCNLight {
  @available(macOS 10.11, *)
  convenience init(mdlLight: MDLLight)
}
extension MDLLight {
  @available(macOS 10.11, *)
  convenience init(scnLight: SCNLight)
}
extension SCNCamera {
  @available(macOS 10.11, *)
  convenience init(mdlCamera: MDLCamera)
}
extension MDLCamera {
  @available(macOS 10.11, *)
  convenience init(scnCamera: SCNCamera)
}
