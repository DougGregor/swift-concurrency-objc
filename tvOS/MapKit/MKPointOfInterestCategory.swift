
struct MKPointOfInterestCategory : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MKPointOfInterestCategory {
  @available(tvOS 13.0, *)
  static let airport: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let amusementPark: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let aquarium: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let atm: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let bakery: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let bank: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let beach: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let brewery: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let cafe: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let campground: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let carRental: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let evCharger: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let fireStation: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let fitnessCenter: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let foodMarket: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let gasStation: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let hospital: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let hotel: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let laundry: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let library: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let marina: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let movieTheater: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let museum: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let nationalPark: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let nightlife: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let park: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let parking: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let pharmacy: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let police: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let postOffice: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let publicTransport: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let restaurant: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let restroom: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let school: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let stadium: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let store: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let theater: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let university: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let winery: MKPointOfInterestCategory
  @available(tvOS 13.0, *)
  static let zoo: MKPointOfInterestCategory
}
