
class NSSlider : NSControl, NSAccessibilitySlider {
  @available(macOS 10.10, *)
  var sliderType: NSSlider.SliderType
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var knobThickness: CGFloat { get }
  @available(macOS 10.12, *)
  var isVertical: Bool
  @available(macOS 10.12.2, *)
  @NSCopying var trackFillColor: NSColor?
}
extension NSSlider {
}
extension NSSlider {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSSlider.TickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValue(at index: Int) -> Double
  func rectOfTickMark(at index: Int) -> NSRect
  func indexOfTickMark(at point: NSPoint) -> Int
  func closestTickMarkValue(toValue value: Double) -> Double
}
extension NSSlider {
  @available(macOS 10.12, *)
  convenience init(target: Any?, action: Selector?)
  @available(macOS 10.12, *)
  convenience init(value: Double, minValue: Double, maxValue: Double, target: Any?, action: Selector?)
}
extension NSSlider {
}
