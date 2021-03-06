
@available(watchOS 2.0, *)
enum WKAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case cancel
  case destructive
}
typealias WKAlertActionHandler = () -> Void
@available(watchOS 2.0, *)
class WKAlertAction : NSObject {
  convenience init(title: String, style: WKAlertActionStyle, handler: @escaping WKAlertActionHandler)
}
