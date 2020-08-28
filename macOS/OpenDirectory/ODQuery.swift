
protocol ODQueryDelegate : NSObjectProtocol {
  @available(macOS 10.6, *)
  func query(_ inQuery: ODQuery!, foundResults inResults: [Any]!, error inError: Error!)
}
class ODQuery : NSObject, NSCopying {
  @available(macOS 10.6, *)
  init(node inNode: ODNode!, forRecordTypes inRecordTypeOrList: Any!, attribute inAttribute: String!, matchType inMatchType: ODMatchType, queryValues inQueryValueOrList: Any!, returnAttributes inReturnAttributeOrList: Any!, maximumResults inMaximumResults: Int) throws
  @available(macOS 10.6, *)
  func resultsAllowingPartial(_ inAllowPartialResults: Bool) throws -> [Any]
  @available(macOS 10.6, *)
  unowned(unsafe) var delegate: @sil_unmanaged ODQueryDelegate!
  @available(macOS 10.6, *)
  func schedule(in inRunLoop: RunLoop!, forMode inMode: String!)
  @available(macOS 10.6, *)
  func remove(from inRunLoop: RunLoop!, forMode inMode: String!)
  @available(macOS 10.6, *)
  func synchronize()
  @available(macOS 10.6, *)
  var operationQueue: OperationQueue!
}
