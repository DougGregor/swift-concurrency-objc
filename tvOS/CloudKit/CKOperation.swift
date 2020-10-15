
@available(tvOS 8.0, *)
class CKOperation : Operation {
  @available(tvOS 11.0, *)
  @NSCopying var configuration: CKOperation.Configuration!
  @available(tvOS 11.0, *)
  var group: CKOperationGroup?
  @available(tvOS 9.2, *)
  var __operationID: String { get }
  @available(tvOS 9.2, *)
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
  @available(tvOS 11.0, *)
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
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var container: CKContainer?
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var allowsCellularAccess: Bool
  @available(tvOS, introduced: 9.2, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var isLongLived: Bool
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var timeoutIntervalForRequest: TimeInterval
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var timeoutIntervalForResource: TimeInterval
}
