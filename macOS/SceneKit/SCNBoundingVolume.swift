
protocol SCNBoundingVolume : NSObjectProtocol {
  func __getBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>?, max: UnsafeMutablePointer<SCNVector3>?) -> Bool
  @available(macOS 10.9, *)
  func __setBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>?, max: UnsafeMutablePointer<SCNVector3>?)
  func __getBoundingSphereCenter(_ center: UnsafeMutablePointer<SCNVector3>?, radius: UnsafeMutablePointer<CGFloat>?) -> Bool
}

@available(iOS 8.0, macOS 10.10, *)
extension SCNBoundingVolume {
  var boundingBox: (min: SCNVector3, max: SCNVector3)
  var boundingSphere: (center: SCNVector3, radius: Float) { get }
}
