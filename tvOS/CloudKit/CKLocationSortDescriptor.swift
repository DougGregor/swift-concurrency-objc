
@available(tvOS 8.0, *)
class CKLocationSortDescriptor : NSSortDescriptor, NSSecureCoding {
  init(key: String, relativeLocation: CLLocation)
  @NSCopying var relativeLocation: CLLocation { get }
}
