
extension MKLocalSearch {
  @available(tvOS 13.0, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearch.ResultType { get }
    static var pointOfInterest: MKLocalSearch.ResultType { get }
  }
  @available(tvOS 9.2, *)
  class Request : NSObject, NSCopying {
    @available(tvOS 13.0, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String)
    @available(tvOS 13.0, *)
    convenience init(__naturalLanguageQuery naturalLanguageQuery: String, region: MKCoordinateRegion)
    var naturalLanguageQuery: String?
    var region: MKCoordinateRegion
    @available(tvOS 13.0, *)
    var resultTypes: MKLocalSearch.ResultType
    @available(tvOS 13.0, *)
    @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  }
}
