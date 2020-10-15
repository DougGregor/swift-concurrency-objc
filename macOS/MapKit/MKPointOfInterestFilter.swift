
@available(macOS 10.15, *)
class MKPointOfInterestFilter : NSObject, NSSecureCoding, NSCopying {
  class var includingAll: MKPointOfInterestFilter { get }
  class var excludingAll: MKPointOfInterestFilter { get }
  init(including categories: [MKPointOfInterestCategory])
  init(excluding categories: [MKPointOfInterestCategory])
  func includes(_ category: MKPointOfInterestCategory) -> Bool
  func excludes(_ category: MKPointOfInterestCategory) -> Bool
}
