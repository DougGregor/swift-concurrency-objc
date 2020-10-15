
@available(tvOS 10.0, *)
class HMCharacteristicMetadata : NSObject {
  var minimumValue: NSNumber? { get }
  var maximumValue: NSNumber? { get }
  var stepValue: NSNumber? { get }
  var maxLength: NSNumber? { get }
  var format: String? { get }
  var units: String? { get }
  var manufacturerDescription: String? { get }
  @available(tvOS 10.0, *)
  var validValues: [NSNumber]? { get }
}
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatBool: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatInt: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatFloat: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatString: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatArray: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatDictionary: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatUInt8: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatUInt16: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatUInt32: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatUInt64: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatData: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataFormatTLV8: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsCelsius: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsFahrenheit: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsPercentage: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsArcDegree: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsSeconds: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsLux: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsPartsPerMillion: String
@available(tvOS 10.0, *)
let HMCharacteristicMetadataUnitsMicrogramsPerCubicMeter: String
