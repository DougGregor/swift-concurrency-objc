
@available(macOS 10.10, *)
class CKLocationSortDescriptor : NSSortDescriptor, NSSecureCoding {
  init(key: String, relativeLocation: CLLocation)
  @NSCopying var relativeLocation: CLLocation { get }
}
