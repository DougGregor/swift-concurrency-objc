
@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct IntentConfiguration<Intent, Content> : WidgetConfiguration where Intent : INIntent, Content : View {
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension IntentConfiguration {
  init<Provider>(kind: String, intent: Intent.Type, provider: Provider, content: @escaping (Provider.Entry) -> Content) where Intent == Provider.Intent, Provider : IntentTimelineProvider
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
protocol IntentTimelineProvider {
  associatedtype Entry : TimelineEntry
  associatedtype Intent : INIntent
  typealias Context = TimelineProviderContext
  func placeholder(in context: Self.Context) -> Self.Entry
  func getSnapshot(for configuration: Self.Intent, in context: Self.Context, completion: @escaping (Self.Entry) -> Void)
  func getTimeline(for configuration: Self.Intent, in context: Self.Context, completion: @escaping (Timeline<Self.Entry>) -> Void)
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct StaticConfiguration<Content> : WidgetConfiguration where Content : View {
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension StaticConfiguration {
  init<Provider>(kind: String, provider: Provider, content: @escaping (Provider.Entry) -> Content) where Provider : TimelineProvider
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct Timeline<EntryType> where EntryType : TimelineEntry {
  let entries: [EntryType]
  let policy: TimelineReloadPolicy
  init(entries: [EntryType], policy: TimelineReloadPolicy)
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
protocol TimelineEntry {
  var date: Date { get }
  var relevance: TimelineEntryRelevance? { get }
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension TimelineEntry {
  var relevance: TimelineEntryRelevance? { get }
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct TimelineEntryRelevance : Codable, Hashable {
  var score: Float
  var duration: TimeInterval
  init(score: Float, duration: TimeInterval = 0.0)
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
protocol TimelineProvider {
  associatedtype Entry : TimelineEntry
  typealias Context = TimelineProviderContext
  func placeholder(in context: Self.Context) -> Self.Entry
  func getSnapshot(in context: Self.Context, completion: @escaping (Self.Entry) -> Void)
  func getTimeline(in context: Self.Context, completion: @escaping (Timeline<Self.Entry>) -> Void)
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct TimelineProviderContext {
  @dynamicMemberLookup struct EnvironmentVariants {
    subscript<T>(dynamicMember keyPath: WritableKeyPath<EnvironmentValues, T>) -> [T]? { get }
    subscript<T>(keyPath: WritableKeyPath<EnvironmentValues, T>) -> [T]? { get }
  }
  let environmentVariants: TimelineProviderContext.EnvironmentVariants
  let family: WidgetFamily
  let isPreview: Bool
  let displaySize: CGSize
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct TimelineReloadPolicy : Equatable {
  static let atEnd: TimelineReloadPolicy
  static let never: TimelineReloadPolicy
  static func after(_ date: Date) -> TimelineReloadPolicy
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
class WidgetCenter {
  static let shared: WidgetCenter
  struct UserInfoKey {
    static let kind: String
    static let family: String
  }
  func getCurrentConfigurations(_ completion: @escaping (Result<[WidgetInfo], Error>) -> Void)
  func reloadTimelines(ofKind kind: String)
  func reloadAllTimelines()
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
enum WidgetFamily : Int, RawRepresentable, CustomDebugStringConvertible, CustomStringConvertible {
  case systemSmall
  case systemMedium
  case systemLarge
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension WidgetFamily : Equatable {
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension WidgetFamily : Hashable {
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct WidgetInfo {
  let configuration: INIntent?
  let family: WidgetFamily
  let kind: String
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension WidgetInfo : Identifiable, Hashable, Equatable {
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension WidgetInfo : CustomDebugStringConvertible {
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct WidgetPreviewContext : PreviewContext {
  init(family: WidgetFamily)
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct _ClockHandRotationEffect : ViewModifier, _ArchivableViewModifier {
  @available(*, deprecated, message: "Only remains to not break bincompat")
  static func resynchronize()
  enum Period {
    case hourHand
    case minuteHand
    case secondHand
    case custom(TimeInterval)
  }
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  func widgetURL(_ url: URL?) -> some View
  
}

extension Widget {
  @available(iOS 14.0, macOS 11, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  static func main()
}

extension WidgetBundle {
  @available(iOS 14.0, macOS 11, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  static func main()
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension EnvironmentValues {
  var widgetFamily: WidgetFamily { get }
}

extension View {
  @available(iOS 14.0, macOS 11, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  func _clockHandRotationEffect(_ period: _ClockHandRotationEffect.Period, in timeZone: TimeZone, anchor: UnitPoint = .center) -> some View
  
}

@available(iOS 14.0, macOS 11, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension WidgetConfiguration {
  func configurationDisplayName(_ displayName: Text) -> some WidgetConfiguration
  
  func configurationDisplayName(_ displayNameKey: LocalizedStringKey) -> some WidgetConfiguration
  
  @_disfavoredOverload func configurationDisplayName<S>(_ displayName: S) -> some WidgetConfiguration where S : StringProtocol
  
  func description(_ description: Text) -> some WidgetConfiguration
  
  func description(_ descriptionKey: LocalizedStringKey) -> some WidgetConfiguration
  
  @_disfavoredOverload func description<S>(_ description: S) -> some WidgetConfiguration where S : StringProtocol
  
  func supportedFamilies(_ families: [WidgetFamily]) -> some WidgetConfiguration
  
  func onBackgroundURLSessionEvents(matching matchingString: String, _ urlSessionEvent: @escaping ((String, @escaping () -> Void) -> Void)) -> some WidgetConfiguration
  
  func onBackgroundURLSessionEvents(matching matchingBlock: ((String) -> Bool)? = nil, _ urlSessionEvent: @escaping ((String, @escaping () -> Void) -> Void)) -> some WidgetConfiguration
  
}

