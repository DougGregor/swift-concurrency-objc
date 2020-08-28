
extension CKRecordZone {
  @available(watchOS 3.0, *)
  class ID : NSObject, NSSecureCoding, NSCopying {
    init(__zoneName zoneName: String, ownerName: String)
    var zoneName: String { get }
    var ownerName: String { get }
  }
}
