
extension NSSlider {
  enum TickMarkPosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case below
    case above
    static var leading: NSSlider.TickMarkPosition { get }
    static var trailing: NSSlider.TickMarkPosition { get }
  }
  enum SliderType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case linear
    case circular
  }
}
class NSSliderCell : NSActionCell {
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var sliderType: NSSlider.SliderType
  @available(macOS 10.11, *)
  var isVertical: Bool
  var trackRect: NSRect { get }
  var knobThickness: CGFloat { get }
  func knobRect(flipped: Bool) -> NSRect
  @available(macOS 10.9, *)
  func barRect(flipped: Bool) -> NSRect
  func drawKnob(_ knobRect: NSRect)
  func drawKnob()
  func drawBar(inside rect: NSRect, flipped: Bool)
}
extension NSSliderCell {
}
extension NSSliderCell {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSSlider.TickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValue(at index: Int) -> Double
  func rectOfTickMark(at index: Int) -> NSRect
  func indexOfTickMark(at point: NSPoint) -> Int
  func closestTickMarkValue(toValue value: Double) -> Double
  @available(macOS 10.9, *)
  func drawTickMarks()
}
extension NSSliderCell {
}
