
@available(iOS 10.0, *)
class TKTokenWatcher : NSObject {
  var tokenIDs: [String] { get }
  @available(iOS, introduced: 10.0, deprecated: 11.0)
  init(insertionHandler: @escaping (String) -> Void)
  @available(iOS 11.0, *)
  func setInsertionHandler(_ insertionHandler: @escaping (String) -> Void)
  func addRemovalHandler(_ removalHandler: @escaping (String) -> Void, forTokenID tokenID: String)
}
