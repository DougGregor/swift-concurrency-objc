
let CBUUIDCharacteristicExtendedPropertiesString: String
let CBUUIDCharacteristicUserDescriptionString: String
let CBUUIDClientCharacteristicConfigurationString: String
let CBUUIDServerCharacteristicConfigurationString: String
let CBUUIDCharacteristicFormatString: String
let CBUUIDCharacteristicAggregateFormatString: String
let CBUUIDCharacteristicValidRangeString: String
@available(macOS 10.13, *)
let CBUUIDL2CAPPSMCharacteristicString: String
@available(macOS 10.7, *)
class CBUUID : NSObject, NSCopying {
  var data: Data { get }
  @available(macOS 10.10, *)
  var uuidString: String { get }
  /*not inherited*/ init(string theString: String)
  /*not inherited*/ init(data theData: Data)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  /*not inherited*/ init(cfuuid theUUID: CFUUID)
  @available(macOS 10.9, *)
  /*not inherited*/ init(nsuuid theUUID: UUID)
}
