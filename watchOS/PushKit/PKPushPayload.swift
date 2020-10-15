
@available(watchOS 6.0, *)
class PKPushPayload : NSObject {
  var type: PKPushType { get }
  var dictionaryPayload: [AnyHashable : Any] { get }
}
