
@available(tvOS 14.0, *)
class GCColor : NSObject, NSCopying, NSSecureCoding {
  init(red: Float, green: Float, blue: Float)
  var red: Float { get }
  var green: Float { get }
  var blue: Float { get }
}
