
extension NSRulerView {
  enum Orientation : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case horizontalRuler
    case verticalRuler
  }
  struct UnitName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSRulerView.UnitName {
  @available(macOS 10.13, *)
  static let inches: NSRulerView.UnitName
  @available(macOS 10.13, *)
  static let centimeters: NSRulerView.UnitName
  @available(macOS 10.13, *)
  static let points: NSRulerView.UnitName
  @available(macOS 10.13, *)
  static let picas: NSRulerView.UnitName
}
class NSRulerView : NSView {
  class func registerUnit(withName unitName: NSRulerView.UnitName, abbreviation: String, unitToPointsConversionFactor conversionFactor: CGFloat, stepUpCycle: [NSNumber], stepDownCycle: [NSNumber])
  init(scrollView: NSScrollView?, orientation: NSRulerView.Orientation)
  weak var scrollView: @sil_weak NSScrollView?
  var orientation: NSRulerView.Orientation
  var baselineLocation: CGFloat { get }
  var requiredThickness: CGFloat { get }
  var ruleThickness: CGFloat
  var reservedThicknessForMarkers: CGFloat
  var reservedThicknessForAccessoryView: CGFloat
  var measurementUnits: NSRulerView.UnitName
  var originOffset: CGFloat
  weak var clientView: @sil_weak NSView?
  func addMarker(_ marker: NSRulerMarker)
  func removeMarker(_ marker: NSRulerMarker)
  var markers: [NSRulerMarker]?
  func trackMarker(_ marker: NSRulerMarker, withMouseEvent event: NSEvent) -> Bool
  var accessoryView: NSView?
  func moveRulerline(fromLocation oldLocation: CGFloat, toLocation newLocation: CGFloat)
  func invalidateHashMarks()
  func drawHashMarksAndLabels(in rect: NSRect)
  func drawMarkers(in rect: NSRect)
}
extension NSView {
  func rulerView(_ ruler: NSRulerView, shouldMove marker: NSRulerMarker) -> Bool
  func rulerView(_ ruler: NSRulerView, willMove marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(_ ruler: NSRulerView, didMove marker: NSRulerMarker)
  func rulerView(_ ruler: NSRulerView, shouldRemove marker: NSRulerMarker) -> Bool
  func rulerView(_ ruler: NSRulerView, didRemove marker: NSRulerMarker)
  func rulerView(_ ruler: NSRulerView, shouldAdd marker: NSRulerMarker) -> Bool
  func rulerView(_ ruler: NSRulerView, willAdd marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(_ ruler: NSRulerView, didAdd marker: NSRulerMarker)
  func rulerView(_ ruler: NSRulerView, handleMouseDownWith event: NSEvent)
  func rulerView(_ ruler: NSRulerView, willSetClientView newClient: NSView)
  @available(macOS 10.7, *)
  func rulerView(_ ruler: NSRulerView, locationFor point: NSPoint) -> CGFloat
  @available(macOS 10.7, *)
  func rulerView(_ ruler: NSRulerView, pointForLocation point: CGFloat) -> NSPoint
}
