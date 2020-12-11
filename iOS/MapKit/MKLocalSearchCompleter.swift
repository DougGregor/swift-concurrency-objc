
extension MKLocalSearchCompleter {
  @available(iOS, introduced: 9.3, deprecated: 13.0, message: "Use MKLocalSearchCompleterResultType")
  enum FilterType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locationsAndQueries
    case locationsOnly
  }
  @available(iOS 13.0, *)
  struct ResultType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var address: MKLocalSearchCompleter.ResultType { get }
    static var pointOfInterest: MKLocalSearchCompleter.ResultType { get }
    static var query: MKLocalSearchCompleter.ResultType { get }
  }
}
@available(iOS 9.3, *)
class MKLocalSearchCompleter : NSObject {
  var queryFragment: String
  var region: MKCoordinateRegion
  @available(iOS, introduced: 9.3, deprecated: 13.0, message: "Use resultTypes")
  var filterType: MKLocalSearchCompleter.FilterType
  @available(iOS 13.0, *)
  var resultTypes: MKLocalSearchCompleter.ResultType
  @available(iOS 13.0, *)
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  weak var delegate: @sil_weak MKLocalSearchCompleterDelegate?
  var results: [MKLocalSearchCompletion] { get }
  var isSearching: Bool { get }
  func cancel()
}
@available(iOS 9.3, *)
protocol MKLocalSearchCompleterDelegate : NSObjectProtocol {
  optional func completerDidUpdateResults(_ completer: MKLocalSearchCompleter)
  optional func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error)
}
@available(iOS 9.3, *)
class MKLocalSearchCompletion : NSObject {
  var title: String { get }
  var titleHighlightRanges: [NSValue] { get }
  var subtitle: String { get }
  var subtitleHighlightRanges: [NSValue] { get }
}
extension MKLocalSearch.Request {
  @available(iOS 9.3, *)
  init(completion: MKLocalSearchCompletion)
}
