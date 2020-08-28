
@available(watchOS 6.0, *)
class CNFetchResult<ValueType> : NSObject where ValueType : AnyObject {
  var value: ValueType { get }
  var currentHistoryToken: Data { get }
}
