
@available(watchOS 2.0, *)
class HMCharacteristicMetadata : NSObject {
  var minimumValue: NSNumber? { get }
  var maximumValue: NSNumber? { get }
  var stepValue: NSNumber? { get }
  var maxLength: NSNumber? { get }
  var format: String? { get }
  var units: String? { get }
  var manufacturerDescription: String? { get }
  @available(watchOS 3.0, *)
  var validValues: [NSNumber]? { get }
}
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatBool: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatInt: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatFloat: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatString: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatArray: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatDictionary: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatUInt8: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatUInt16: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatUInt32: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatUInt64: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatData: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataFormatTLV8: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataUnitsCelsius: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataUnitsFahrenheit: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataUnitsPercentage: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataUnitsArcDegree: String
@available(watchOS 2.0, *)
let HMCharacteristicMetadataUnitsSeconds: String
@available(watchOS 2.2, *)
let HMCharacteristicMetadataUnitsLux: String
@available(watchOS 3.0, *)
let HMCharacteristicMetadataUnitsPartsPerMillion: String
@available(watchOS 3.0, *)
let HMCharacteristicMetadataUnitsMicrogramsPerCubicMeter: String
