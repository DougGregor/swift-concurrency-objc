
@available(tvOS 3.0, *)
class NSPropertyMapping : NSObject {
  var name: String?
  var valueExpression: NSExpression?
  var userInfo: [AnyHashable : Any]?
}
