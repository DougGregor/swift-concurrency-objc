
extension SCNScene {
  @available(iOS 9.0, *)
  convenience init(mdlAsset: MDLAsset)
}
extension MDLAsset {
  @available(iOS 9.0, *)
  convenience init(scnScene: SCNScene)
  @available(iOS 10.0, *)
  convenience init(scnScene: SCNScene, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNNode {
  @available(iOS 9.0, *)
  convenience init(mdlObject: MDLObject)
}
extension MDLObject {
  @available(iOS 9.0, *)
  convenience init(scnNode: SCNNode)
  @available(iOS 10.0, *)
  convenience init(scnNode: SCNNode, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNGeometry {
  @available(iOS 9.0, *)
  convenience init(mdlMesh: MDLMesh)
}
extension MDLMesh {
  @available(iOS 9.0, *)
  convenience init(scnGeometry: SCNGeometry)
  @available(iOS 10.0, *)
  convenience init(scnGeometry: SCNGeometry, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNGeometryElement {
  @available(iOS 9.0, *)
  convenience init(mdlSubmesh mdlSubMesh: MDLSubmesh)
}
extension MDLSubmesh {
  @available(iOS 9.0, *)
  convenience init(scnGeometryElement: SCNGeometryElement)
  @available(iOS 10.0, *)
  convenience init(scnGeometryElement: SCNGeometryElement, bufferAllocator: MDLMeshBufferAllocator?)
}
extension SCNMaterial {
  @available(iOS 9.0, *)
  convenience init(mdlMaterial: MDLMaterial)
}
extension MDLMaterial {
  @available(iOS 9.0, *)
  convenience init(scnMaterial: SCNMaterial)
}
extension SCNLight {
  @available(iOS 9.0, *)
  convenience init(mdlLight: MDLLight)
}
extension MDLLight {
  @available(iOS 9.0, *)
  convenience init(scnLight: SCNLight)
}
extension SCNCamera {
  @available(iOS 9.0, *)
  convenience init(mdlCamera: MDLCamera)
}
extension MDLCamera {
  @available(iOS 9.0, *)
  convenience init(scnCamera: SCNCamera)
}
