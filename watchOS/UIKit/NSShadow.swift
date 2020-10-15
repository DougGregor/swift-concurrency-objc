
@available(watchOS 2.0, *)
class NSShadow : NSObject, NSCopying, NSSecureCoding {
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: Any?
}
