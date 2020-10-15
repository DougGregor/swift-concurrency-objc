
@available(macOS 10.10, *)
class CKOperation : Operation {
  @available(macOS 10.13, *)
  @NSCopying var configuration: CKOperation.Configuration!
  @available(macOS 10.13, *)
  var group: CKOperationGroup?
  @available(macOS 10.12, *)
  var __operationID: String { get }
  @available(macOS 10.12, *)
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
  @available(macOS 10.13, *)
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
  @available(macOS, introduced: 10.10, deprecated: 10.13, message: "Use CKOperationConfiguration")
  var container: CKContainer?
  @available(macOS, introduced: 10.10, deprecated: 10.13, message: "Use CKOperationConfiguration")
  var allowsCellularAccess: Bool
  @available(macOS, introduced: 10.12, deprecated: 10.13, message: "Use CKOperationConfiguration")
  var isLongLived: Bool
  @available(macOS, introduced: 10.12, deprecated: 10.13, message: "Use CKOperationConfiguration")
  var timeoutIntervalForRequest: TimeInterval
  @available(macOS, introduced: 10.12, deprecated: 10.13, message: "Use CKOperationConfiguration")
  var timeoutIntervalForResource: TimeInterval
}
