
extension NSLevelIndicator {
  enum PlaceholderVisibility : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case always
    case whileEditing
  }
}
class NSLevelIndicator : NSControl {
  @available(macOS 10.10, *)
  var levelIndicatorStyle: NSLevelIndicator.Style
  @available(macOS 10.13, *)
  var isEditable: Bool
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSSlider.TickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func tickMarkValue(at index: Int) -> Double
  func rectOfTickMark(at index: Int) -> NSRect
  @available(macOS 10.13, *)
  @NSCopying var fillColor: NSColor!
  @available(macOS 10.13, *)
  @NSCopying var warningFillColor: NSColor!
  @available(macOS 10.13, *)
  @NSCopying var criticalFillColor: NSColor!
  @available(macOS 10.13, *)
  var drawsTieredCapacityLevels: Bool
  @available(macOS 10.13, *)
  var placeholderVisibility: NSLevelIndicator.PlaceholderVisibility
  @available(macOS 10.13, *)
  var ratingImage: NSImage?
  @available(macOS 10.13, *)
  var ratingPlaceholderImage: NSImage?
}
