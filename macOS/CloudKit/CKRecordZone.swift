
extension CKRecordZone {
  @available(macOS 10.10, *)
  struct Capabilities : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var fetchChanges: CKRecordZone.Capabilities { get }
    static var atomic: CKRecordZone.Capabilities { get }
    @available(macOS 10.12, *)
    static var sharing: CKRecordZone.Capabilities { get }
  }
}
@available(macOS 10.10, *)
let __CKRecordZoneDefaultName: String
@available(macOS 10.10, *)
class CKRecordZone : NSObject, NSSecureCoding, NSCopying {
  class func `default`() -> CKRecordZone
  init(zoneName: String)
  init(zoneID: CKRecordZone.ID)
  @NSCopying var zoneID: CKRecordZone.ID { get }
  var capabilities: CKRecordZone.Capabilities { get }
}
