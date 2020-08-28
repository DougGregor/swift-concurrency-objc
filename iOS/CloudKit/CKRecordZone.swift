
extension CKRecordZone {
  @available(iOS 8.0, *)
  struct Capabilities : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var fetchChanges: CKRecordZone.Capabilities { get }
    static var atomic: CKRecordZone.Capabilities { get }
    @available(iOS 10.0, *)
    static var sharing: CKRecordZone.Capabilities { get }
  }
}
@available(iOS 8.0, *)
let __CKRecordZoneDefaultName: String
@available(iOS 8.0, *)
class CKRecordZone : NSObject, NSSecureCoding, NSCopying {
  class func `default`() -> CKRecordZone
  init(zoneName: String)
  init(zoneID: CKRecordZone.ID)
  @NSCopying var zoneID: CKRecordZone.ID { get }
  var capabilities: CKRecordZone.Capabilities { get }
}
