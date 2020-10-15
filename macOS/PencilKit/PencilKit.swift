
@available(iOS 13.0, macOS 10.15, *)
struct PKDrawing {
  init()
  init(data: Data) throws
  func dataRepresentation() -> Data
  var bounds: CGRect { get }
  func image(from rect: CGRect, scale: CGFloat) -> NSImage
  mutating func transform(using transform: CGAffineTransform)
  func transformed(using transform: CGAffineTransform) -> PKDrawing
  mutating func append(_ toAppend: PKDrawing)
  func appending(_ toAppend: PKDrawing) -> PKDrawing
}

@available(iOS 14.0, macOS 11.0, *)
extension PKDrawing {
  init<S>(strokes: S) where S : Sequence, S.Element == PKStroke
  var strokes: [PKStroke]
}

@available(iOS 13.0, macOS 10.15, *)
extension PKDrawing : Equatable {
}

@available(iOS 13.0, macOS 10.15, *)
extension PKDrawing : Codable {
}

@available(iOS 13.0, macOS 10.15, *)
extension PKDrawing : _ObjectiveCBridgeable {
}

@available(iOS 13.0, macOS 11.0, *)
struct PKEraserTool : PKTool, Equatable {
  init(_ eraserType: PKEraserTool.EraserType)
  enum EraserType {
    case vector
    case bitmap
  }
  var eraserType: PKEraserTool.EraserType
}

@available(iOS 13.0, macOS 11.0, *)
extension PKEraserTool : _ObjectiveCBridgeable {
}

@available(iOS 13.0, macOS 11.0, *)
extension PKEraserTool.EraserType : Equatable {
}

@available(iOS 13.0, macOS 11.0, *)
extension PKEraserTool.EraserType : Hashable {
}

@available(iOS 14.0, macOS 11.0, *)
struct PKInk {
  typealias InkType = PKInkingTool.InkType
  init(_ inkType: PKInk.InkType, color: NSColor = NSColor.black)
  var inkType: PKInk.InkType
  var color: NSColor
}

@available(iOS 14.0, macOS 11.0, *)
extension PKInk : _ObjectiveCBridgeable {
}

@available(iOS 13.0, macOS 11.0, *)
struct PKInkingTool : PKTool, Equatable {
  init(_ inkType: PKInkingTool.InkType, color: NSColor = NSColor.black, width: CGFloat? = nil)
  enum InkType : String {
    case pen
    case pencil
    case marker
    var defaultWidth: CGFloat { get }
    var validWidthRange: ClosedRange<CGFloat> { get }
  }
  var color: NSColor
  var width: CGFloat
  var inkType: PKInkingTool.InkType
}

@available(iOS 14.0, macOS 11.0, *)
extension PKInkingTool {
  init(ink: PKInk, width: CGFloat)
  var ink: PKInk { get }
}

@available(iOS 13.0, macOS 11.0, *)
extension PKInkingTool : _ObjectiveCBridgeable {
}

@available(iOS 13.0, macOS 11.0, *)
extension PKInkingTool.InkType : Equatable {
}

@available(iOS 13.0, macOS 11.0, *)
extension PKInkingTool.InkType : Hashable {
}

@available(iOS 13.0, macOS 11.0, *)
extension PKInkingTool.InkType : RawRepresentable {
}

@available(iOS 13.0, macOS 11.0, *)
struct PKLassoTool : PKTool, Equatable {
  init()
}

@available(iOS 13.0, macOS 11.0, *)
extension PKLassoTool : _ObjectiveCBridgeable {
}

@available(iOS 14.0, macOS 11.0, *)
struct PKStroke {
  init(ink: PKInk, path: PKStrokePath, transform: CGAffineTransform = .identity, mask: NSBezierPath? = nil)
  var ink: PKInk
  var transform: CGAffineTransform
  var path: PKStrokePath
  var mask: NSBezierPath?
  var renderBounds: CGRect { get }
  var maskedPathRanges: [ClosedRange<CGFloat>] { get }
}

@available(iOS 14.0, macOS 11.0, *)
extension PKStroke : _ObjectiveCBridgeable {
}

@available(iOS 14.0, macOS 11.0, *)
struct PKStrokePath : RandomAccessCollection {
  init()
  init<T>(controlPoints: T, creationDate: Date) where T : Sequence, T.Element == PKStrokePoint
  var creationDate: Date { get }
  func interpolatedLocation(at parametricValue: CGFloat) -> CGPoint
  func interpolatedPoint(at parametricValue: CGFloat) -> PKStrokePoint
  func interpolatedPoints(in range: ClosedRange<CGFloat>? = nil, by stride: PKStrokePath.InterpolatedSlice.Stride) -> PKStrokePath.InterpolatedSlice
  func parametricValue(_ parametricValue: CGFloat, offsetBy step: PKStrokePath.InterpolatedSlice.Stride) -> CGFloat
  struct InterpolatedSlice {
    enum Stride {
      case distance(CGFloat)
      case time(TimeInterval)
      case parametricStep(CGFloat)
    }
  }
}

@available(iOS 14.0, macOS 11.0, *)
extension PKStrokePath : _ObjectiveCBridgeable {
}

@available(iOS 14.0, macOS 11.0, *)
extension PKStrokePath.InterpolatedSlice : Sequence, IteratorProtocol {
}

@available(iOS 14.0, macOS 11.0, *)
struct PKStrokePoint {
  init(location: CGPoint, timeOffset: TimeInterval, size: CGSize, opacity: CGFloat, force: CGFloat, azimuth: CGFloat, altitude: CGFloat)
  var location: CGPoint { get }
  var timeOffset: TimeInterval { get }
  var size: CGSize { get }
  var opacity: CGFloat { get }
  var azimuth: CGFloat { get }
  var force: CGFloat { get }
  var altitude: CGFloat { get }
}

@available(iOS 14.0, macOS 11.0, *)
extension PKStrokePoint : _ObjectiveCBridgeable {
}

@available(iOS 13.0, macOS 11.0, *)
protocol PKTool {
}

