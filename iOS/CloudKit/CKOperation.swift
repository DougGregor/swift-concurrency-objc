
@available(iOS 8.0, *)
class CKOperation : Operation {
  @available(iOS 11.0, *)
  @NSCopying var configuration: CKOperation.Configuration!
  @available(iOS 11.0, *)
  var group: CKOperationGroup?
  @available(iOS 9.3, *)
  var __operationID: String { get }
  @available(iOS 9.3, *)
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
  @available(iOS 11.0, *)
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
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var container: CKContainer?
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var allowsCellularAccess: Bool
  @available(iOS, introduced: 9.3, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var isLongLived: Bool
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var timeoutIntervalForRequest: TimeInterval
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "Use CKOperationConfiguration")
  var timeoutIntervalForResource: TimeInterval
}
