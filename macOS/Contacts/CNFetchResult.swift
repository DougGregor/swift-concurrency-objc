
@available(macOS 10.15, *)
class CNFetchResult<ValueType> : NSObject where ValueType : AnyObject {
  var value: ValueType { get }
  var currentHistoryToken: Data { get }
}
