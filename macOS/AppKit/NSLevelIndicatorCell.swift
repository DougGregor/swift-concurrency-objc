
extension NSLevelIndicator {
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case relevancy
    case continuousCapacity
    case discreteCapacity
    case rating
  }
}
class NSLevelIndicatorCell : NSActionCell {
  init(levelIndicatorStyle: NSLevelIndicator.Style)
  var levelIndicatorStyle: NSLevelIndicator.Style
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSSlider.TickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func rectOfTickMark(at index: Int) -> NSRect
  func tickMarkValue(at index: Int) -> Double
}
