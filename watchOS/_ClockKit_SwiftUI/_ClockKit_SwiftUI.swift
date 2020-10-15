
@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicCircularClosedGaugeView<Label> : CLKComplicationTemplateGraphicCircular where Label : View {
  @objc @_NilHidden final var gaugeProvider: CLKGaugeProvider
  var _gaugeProvider: _NilHidden<CLKGaugeProvider>
  @_NilHidden final var label: Label
  var _label: _NilHidden<Label>
  init(gaugeProvider: CLKGaugeProvider, label: Label)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicCircularOpenGaugeView<Label> : CLKComplicationTemplateGraphicCircular where Label : View {
  @objc @_NilHidden final var gaugeProvider: CLKGaugeProvider
  var _gaugeProvider: _NilHidden<CLKGaugeProvider>
  @objc @_NilHidden final var centerTextProvider: CLKTextProvider
  var _centerTextProvider: _NilHidden<CLKTextProvider>
  @_NilHidden final var bottomLabel: Label
  var _bottomLabel: _NilHidden<Label>
  init(gaugeProvider: CLKGaugeProvider, centerTextProvider: CLKTextProvider, bottomLabel: Label)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicCircularStackViewText<Content> : CLKComplicationTemplateGraphicCircular where Content : View {
  @_NilHidden final var content: Content
  var _content: _NilHidden<Content>
  @objc @_NilHidden final var textProvider: CLKTextProvider
  var _textProvider: _NilHidden<CLKTextProvider>
  init(content: Content, textProvider: CLKTextProvider)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicCircularView<Content> : CLKComplicationTemplateGraphicCircular where Content : View {
  @_NilHidden final var content: Content
  var _content: _NilHidden<Content>
  init(_ content: Content)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicCornerCircularView<Content> : CLKComplicationTemplate where Content : View {
  @_NilHidden final var content: Content
  var _content: _NilHidden<Content>
  init(_ content: Content)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicCornerGaugeView<Label> : CLKComplicationTemplate where Label : View {
  @objc @_NilHidden final var gaugeProvider: CLKGaugeProvider
  var _gaugeProvider: _NilHidden<CLKGaugeProvider>
  @objc @_NilHidden final var leadingTextProvider: CLKTextProvider?
  var _leadingTextProvider: _NilHidden<CLKTextProvider?>
  @objc @_NilHidden final var trailingTextProvider: CLKTextProvider?
  var _trailingTextProvider: _NilHidden<CLKTextProvider?>
  @_NilHidden final var label: Label
  var _label: _NilHidden<Label>
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider? = nil, trailingTextProvider: CLKTextProvider? = nil, label: Label)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicCornerTextView<Label> : CLKComplicationTemplate where Label : View {
  @objc @_NilHidden final var textProvider: CLKTextProvider
  var _textProvider: _NilHidden<CLKTextProvider>
  @_NilHidden final var label: Label
  var _label: _NilHidden<Label>
  init(textProvider: CLKTextProvider, label: Label)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeView<Label> : CLKComplicationTemplateGraphicExtraLargeCircular where Label : View {
  @objc @_NilHidden final var gaugeProvider: CLKGaugeProvider
  var _gaugeProvider: _NilHidden<CLKGaugeProvider>
  @_NilHidden final var label: Label
  var _label: _NilHidden<Label>
  init(gaugeProvider: CLKGaugeProvider, label: Label)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
class CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeView<Label> : CLKComplicationTemplateGraphicExtraLargeCircular where Label : View {
  @objc @_NilHidden var gaugeProvider: CLKGaugeProvider
  var _gaugeProvider: _NilHidden<CLKGaugeProvider>
  @objc @_NilHidden var centerTextProvider: CLKTextProvider
  var _centerTextProvider: _NilHidden<CLKTextProvider>
  @_NilHidden var bottomLabel: Label
  var _bottomLabel: _NilHidden<Label>
  init(gaugeProvider: CLKGaugeProvider, centerTextProvider: CLKTextProvider, bottomLabel: Label)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicExtraLargeCircularStackViewText<Content> : CLKComplicationTemplateGraphicExtraLargeCircular where Content : View {
  @_NilHidden final var content: Content
  var _content: _NilHidden<Content>
  @objc @_NilHidden final var textProvider: CLKTextProvider
  var _textProvider: _NilHidden<CLKTextProvider>
  init(content: Content, textProvider: CLKTextProvider)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicExtraLargeCircularView<Content> : CLKComplicationTemplateGraphicExtraLargeCircular where Content : View {
  @_NilHidden final var content: Content
  var _content: _NilHidden<Content>
  init(_ content: Content)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicRectangularFullView<Content> : CLKComplicationTemplate where Content : View {
  @_NilHidden final var content: Content
  var _content: _NilHidden<Content>
  init(_ content: Content)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicRectangularLargeView<Content> : CLKComplicationTemplate where Content : View {
  @objc @_NilHidden final var headerTextProvider: CLKTextProvider
  var _headerTextProvider: _NilHidden<CLKTextProvider>
  @_NilHidden final var content: Content
  var _content: _NilHidden<Content>
  init(headerTextProvider: CLKTextProvider, content: Content)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicRectangularStandardBodyView<Label> : CLKComplicationTemplate where Label : View {
  @_NilHidden final var headerLabel: Label
  var _headerLabel: _NilHidden<Label>
  @objc @_NilHidden final var headerTextProvider: CLKTextProvider
  var _headerTextProvider: _NilHidden<CLKTextProvider>
  @objc @_NilHidden final var body1TextProvider: CLKTextProvider
  var _body1TextProvider: _NilHidden<CLKTextProvider>
  @objc final var body2TextProvider: CLKTextProvider?
  init(headerLabel: Label, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider? = nil)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
final class CLKComplicationTemplateGraphicRectangularTextGaugeView<Label> : CLKComplicationTemplate where Label : View {
  @_NilHidden final var headerLabel: Label
  var _headerLabel: _NilHidden<Label>
  @objc @_NilHidden final var headerTextProvider: CLKTextProvider
  var _headerTextProvider: _NilHidden<CLKTextProvider>
  @objc @_NilHidden final var bodyTextProvider: CLKTextProvider
  var _bodyTextProvider: _NilHidden<CLKTextProvider>
  @objc @_NilHidden final var gaugeProvider: CLKGaugeProvider
  var _gaugeProvider: _NilHidden<CLKGaugeProvider>
  init(headerLabel: Label, headerTextProvider: CLKTextProvider, bodyTextProvider: CLKTextProvider, gaugeProvider: CLKGaugeProvider)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
enum ComplicationRenderingMode {
  case fullColor
  case tinted
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
extension ComplicationRenderingMode : Equatable {
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
extension ComplicationRenderingMode : Hashable {
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
struct _ComplicationPreviewContext : PreviewContext {
  init(complicationTemplate: CLKComplicationTemplate, faceColor: CLKComplicationTemplate.PreviewFaceColor)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
extension _ComplicationPreviewContext {
  static func _previewTimeline(from preview: _Preview) -> [CLKComplicationTimelineEntry]
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
struct _ComplicationPreviewContextKey : PreviewContextKey {
}

@propertyWrapper struct _NilHidden<Value> {
  init(wrappedValue value: Value)
  init()
  var wrappedValue: Value
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
extension CLKComplicationTemplate {
  func previewContext(faceColor: CLKComplicationTemplate.PreviewFaceColor = .multicolor) -> some View
  
  struct PreviewFaceColor : Identifiable {
    static let multicolor: CLKComplicationTemplate.PreviewFaceColor
    static let red: CLKComplicationTemplate.PreviewFaceColor
    static let green: CLKComplicationTemplate.PreviewFaceColor
    static let blue: CLKComplicationTemplate.PreviewFaceColor
    static let orange: CLKComplicationTemplate.PreviewFaceColor
    static let yellow: CLKComplicationTemplate.PreviewFaceColor
    static let pink: CLKComplicationTemplate.PreviewFaceColor
    static let purple: CLKComplicationTemplate.PreviewFaceColor
    static var allColors: [CLKComplicationTemplate.PreviewFaceColor] { get }
  }
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
extension View {
  func complicationForeground() -> some View
  
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
extension EnvironmentValues {
  var complicationRenderingMode: ComplicationRenderingMode { get }
}

