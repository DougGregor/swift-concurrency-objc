
struct CALayerContentsGravity : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CALayerContentsFormat : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CALayerContentsFilter : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CALayerCornerCurve : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CAEdgeAntialiasingMask : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var layerLeftEdge: CAEdgeAntialiasingMask { get }
  static var layerRightEdge: CAEdgeAntialiasingMask { get }
  static var layerBottomEdge: CAEdgeAntialiasingMask { get }
  static var layerTopEdge: CAEdgeAntialiasingMask { get }
}
struct CACornerMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var layerMinXMinYCorner: CACornerMask { get }
  static var layerMaxXMinYCorner: CACornerMask { get }
  static var layerMinXMaxYCorner: CACornerMask { get }
  static var layerMaxXMaxYCorner: CACornerMask { get }
}
@available(iOS 2.0, *)
class CALayer : NSObject, NSSecureCoding, CAMediaTiming {
  init(layer: Any)
  func presentation() -> Self?
  func model() -> Self
  class func defaultValue(forKey key: String) -> Any?
  class func needsDisplay(forKey key: String) -> Bool
  func shouldArchiveValue(forKey key: String) -> Bool
  var bounds: CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var anchorPoint: CGPoint
  var anchorPointZ: CGFloat
  var transform: CATransform3D
  func affineTransform() -> CGAffineTransform
  func setAffineTransform(_ m: CGAffineTransform)
  var frame: CGRect
  var isHidden: Bool
  var isDoubleSided: Bool
  var isGeometryFlipped: Bool
  func contentsAreFlipped() -> Bool
  var superlayer: CALayer? { get }
  func removeFromSuperlayer()
  var sublayers: [CALayer]?
  func addSublayer(_ layer: CALayer)
  func insertSublayer(_ layer: CALayer, at idx: UInt32)
  func insertSublayer(_ layer: CALayer, below sibling: CALayer?)
  func insertSublayer(_ layer: CALayer, above sibling: CALayer?)
  func replaceSublayer(_ oldLayer: CALayer, with newLayer: CALayer)
  var sublayerTransform: CATransform3D
  var mask: CALayer?
  var masksToBounds: Bool
  func convert(_ p: CGPoint, from l: CALayer?) -> CGPoint
  func convert(_ p: CGPoint, to l: CALayer?) -> CGPoint
  func convert(_ r: CGRect, from l: CALayer?) -> CGRect
  func convert(_ r: CGRect, to l: CALayer?) -> CGRect
  func convertTime(_ t: CFTimeInterval, from l: CALayer?) -> CFTimeInterval
  func convertTime(_ t: CFTimeInterval, to l: CALayer?) -> CFTimeInterval
  func hitTest(_ p: CGPoint) -> CALayer?
  func contains(_ p: CGPoint) -> Bool
  var contents: Any?
  var contentsRect: CGRect
  var contentsGravity: CALayerContentsGravity
  @available(iOS 4.0, *)
  var contentsScale: CGFloat
  var contentsCenter: CGRect
  @available(iOS 10.0, *)
  var contentsFormat: CALayerContentsFormat
  var minificationFilter: CALayerContentsFilter
  var magnificationFilter: CALayerContentsFilter
  var minificationFilterBias: Float
  var isOpaque: Bool
  func display()
  func setNeedsDisplay()
  func setNeedsDisplay(_ r: CGRect)
  func needsDisplay() -> Bool
  func displayIfNeeded()
  var needsDisplayOnBoundsChange: Bool
  @available(iOS 6.0, *)
  var drawsAsynchronously: Bool
  func draw(in ctx: CGContext)
  func render(in ctx: CGContext)
  var edgeAntialiasingMask: CAEdgeAntialiasingMask
  @available(iOS 2.0, *)
  var allowsEdgeAntialiasing: Bool
  var backgroundColor: CGColor?
  var cornerRadius: CGFloat
  @available(iOS 11.0, *)
  var maskedCorners: CACornerMask
  @available(iOS 13.0, *)
  var cornerCurve: CALayerCornerCurve
  @available(iOS 13.0, *)
  class func cornerCurveExpansionFactor(_ curve: CALayerCornerCurve) -> CGFloat
  var borderWidth: CGFloat
  var borderColor: CGColor?
  var opacity: Float
  @available(iOS 2.0, *)
  var allowsGroupOpacity: Bool
  var compositingFilter: Any?
  var filters: [Any]?
  var backgroundFilters: [Any]?
  var shouldRasterize: Bool
  var rasterizationScale: CGFloat
  var shadowColor: CGColor?
  var shadowOpacity: Float
  var shadowOffset: CGSize
  var shadowRadius: CGFloat
  var shadowPath: CGPath?
  func preferredFrameSize() -> CGSize
  func setNeedsLayout()
  func needsLayout() -> Bool
  func layoutIfNeeded()
  func layoutSublayers()
  class func defaultAction(forKey event: String) -> CAAction?
  func action(forKey event: String) -> CAAction?
  var actions: [String : CAAction]?
  func add(_ anim: CAAnimation, forKey key: String?)
  func removeAllAnimations()
  func removeAnimation(forKey key: String)
  func animationKeys() -> [String]?
  func animation(forKey key: String) -> CAAnimation?
  var name: String?
  weak var delegate: @sil_weak CALayerDelegate?
  var style: [AnyHashable : Any]?
}
struct _CALayerIvars {
  var refcount: Int32
  var magic: UInt32
  var layer: UnsafeMutableRawPointer
  init(refcount: Int32, magic: UInt32, layer: UnsafeMutableRawPointer)
}
protocol CAAction {
  func run(forKey event: String, object anObject: Any, arguments dict: [AnyHashable : Any]?)
}
extension NSNull : CAAction {
}
protocol CALayerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func display(_ layer: CALayer)
  @available(iOS 2.0, *)
  optional func draw(_ layer: CALayer, in ctx: CGContext)
  @available(iOS 10.0, *)
  optional func layerWillDraw(_ layer: CALayer)
  @available(iOS 2.0, *)
  optional func layoutSublayers(of layer: CALayer)
  @available(iOS 2.0, *)
  optional func action(for layer: CALayer, forKey event: String) -> CAAction?
}
extension CALayerContentsGravity {
  @available(iOS 2.0, *)
  static let center: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let top: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let bottom: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let left: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let right: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let topLeft: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let topRight: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let bottomLeft: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let bottomRight: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let resize: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let resizeAspect: CALayerContentsGravity
  @available(iOS 2.0, *)
  static let resizeAspectFill: CALayerContentsGravity
}
extension CALayerContentsFormat {
  @available(iOS 10.0, *)
  static let RGBA8Uint: CALayerContentsFormat
  @available(iOS 10.0, *)
  static let RGBA16Float: CALayerContentsFormat
  @available(iOS 10.0, *)
  static let gray8Uint: CALayerContentsFormat
}
extension CALayerContentsFilter {
  @available(iOS 2.0, *)
  static let nearest: CALayerContentsFilter
  @available(iOS 2.0, *)
  static let linear: CALayerContentsFilter
  @available(iOS 3.0, *)
  static let trilinear: CALayerContentsFilter
}
extension CALayerCornerCurve {
  @available(iOS 13.0, *)
  static let circular: CALayerCornerCurve
  @available(iOS 13.0, *)
  static let continuous: CALayerCornerCurve
}
@available(iOS 2.0, *)
let kCAOnOrderIn: String
@available(iOS 2.0, *)
let kCAOnOrderOut: String
@available(iOS 2.0, *)
let kCATransition: String
