
@available(watchOS 4.0, *)
class HMNumberRange : NSObject {
  convenience init(minValue: NSNumber, maxValue: NSNumber)
  convenience init(minValue: NSNumber)
  convenience init(maxValue: NSNumber)
  var minValue: NSNumber? { get }
  var maxValue: NSNumber? { get }
}
