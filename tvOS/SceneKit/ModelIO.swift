
extension SCNScene {
  @available(tvOS 9.0, *)
  convenience init(mdlAsset: MDLAsset)
}
extension MDLAsset {
  @available(tvOS 9.0, *)
  convenience init(scnScene: SCNScene)
  @available(tvOS 10.0, *)
  convenience init(scnScene: SCNScene, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNNode {
  @available(tvOS 9.0, *)
  convenience init(mdlObject: MDLObject)
}
extension MDLObject {
  @available(tvOS 9.0, *)
  convenience init(scnNode: SCNNode)
  @available(tvOS 10.0, *)
  convenience init(scnNode: SCNNode, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNGeometry {
  @available(tvOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
extension MDLMesh {
  @available(tvOS 9.0, *)
  convenience init(scnGeometry: SCNGeometry)
  @available(tvOS 10.0, *)
  convenience init(scnGeometry: SCNGeometry, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNGeometryElement {
  @available(tvOS 9.0, *)
  convenience init(mdlSubmesh mdlSubMesh: MDLSubmesh)
}
extension MDLSubmesh {
  @available(tvOS 9.0, *)
  convenience init(scnGeometryElement: SCNGeometryElement)
  @available(tvOS 10.0, *)
  convenience init(scnGeometryElement: SCNGeometryElement, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNMaterial {
  @available(tvOS 9.0, *)
  convenience init(mdlMaterial: MDLMaterial)
}
extension MDLMaterial {
  @available(tvOS 9.0, *)
  convenience init(scnMaterial: SCNMaterial)
}
extension SCNLight {
  @available(tvOS 9.0, *)
  convenience init(mdlLight: MDLLight)
}
extension MDLLight {
  @available(tvOS 9.0, *)
  convenience init(scnLight: SCNLight)
}
extension SCNCamera {
  @available(tvOS 9.0, *)
  convenience init(mdlCamera: MDLCamera)
}
extension MDLCamera {
  @available(tvOS 9.0, *)
  convenience init(scnCamera: SCNCamera)
}
