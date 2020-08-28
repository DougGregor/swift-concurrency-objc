
let CBUUIDCharacteristicExtendedPropertiesString: String
let CBUUIDCharacteristicUserDescriptionString: String
let CBUUIDClientCharacteristicConfigurationString: String
let CBUUIDServerCharacteristicConfigurationString: String
let CBUUIDCharacteristicFormatString: String
let CBUUIDCharacteristicAggregateFormatString: String
let CBUUIDCharacteristicValidRangeString: String
@available(tvOS 11.0, *)
let CBUUIDL2CAPPSMCharacteristicString: String
@available(tvOS 5.0, *)
class CBUUID : NSObject, NSCopying {
  var data: Data { get }
  @available(tvOS 7.1, *)
  var uuidString: String { get }
  /*not inherited*/ init(string theString: String)
  /*not inherited*/ init(data theData: Data)
  @available(tvOS, introduced: 5.0, deprecated: 9.0)
  /*not inherited*/ init(cfuuid theUUID: CFUUID)
  @available(tvOS 7.0, *)
  /*not inherited*/ init(nsuuid theUUID: UUID)
}
