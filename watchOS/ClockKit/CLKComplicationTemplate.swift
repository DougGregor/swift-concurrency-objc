
@available(watchOS 2.0, *)
class CLKComplicationTemplate : NSObject, NSCopying {
  @NSCopying var tintColor: UIColor?
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  @available(watchOS 7.0, *)
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  @available(watchOS 7.0, *)
  init(line1ImageProvider: CLKImageProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularSmallColumnsText : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  var highlightColumn2: Bool
  @available(watchOS 7.0, *)
  init(row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularLargeStandardBody : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var body2TextProvider: CLKTextProvider?
  @available(watchOS 7.0, *)
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
  @available(watchOS 7.0, *)
  init(headerImageProvider: CLKImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(headerImageProvider: CLKImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularLargeTallBody : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var bodyTextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(headerTextProvider: CLKTextProvider, bodyTextProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularLargeTable : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  @available(watchOS 7.0, *)
  init(headerTextProvider: CLKTextProvider, row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(headerImageProvider: CLKImageProvider?, headerTextProvider: CLKTextProvider, row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateModularLargeColumns : CLKComplicationTemplate {
  @NSCopying var row1ImageProvider: CLKImageProvider?
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2ImageProvider: CLKImageProvider?
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  @NSCopying var row3ImageProvider: CLKImageProvider?
  @NSCopying var row3Column1TextProvider: CLKTextProvider
  @NSCopying var row3Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  @available(watchOS 7.0, *)
  init(row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider, row3Column1TextProvider: CLKTextProvider, row3Column2TextProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(row1ImageProvider: CLKImageProvider?, row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2ImageProvider: CLKImageProvider?, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider, row3ImageProvider: CLKImageProvider?, row3Column1TextProvider: CLKTextProvider, row3Column2TextProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateUtilitarianSmallSquare : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateUtilitarianSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateUtilitarianSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateUtilitarianSmallFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, imageProvider: CLKImageProvider?)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateUtilitarianLargeFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, imageProvider: CLKImageProvider?)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateCircularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateCircularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateCircularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateCircularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateCircularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 2.0, *)
class CLKComplicationTemplateCircularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(line1ImageProvider: CLKImageProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 3.0, *)
class CLKComplicationTemplateExtraLargeSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider)
}
@available(watchOS 3.0, *)
class CLKComplicationTemplateExtraLargeSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider)
}
@available(watchOS 3.0, *)
class CLKComplicationTemplateExtraLargeRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 3.0, *)
class CLKComplicationTemplateExtraLargeRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  @available(watchOS 7.0, *)
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
@available(watchOS 3.0, *)
class CLKComplicationTemplateExtraLargeStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  @available(watchOS 7.0, *)
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 3.0, *)
class CLKComplicationTemplateExtraLargeStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  @available(watchOS 7.0, *)
  init(line1ImageProvider: CLKImageProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 3.0, *)
class CLKComplicationTemplateExtraLargeColumnsText : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  var highlightColumn2: Bool
  @available(watchOS 7.0, *)
  init(row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCornerGaugeText : CLKComplicationTemplate {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider?
  @NSCopying var trailingTextProvider: CLKTextProvider?
  @NSCopying var outerTextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, outerTextProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider?, trailingTextProvider: CLKTextProvider?, outerTextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCornerGaugeImage : CLKComplicationTemplate {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider?
  @NSCopying var trailingTextProvider: CLKTextProvider?
  @NSCopying var imageProvider: CLKFullColorImageProvider
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, imageProvider: CLKFullColorImageProvider)
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider?, trailingTextProvider: CLKTextProvider?, imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCornerTextImage : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCornerStackText : CLKComplicationTemplate {
  @NSCopying var innerTextProvider: CLKTextProvider
  @NSCopying var outerTextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(innerTextProvider: CLKTextProvider, outerTextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCornerCircularImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  @available(watchOS 7.0, *)
  init(imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCircular : CLKComplicationTemplate {
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCircularImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  @available(watchOS 7.0, *)
  init(imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCircularOpenGaugeRangeText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider
  @NSCopying var trailingTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider, trailingTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, bottomTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCircularOpenGaugeImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomImageProvider: CLKFullColorImageProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, bottomImageProvider: CLKFullColorImageProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCircularClosedGaugeText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicCircularClosedGaugeImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  @available(watchOS 7.0, *)
  init(gaugeProvider: CLKGaugeProvider, imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 6.0, *)
class CLKComplicationTemplateGraphicCircularStackText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 6.0, *)
class CLKComplicationTemplateGraphicCircularStackImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var line1ImageProvider: CLKFullColorImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  @available(watchOS 7.0, *)
  init(line1ImageProvider: CLKFullColorImageProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicBezelCircularText : CLKComplicationTemplate {
  @NSCopying var circularTemplate: CLKComplicationTemplateGraphicCircular
  @NSCopying var textProvider: CLKTextProvider?
  @available(watchOS 7.0, *)
  init(circularTemplate: CLKComplicationTemplateGraphicCircular)
  @available(watchOS 7.0, *)
  init(circularTemplate: CLKComplicationTemplateGraphicCircular, textProvider: CLKTextProvider?)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicRectangularFullImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  @available(watchOS 7.0, *)
  init(imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicRectangularLargeImage : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  @available(watchOS 7.0, *)
  init(textProvider: CLKTextProvider, imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicRectangularStandardBody : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKFullColorImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var body2TextProvider: CLKTextProvider?
  @available(watchOS 7.0, *)
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
  @available(watchOS 7.0, *)
  init(headerImageProvider: CLKFullColorImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  @available(watchOS 7.0, *)
  init(headerImageProvider: CLKFullColorImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
}
@available(watchOS 5.0, *)
class CLKComplicationTemplateGraphicRectangularTextGauge : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKFullColorImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @available(watchOS 7.0, *)
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, gaugeProvider: CLKGaugeProvider)
  @available(watchOS 7.0, *)
  init(headerImageProvider: CLKFullColorImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, gaugeProvider: CLKGaugeProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircular : CLKComplicationTemplate {
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider
  @NSCopying var trailingTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider, trailingTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, bottomTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomImageProvider: CLKFullColorImageProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, bottomImageProvider: CLKFullColorImageProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, centerTextProvider: CLKTextProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(gaugeProvider: CLKGaugeProvider, imageProvider: CLKFullColorImageProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularStackText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
@available(watchOS 7.0, *)
class CLKComplicationTemplateGraphicExtraLargeCircularStackImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var line1ImageProvider: CLKFullColorImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1ImageProvider: CLKFullColorImageProvider, line2TextProvider: CLKTextProvider)
}
