
@available(macOS 10.11, *)
class NSDictionaryControllerKeyValuePair : NSObject {
  var key: String?
  var value: Any?
  var localizedKey: String?
  var isExplicitlyIncluded: Bool { get }
}
@available(macOS 10.5, *)
class NSDictionaryController : NSArrayController {
  var initialKey: String
  var initialValue: Any
  var includedKeys: [String]
  var excludedKeys: [String]
  var localizedKeyDictionary: [String : String]
  var localizedKeyTable: String?
}
