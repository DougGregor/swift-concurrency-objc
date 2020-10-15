
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
struct CAAutoresizingMask : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var layerMinXMargin: CAAutoresizingMask { get }
  static var layerWidthSizable: CAAutoresizingMask { get }
  static var layerMaxXMargin: CAAutoresizingMask { get }
  static var layerMinYMargin: CAAutoresizingMask { get }
  static var layerHeightSizable: CAAutoresizingMask { get }
  static var layerMaxYMargin: CAAutoresizingMask { get }
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
@available(macOS 10.5, *)
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
  @available(macOS 10.7, *)
  var contentsScale: CGFloat
  var contentsCenter: CGRect
  @available(macOS 10.12, *)
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
  @available(macOS 10.8, *)
  var drawsAsynchronously: Bool
  func draw(in ctx: CGContext)
  func render(in ctx: CGContext)
  var edgeAntialiasingMask: CAEdgeAntialiasingMask
  @available(macOS 10.10, *)
  var allowsEdgeAntialiasing: Bool
  var backgroundColor: CGColor?
  var cornerRadius: CGFloat
  @available(macOS 10.13, *)
  var maskedCorners: CACornerMask
  @available(macOS 10.15, *)
  var cornerCurve: CALayerCornerCurve
  @available(macOS 10.15, *)
  class func cornerCurveExpansionFactor(_ curve: CALayerCornerCurve) -> CGFloat
  var borderWidth: CGFloat
  var borderColor: CGColor?
  var opacity: Float
  @available(macOS 10.10, *)
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
  var autoresizingMask: CAAutoresizingMask
  var layoutManager: CALayoutManager?
  func preferredFrameSize() -> CGSize
  func setNeedsLayout()
  func needsLayout() -> Bool
  func layoutIfNeeded()
  func layoutSublayers()
  func resizeSublayers(withOldSize size: CGSize)
  func resize(withOldSuperlayerSize size: CGSize)
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
protocol CALayoutManager : NSObjectProtocol {
  @available(macOS 10.5, *)
  optional func preferredSize(of layer: CALayer) -> CGSize
  @available(macOS 10.5, *)
  optional func invalidateLayout(of layer: CALayer)
  @available(macOS 10.5, *)
  optional func layoutSublayers(of layer: CALayer)
}
protocol CAAction {
  func run(forKey event: String, object anObject: Any, arguments dict: [AnyHashable : Any]?)
}
extension NSNull : CAAction {
}
protocol CALayerDelegate : NSObjectProtocol {
  @available(macOS 10.5, *)
  optional func display(_ layer: CALayer)
  @available(macOS 10.5, *)
  optional func draw(_ layer: CALayer, in ctx: CGContext)
  @available(macOS 10.12, *)
  optional func layerWillDraw(_ layer: CALayer)
  @available(macOS 10.5, *)
  optional func layoutSublayers(of layer: CALayer)
  @available(macOS 10.5, *)
  optional func action(for layer: CALayer, forKey event: String) -> CAAction?
}
extension CALayerContentsGravity {
  @available(macOS 10.5, *)
  static let center: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let top: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let bottom: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let left: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let right: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let topLeft: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let topRight: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let bottomLeft: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let bottomRight: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let resize: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let resizeAspect: CALayerContentsGravity
  @available(macOS 10.5, *)
  static let resizeAspectFill: CALayerContentsGravity
}
extension CALayerContentsFormat {
  @available(macOS 10.12, *)
  static let RGBA8Uint: CALayerContentsFormat
  @available(macOS 10.12, *)
  static let RGBA16Float: CALayerContentsFormat
  @available(macOS 10.12, *)
  static let gray8Uint: CALayerContentsFormat
}
extension CALayerContentsFilter {
  @available(macOS 10.5, *)
  static let nearest: CALayerContentsFilter
  @available(macOS 10.5, *)
  static let linear: CALayerContentsFilter
  @available(macOS 10.6, *)
  static let trilinear: CALayerContentsFilter
}
extension CALayerCornerCurve {
  @available(macOS 10.15, *)
  static let circular: CALayerCornerCurve
  @available(macOS 10.15, *)
  static let continuous: CALayerCornerCurve
}
@available(macOS 10.5, *)
let kCAOnOrderIn: String
@available(macOS 10.5, *)
let kCAOnOrderOut: String
@available(macOS 10.5, *)
let kCATransition: String
