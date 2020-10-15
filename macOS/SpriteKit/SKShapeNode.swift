
class SKShapeNode : SKNode {
  @available(macOS 10.10, *)
  convenience init(path: CGPath)
  @available(macOS 10.10, *)
  convenience init(path: CGPath, centered: Bool)
  @available(macOS 10.10, *)
  convenience init(rect: CGRect)
  @available(macOS 10.10, *)
  convenience init(rectOf size: CGSize)
  @available(macOS 10.10, *)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  @available(macOS 10.10, *)
  convenience init(rectOf size: CGSize, cornerRadius: CGFloat)
  @available(macOS 10.10, *)
  convenience init(circleOfRadius radius: CGFloat)
  @available(macOS 10.10, *)
  convenience init(ellipseIn rect: CGRect)
  @available(macOS 10.10, *)
  convenience init(ellipseOf size: CGSize)
  @available(macOS 10.10, *)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  @available(macOS 10.10, *)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  var path: CGPath?
  var strokeColor: NSColor
  var fillColor: NSColor
  var blendMode: SKBlendMode
  var isAntialiased: Bool
  var lineWidth: CGFloat
  var glowWidth: CGFloat
  var lineCap: CGLineCap
  var lineJoin: CGLineJoin
  var miterLimit: CGFloat
  var lineLength: CGFloat { get }
  @available(macOS 10.10, *)
  var fillTexture: SKTexture?
  @available(macOS 10.10, *)
  var fillShader: SKShader?
  @available(macOS 10.10, *)
  var strokeTexture: SKTexture?
  @available(macOS 10.10, *)
  var strokeShader: SKShader?
}

extension SKShapeNode : _CustomPlaygroundQuickLookable {
}
