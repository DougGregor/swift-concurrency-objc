
@available(tvOS 14.0, *)
class MTLLinkedFunctions : NSObject, NSCopying {
  var functions: [MTLFunction]?
  var groups: [String : [MTLFunction]]?
}
