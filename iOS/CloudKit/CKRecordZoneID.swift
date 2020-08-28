
extension CKRecordZone {
  @available(iOS 8.0, *)
  class ID : NSObject, NSSecureCoding, NSCopying {
    init(__zoneName zoneName: String, ownerName: String)
    var zoneName: String { get }
    var ownerName: String { get }
  }
}
