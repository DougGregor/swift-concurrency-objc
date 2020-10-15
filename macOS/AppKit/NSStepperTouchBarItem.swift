
@available(macOS 10.15, *)
class NSStepperTouchBarItem : NSTouchBarItem {
  convenience init(identifier: NSTouchBarItem.Identifier, formatter: Formatter)
  convenience init(identifier: NSTouchBarItem.Identifier, drawingHandler: @escaping (NSRect, Double) -> Void)
  var maxValue: Double
  var minValue: Double
  var increment: Double
  var value: Double
  weak var target: @sil_weak AnyObject?
  var action: Selector?
}
