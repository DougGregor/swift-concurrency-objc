
@available(iOS 14.0, *)
class CPInformationRatingItem : CPInformationItem {
  init(rating: NSNumber?, maximumRating: NSNumber?, title: String?, detail: String?)
  var rating: NSNumber? { get }
  var maximumRating: NSNumber? { get }
}
