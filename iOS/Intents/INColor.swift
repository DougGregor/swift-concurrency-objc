
@available(iOS 14.0, *)
class INColor : NSObject, NSCopying, NSSecureCoding {
  init(red: Double, green: Double, blue: Double)
  var red: Double { get }
  var green: Double { get }
  var blue: Double { get }
}
