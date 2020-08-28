
@available(iOS 14.0, *)
class MSServiceAccount : NSObject {
  init(serviceName: String, accountName: String)
  var serviceName: String { get }
  var accountName: String { get }
  var clientID: String?
  var clientSecret: String?
  var configurationURL: URL?
  var authorizationTokenURL: URL?
  var authorizationScope: String?
}
