
@available(macOS 10.12, *)
class TKTokenWatcher : NSObject {
  var tokenIDs: [String] { get }
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  init(insertionHandler: @escaping (String) -> Void)
  @available(macOS 10.13, *)
  func setInsertionHandler(_ insertionHandler: @escaping (String) -> Void)
  func addRemovalHandler(_ removalHandler: @escaping (String) -> Void, forTokenID tokenID: String)
}
