
let CBUUIDCharacteristicExtendedPropertiesString: String
let CBUUIDCharacteristicUserDescriptionString: String
let CBUUIDClientCharacteristicConfigurationString: String
let CBUUIDServerCharacteristicConfigurationString: String
let CBUUIDCharacteristicFormatString: String
let CBUUIDCharacteristicAggregateFormatString: String
let CBUUIDCharacteristicValidRangeString: String
@available(watchOS 4.0, *)
let CBUUIDL2CAPPSMCharacteristicString: String
@available(watchOS 2.0, *)
class CBUUID : NSObject, NSCopying {
  var data: Data { get }
  @available(watchOS 2.0, *)
  var uuidString: String { get }
  /*not inherited*/ init(string theString: String)
  /*not inherited*/ init(data theData: Data)
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  /*not inherited*/ init(cfuuid theUUID: CFUUID)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(nsuuid theUUID: UUID)
}
