
@available(iOS 14.0, *)
class MTLLinkedFunctions : NSObject, NSCopying {
  var functions: [MTLFunction]?
  var binaryFunctions: [MTLFunction]?
  var groups: [String : [MTLFunction]]?
}
