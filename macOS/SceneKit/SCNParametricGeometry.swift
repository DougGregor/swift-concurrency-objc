
class SCNPlane : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  @available(macOS 10.9, *)
  var cornerRadius: CGFloat
  @available(macOS 10.9, *)
  var cornerSegmentCount: Int
}
class SCNBox : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat, chamferRadius: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var length: CGFloat
  var chamferRadius: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  var lengthSegmentCount: Int
  var chamferSegmentCount: Int
}
class SCNPyramid : SCNGeometry {
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat)
  var width: CGFloat
  var height: CGFloat
  var length: CGFloat
  var widthSegmentCount: Int
  var heightSegmentCount: Int
  var lengthSegmentCount: Int
}
class SCNSphere : SCNGeometry {
  convenience init(radius: CGFloat)
  var radius: CGFloat
  var isGeodesic: Bool
  var segmentCount: Int
}
class SCNCylinder : SCNGeometry {
  convenience init(radius: CGFloat, height: CGFloat)
  var radius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
}
class SCNCone : SCNGeometry {
  convenience init(topRadius: CGFloat, bottomRadius: CGFloat, height: CGFloat)
  var topRadius: CGFloat
  var bottomRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
}
class SCNTube : SCNGeometry {
  convenience init(innerRadius: CGFloat, outerRadius: CGFloat, height: CGFloat)
  var innerRadius: CGFloat
  var outerRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
}
class SCNCapsule : SCNGeometry {
  convenience init(capRadius: CGFloat, height: CGFloat)
  var capRadius: CGFloat
  var height: CGFloat
  var radialSegmentCount: Int
  var heightSegmentCount: Int
  var capSegmentCount: Int
}
class SCNTorus : SCNGeometry {
  convenience init(ringRadius: CGFloat, pipeRadius: CGFloat)
  var ringRadius: CGFloat
  var pipeRadius: CGFloat
  var ringSegmentCount: Int
  var pipeSegmentCount: Int
}
class SCNFloor : SCNGeometry {
  var reflectivity: CGFloat
  var reflectionFalloffStart: CGFloat
  var reflectionFalloffEnd: CGFloat
  @available(macOS 10.12, *)
  var reflectionCategoryBitMask: Int
  @available(macOS 10.12, *)
  var width: CGFloat
  @available(macOS 10.12, *)
  var length: CGFloat
  @available(macOS 10.10, *)
  var reflectionResolutionScaleFactor: CGFloat
}
class SCNText : SCNGeometry {
  convenience init(string: Any?, extrusionDepth: CGFloat)
  var extrusionDepth: CGFloat
  var string: Any?
  var font: NSFont!
  var isWrapped: Bool
  var containerFrame: CGRect
  var textSize: CGSize { get }
  var truncationMode: String
  var alignmentMode: String
  var chamferRadius: CGFloat
  @available(macOS 10.9, *)
  @NSCopying var chamferProfile: NSBezierPath?
  @available(macOS 10.9, *)
  var flatness: CGFloat
}
@available(macOS 10.9, *)
enum SCNChamferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case both
  case front
  case back
}
@available(macOS 10.9, *)
class SCNShape : SCNGeometry {
  convenience init(path: NSBezierPath?, extrusionDepth: CGFloat)
  @NSCopying var path: NSBezierPath?
  var extrusionDepth: CGFloat
  var chamferMode: SCNChamferMode
  var chamferRadius: CGFloat
  @NSCopying var chamferProfile: NSBezierPath?
}
