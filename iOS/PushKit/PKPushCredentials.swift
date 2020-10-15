
@available(iOS 8.0, *)
class PKPushCredentials : NSObject {
  var type: PKPushType { get }
  var token: Data { get }
}
