
class SKShapeNode : SKNode {
  @available(watchOS 1.0, *)
  convenience init(path: CGPath)
  @available(watchOS 1.0, *)
  convenience init(path: CGPath, centered: Bool)
  @available(watchOS 1.0, *)
  convenience init(rect: CGRect)
  @available(watchOS 1.0, *)
  convenience init(rectOf size: CGSize)
  @available(watchOS 1.0, *)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  @available(watchOS 1.0, *)
  convenience init(rectOf size: CGSize, cornerRadius: CGFloat)
  @available(watchOS 1.0, *)
  convenience init(circleOfRadius radius: CGFloat)
  @available(watchOS 1.0, *)
  convenience init(ellipseIn rect: CGRect)
  @available(watchOS 1.0, *)
  convenience init(ellipseOf size: CGSize)
  @available(watchOS 1.0, *)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  @available(watchOS 1.0, *)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  var path: CGPath?
  var strokeColor: UIColor
  var fillColor: UIColor
  var blendMode: SKBlendMode
  var isAntialiased: Bool
  var lineWidth: CGFloat
  var glowWidth: CGFloat
  var lineCap: CGLineCap
  var lineJoin: CGLineJoin
  var miterLimit: CGFloat
  var lineLength: CGFloat { get }
  @available(watchOS 1.0, *)
  var fillTexture: SKTexture?
  @available(watchOS 1.0, *)
  var fillShader: SKShader?
  @available(watchOS 1.0, *)
  var strokeTexture: SKTexture?
  @available(watchOS 1.0, *)
  var strokeShader: SKShader?
}

extension SKShapeNode : _CustomPlaygroundQuickLookable {
}
