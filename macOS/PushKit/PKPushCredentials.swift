
@available(macOS 10.15, *)
class PKPushCredentials : NSObject {
  var type: PKPushType { get }
  var token: Data { get }
}
