
@available(tvOS 14.0, *)
protocol UISearchSuggestion : NSObjectProtocol {
  var localizedSuggestion: String? { get }
  optional var localizedDescription: String? { get }
  optional var iconImage: UIImage? { get }
}
@available(tvOS 14.0, *)
class UISearchSuggestionItem : NSObject, UISearchSuggestion {
  init(localizedSuggestion suggestion: String)
  init(localizedSuggestion suggestion: String, localizedDescription description: String?)
  init(localizedSuggestion suggestion: String, localizedDescription description: String?, iconImage: UIImage?)
}
