
@available(iOS 11.3, *)
class ARSCNPlaneGeometry : SCNGeometry {
  convenience init?(device: MTLDevice)
  func update(from planeGeometry: ARPlaneGeometry)
}
