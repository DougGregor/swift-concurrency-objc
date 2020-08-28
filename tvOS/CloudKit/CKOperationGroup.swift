
extension CKOperationGroup {
  @available(tvOS 11.0, *)
  enum TransferSize : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case kilobytes
    case megabytes
    case tensOfMegabytes
    case hundredsOfMegabytes
    case gigabytes
    case tensOfGigabytes
    case hundredsOfGigabytes
  }
}
@available(tvOS 11.0, *)
class CKOperationGroup : NSObject, NSSecureCoding {
  var operationGroupID: String { get }
  @NSCopying var defaultConfiguration: CKOperation.Configuration!
  var name: String?
  var quantity: Int
  var expectedSendSize: CKOperationGroup.TransferSize
  var expectedReceiveSize: CKOperationGroup.TransferSize
}
