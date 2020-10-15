
@available(macOS 10.5, *)
class NSPropertyMapping : NSObject {
  var name: String?
  var valueExpression: NSExpression?
  var userInfo: [AnyHashable : Any]?
}
