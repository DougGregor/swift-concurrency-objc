
@available(iOS 11.0, *)
class ARSCNFaceGeometry : SCNGeometry {
  convenience init?(device: MTLDevice)
  convenience init?(device: MTLDevice, fillMesh: Bool)
  func update(from faceGeometry: ARFaceGeometry)
  convenience init()
}
