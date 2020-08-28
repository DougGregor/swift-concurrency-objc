
@available(watchOS 3.0, *)
class CKOperation : Operation {
  @available(watchOS 4.0, *)
  @NSCopying var configuration: CKOperation.Configuration!
  @available(watchOS 4.0, *)
  var group: CKOperationGroup?
  @available(watchOS 3.0, *)
  var __operationID: String { get }
  @available(watchOS 3.0, *)
  var longLivedOperationWasPersistedBlock: (() -> Void)?
}

@available(macOS 10.12, iOS 9.3, tvOS 9.2, watchOS 3.0, *)
@nonobjc extension CKOperation {
  @available(swift 4.2)
  var operationID: CKOperation.ID { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKOperation {
  @available(swift 4.2)
  typealias ID = String
}
extension CKOperation {
  @available(watchOS 4.0, *)
  class Configuration : NSObject {
    var container: CKContainer?
    var qualityOfService: QualityOfService
    var allowsCellularAccess: Bool
    var isLongLived: Bool
    var timeoutIntervalForRequest: TimeInterval
    var timeoutIntervalForResource: TimeInterval
  }
}
extension CKOperation {
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use CKOperationConfiguration")
  var container: CKContainer?
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use CKOperationConfiguration")
  var allowsCellularAccess: Bool
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use CKOperationConfiguration")
  var isLongLived: Bool
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use CKOperationConfiguration")
  var timeoutIntervalForRequest: TimeInterval
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use CKOperationConfiguration")
  var timeoutIntervalForResource: TimeInterval
}
