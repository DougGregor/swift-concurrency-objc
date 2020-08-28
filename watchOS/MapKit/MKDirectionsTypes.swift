
@available(watchOS 2.0, *)
struct MKDirectionsTransportType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var automobile: MKDirectionsTransportType { get }
  static var walking: MKDirectionsTransportType { get }
  @available(watchOS 2.0, *)
  static var transit: MKDirectionsTransportType { get }
  static var any: MKDirectionsTransportType { get }
}
