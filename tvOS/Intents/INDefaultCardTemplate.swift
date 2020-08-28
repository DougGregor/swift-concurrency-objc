
@available(tvOS 12.0, *)
class INDefaultCardTemplate : NSObject, NSCopying, NSSecureCoding {
  var title: String
  var subtitle: String?
  @NSCopying var image: INImage?
  init(title: String)
}
