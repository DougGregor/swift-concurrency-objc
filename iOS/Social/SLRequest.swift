
enum SLRequestMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GET
  case POST
  case DELETE
  case PUT
}
typealias SLRequestHandler = (Data?, HTTPURLResponse?, Error?) -> Void
@available(iOS 6.0, *)
class SLRequest : NSObject {
  /*not inherited*/ init!(forServiceType serviceType: String!, requestMethod: SLRequestMethod, url: URL!, parameters: [AnyHashable : Any]!)
  var requestMethod: SLRequestMethod { get }
  var url: URL! { get }
  var parameters: [AnyHashable : Any]! { get }
  func addMultipartData(_ data: Data!, withName name: String!, type: String!, filename: String!)
  func preparedURLRequest() -> URLRequest!
  func perform(handler: SLRequestHandler!)
}
