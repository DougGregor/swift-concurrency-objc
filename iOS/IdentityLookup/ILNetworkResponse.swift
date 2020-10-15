
@available(iOS 11.0, *)
class ILNetworkResponse : NSObject, NSSecureCoding {
  var urlResponse: HTTPURLResponse { get }
  var data: Data { get }
}
