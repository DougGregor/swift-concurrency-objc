
@available(macOS 11.0, *)
class MKMarkerAnnotationView : MKAnnotationView {
  var titleVisibility: MKFeatureVisibility
  var subtitleVisibility: MKFeatureVisibility
  @NSCopying var markerTintColor: NSColor?
  @NSCopying var glyphTintColor: NSColor?
  var glyphText: String?
  @NSCopying var glyphImage: NSImage?
  @NSCopying var selectedGlyphImage: NSImage?
  var animatesWhenAdded: Bool
}
