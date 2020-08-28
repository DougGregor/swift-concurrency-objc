
struct MKPointOfInterestCategory : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MKPointOfInterestCategory {
  @available(watchOS 6.0, *)
  static let airport: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let amusementPark: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let aquarium: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let atm: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let bakery: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let bank: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let beach: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let brewery: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let cafe: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let campground: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let carRental: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let evCharger: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let fireStation: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let fitnessCenter: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let foodMarket: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let gasStation: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let hospital: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let hotel: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let laundry: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let library: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let marina: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let movieTheater: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let museum: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let nationalPark: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let nightlife: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let park: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let parking: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let pharmacy: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let police: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let postOffice: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let publicTransport: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let restaurant: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let restroom: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let school: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let stadium: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let store: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let theater: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let university: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let winery: MKPointOfInterestCategory
  @available(watchOS 6.0, *)
  static let zoo: MKPointOfInterestCategory
}
