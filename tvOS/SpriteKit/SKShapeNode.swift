
class SKShapeNode : SKNode {
  @available(tvOS 9.0, *)
  convenience init(path: CGPath)
  @available(tvOS 9.0, *)
  convenience init(path: CGPath, centered: Bool)
  @available(tvOS 9.0, *)
  convenience init(rect: CGRect)
  @available(tvOS 9.0, *)
  convenience init(rectOf size: CGSize)
  @available(tvOS 9.0, *)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  @available(tvOS 9.0, *)
  convenience init(rectOf size: CGSize, cornerRadius: CGFloat)
  @available(tvOS 9.0, *)
  convenience init(circleOfRadius radius: CGFloat)
  @available(tvOS 9.0, *)
  convenience init(ellipseIn rect: CGRect)
  @available(tvOS 9.0, *)
  convenience init(ellipseOf size: CGSize)
  @available(tvOS 9.0, *)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  @available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  var fillTexture: SKTexture?
  @available(tvOS 9.0, *)
  var fillShader: SKShader?
  @available(tvOS 9.0, *)
  var strokeTexture: SKTexture?
  @available(tvOS 9.0, *)
  var strokeShader: SKShader?
}

extension SKShapeNode : _CustomPlaygroundQuickLookable {
}
