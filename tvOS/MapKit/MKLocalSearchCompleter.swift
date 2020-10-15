
extension MKLocalSearchCompleter {
  @available(tvOS, introduced: 9.2, deprecated: 13.0, message: "Use MKLocalSearchCompleterResultType")
  enum FilterType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locationsAndQueries
    case locationsOnly
  }
  @available(tvOS 13.0, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearchCompleter.ResultType { get }
    static var pointOfInterest: MKLocalSearchCompleter.ResultType { get }
    static var query: MKLocalSearchCompleter.ResultType { get }
  }
}
@available(tvOS 9.2, *)
class MKLocalSearchCompleter : NSObject {
  var queryFragment: String
  var region: MKCoordinateRegion
  @available(tvOS, introduced: 9.2, deprecated: 13.0, message: "Use resultTypes")
  var filterType: MKLocalSearchCompleter.FilterType
  @available(tvOS 13.0, *)
  var resultTypes: MKLocalSearchCompleter.ResultType
  @available(tvOS 13.0, *)
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  weak var delegate: @sil_weak MKLocalSearchCompleterDelegate?
  var results: [MKLocalSearchCompletion] { get }
  var isSearching: Bool { get }
  func cancel()
}
@available(tvOS 9.2, *)
protocol MKLocalSearchCompleterDelegate : NSObjectProtocol {
  @asyncHandler optional func completerDidUpdateResults(_ completer: MKLocalSearchCompleter)
  @asyncHandler optional func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error)
}
@available(tvOS 9.2, *)
class MKLocalSearchCompletion : NSObject {
  var title: String { get }
  var titleHighlightRanges: [NSValue] { get }
  var subtitle: String { get }
  var subtitleHighlightRanges: [NSValue] { get }
}
extension MKLocalSearch.Request {
  @available(tvOS 9.2, *)
  init(completion: MKLocalSearchCompletion)
}
