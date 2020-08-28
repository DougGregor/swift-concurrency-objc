
@available(tvOS 11.0, *)
class MKMarkerAnnotationView : MKAnnotationView {
  var titleVisibility: MKFeatureVisibility
  var subtitleVisibility: MKFeatureVisibility
  @NSCopying var markerTintColor: UIColor?
  @NSCopying var glyphTintColor: UIColor?
  var glyphText: String?
  @NSCopying var glyphImage: UIImage?
  @NSCopying var selectedGlyphImage: UIImage?
  var animatesWhenAdded: Bool
}
