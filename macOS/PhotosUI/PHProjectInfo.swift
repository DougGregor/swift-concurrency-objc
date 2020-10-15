
extension PHProjectInfo {
  @available(macOS 10.13, macOS 10.13, *)
  enum CreationSource : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS 10.13, *)
    case undefined
    @available(macOS 10.13, *)
    case userSelection
    @available(macOS 10.13, *)
    case album
    @available(macOS 10.13, *)
    case memory
    @available(macOS 10.13, *)
    case moment
    @available(macOS 10.13, *)
    case project
    @available(macOS 10.13, *)
    case projectBook
    @available(macOS 10.13, *)
    case projectCalendar
    @available(macOS 10.13, *)
    case projectCard
    @available(macOS 10.13, *)
    case projectPrintOrder
    @available(macOS 10.13, *)
    case projectSlideshow
    @available(macOS 10.13, *)
    case projectExtension
  }
}
@available(macOS 10.13, *)
class PHProjectInfo : NSObject, NSSecureCoding {
  @available(macOS 10.13, *)
  var creationSource: PHProjectInfo.CreationSource { get }
  @available(macOS 10.13, *)
  var projectType: PHProjectType { get }
  @available(macOS 10.13, *)
  var sections: [PHProjectSection] { get }
  @available(macOS 10.14, *)
  var brandingEnabled: Bool { get }
  @available(macOS 10.14, *)
  var pageNumbersEnabled: Bool { get }
  @available(macOS 10.14, *)
  var productIdentifier: String? { get }
  @available(macOS 10.14, *)
  var themeIdentifier: String? { get }
}
extension PHProjectSection {
  @available(macOS 10.13, macOS 10.13, *)
  enum SectionType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS 10.13, *)
    case undefined
    @available(macOS 10.13, *)
    case cover
    @available(macOS 10.13, *)
    case content
    @available(macOS 10.13, *)
    case auxiliary
  }
}
@available(macOS 10.13, *)
class PHProjectSection : NSObject, NSSecureCoding {
  @available(macOS 10.13, *)
  var sectionContents: [PHProjectSectionContent] { get }
  @available(macOS 10.13, *)
  var sectionType: PHProjectSection.SectionType { get }
  @available(macOS 10.13, *)
  var title: String { get }
}
@available(macOS 10.13, *)
class PHProjectSectionContent : NSObject, NSSecureCoding {
  @available(macOS 10.13, *)
  var elements: [PHProjectElement] { get }
  @available(macOS 10.13, *)
  var numberOfColumns: Int { get }
  @available(macOS 10.13, *)
  var aspectRatio: Double { get }
  @available(macOS 10.13, *)
  var cloudAssetIdentifiers: [PHCloudIdentifier] { get }
  @available(macOS 10.14, *)
  var backgroundColor: NSColor? { get }
}
@available(macOS 10.13, *)
class PHProjectElement : NSObject, NSSecureCoding {
  @available(macOS 10.13, *)
  var weight: Double { get }
  @available(macOS 10.13, *)
  var placement: CGRect { get }
}
extension PHProjectRegionOfInterest {
  @available(macOS 10.13, *)
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(macOS 10.13, *)
class PHProjectRegionOfInterest : NSObject, NSSecureCoding {
  @available(macOS 10.13, *)
  var rect: CGRect { get }
  @available(macOS 10.13, *)
  var weight: Double { get }
  @available(macOS 10.14, *)
  var quality: Double { get }
  @available(macOS 10.13, *)
  var identifier: PHProjectRegionOfInterest.Identifier { get }
}
@available(macOS 10.13, *)
class PHProjectAssetElement : PHProjectElement, NSSecureCoding {
  @available(macOS 10.13, *)
  var cloudAssetIdentifier: PHCloudIdentifier { get }
  @available(macOS 10.13, *)
  var annotation: String { get }
  @available(macOS 10.13, *)
  var cropRect: CGRect { get }
  @available(macOS 10.13, *)
  var regionsOfInterest: [PHProjectRegionOfInterest] { get }
  @available(macOS 10.14, *)
  var horizontallyFlipped: Bool { get }
  @available(macOS 10.14, *)
  var verticallyFlipped: Bool { get }
}
extension PHProjectTextElement {
  @available(macOS 10.13, macOS 10.13, *)
  enum ElementType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS 10.13, *)
    case body
    @available(macOS 10.13, *)
    case title
    @available(macOS 10.13, *)
    case subtitle
  }
}
@available(macOS 10.13, *)
class PHProjectTextElement : PHProjectElement, NSSecureCoding {
  @available(macOS 10.13, *)
  var text: String { get }
  @available(macOS 10.13, *)
  var attributedText: NSAttributedString? { get }
  @available(macOS 10.13, *)
  var textElementType: PHProjectTextElement.ElementType { get }
}
@available(macOS 10.13, *)
class PHProjectJournalEntryElement : PHProjectElement, NSSecureCoding {
  @available(macOS 10.13, *)
  var date: Date { get }
  @available(macOS 10.13, *)
  var assetElement: PHProjectAssetElement? { get }
  @available(macOS 10.13, *)
  var textElement: PHProjectTextElement? { get }
}
@available(macOS 10.14, *)
class PHProjectMapElement : PHProjectElement, NSSecureCoding {
  @available(macOS 10.14, *)
  var mapType: MKMapType { get }
  @available(macOS 10.14, *)
  var centerCoordinate: CLLocationCoordinate2D { get }
  @available(macOS 10.14, *)
  var heading: CLLocationDirection { get }
  @available(macOS 10.14, *)
  var pitch: CGFloat { get }
  @available(macOS 10.14, *)
  var altitude: CLLocationDistance { get }
  @available(macOS 10.14, *)
  var annotations: [MKAnnotation] { get }
}
