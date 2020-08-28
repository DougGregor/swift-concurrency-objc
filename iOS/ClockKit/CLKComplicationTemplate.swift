
class CLKComplicationTemplate : NSObject, NSCopying {
  @NSCopying var tintColor: UIColor?
}
class CLKComplicationTemplateModularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  init(textProvider: CLKTextProvider)
}
class CLKComplicationTemplateModularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init(imageProvider: CLKImageProvider)
}
class CLKComplicationTemplateModularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateModularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateModularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateModularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init(line1ImageProvider: CLKImageProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateModularSmallColumnsText : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  var highlightColumn2: Bool
  init(row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateModularLargeStandardBody : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var body2TextProvider: CLKTextProvider?
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
  init(headerImageProvider: CLKImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  init(headerImageProvider: CLKImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
}
class CLKComplicationTemplateModularLargeTallBody : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var bodyTextProvider: CLKTextProvider
  init(headerTextProvider: CLKTextProvider, bodyTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateModularLargeTable : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  init(headerTextProvider: CLKTextProvider, row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
  init(headerImageProvider: CLKImageProvider?, headerTextProvider: CLKTextProvider, row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
}
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
  init(row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider, row3Column1TextProvider: CLKTextProvider, row3Column2TextProvider: CLKTextProvider)
  init(row1ImageProvider: CLKImageProvider?, row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2ImageProvider: CLKImageProvider?, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider, row3ImageProvider: CLKImageProvider?, row3Column1TextProvider: CLKTextProvider, row3Column2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateUtilitarianSmallSquare : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init(imageProvider: CLKImageProvider)
}
class CLKComplicationTemplateUtilitarianSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateUtilitarianSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateUtilitarianSmallFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  init(textProvider: CLKTextProvider)
  init(textProvider: CLKTextProvider, imageProvider: CLKImageProvider?)
}
class CLKComplicationTemplateUtilitarianLargeFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  init(textProvider: CLKTextProvider)
  init(textProvider: CLKTextProvider, imageProvider: CLKImageProvider?)
}
class CLKComplicationTemplateCircularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  init(textProvider: CLKTextProvider)
}
class CLKComplicationTemplateCircularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init(imageProvider: CLKImageProvider)
}
class CLKComplicationTemplateCircularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateCircularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateCircularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateCircularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1ImageProvider: CLKImageProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateExtraLargeSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  init(textProvider: CLKTextProvider)
}
class CLKComplicationTemplateExtraLargeSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init(imageProvider: CLKImageProvider)
}
class CLKComplicationTemplateExtraLargeRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(textProvider: CLKTextProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateExtraLargeRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init(imageProvider: CLKImageProvider, fillFraction: Float, ringStyle: CLKComplicationRingStyle)
}
class CLKComplicationTemplateExtraLargeStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateExtraLargeStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init(line1ImageProvider: CLKImageProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateExtraLargeColumnsText : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  var highlightColumn2: Bool
  init(row1Column1TextProvider: CLKTextProvider, row1Column2TextProvider: CLKTextProvider, row2Column1TextProvider: CLKTextProvider, row2Column2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCornerGaugeText : CLKComplicationTemplate {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider?
  @NSCopying var trailingTextProvider: CLKTextProvider?
  @NSCopying var outerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, outerTextProvider: CLKTextProvider)
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider?, trailingTextProvider: CLKTextProvider?, outerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCornerGaugeImage : CLKComplicationTemplate {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider?
  @NSCopying var trailingTextProvider: CLKTextProvider?
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(gaugeProvider: CLKGaugeProvider, imageProvider: CLKFullColorImageProvider)
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider?, trailingTextProvider: CLKTextProvider?, imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicCornerTextImage : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(textProvider: CLKTextProvider, imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicCornerStackText : CLKComplicationTemplate {
  @NSCopying var innerTextProvider: CLKTextProvider
  @NSCopying var outerTextProvider: CLKTextProvider
  init(innerTextProvider: CLKTextProvider, outerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCornerCircularImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicCircular : CLKComplicationTemplate {
}
class CLKComplicationTemplateGraphicCircularImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicCircularOpenGaugeRangeText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider
  @NSCopying var trailingTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider, trailingTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, bottomTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCircularOpenGaugeImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomImageProvider: CLKFullColorImageProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, bottomImageProvider: CLKFullColorImageProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCircularClosedGaugeText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCircularClosedGaugeImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(gaugeProvider: CLKGaugeProvider, imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicCircularStackText : CLKComplicationTemplateGraphicCircular {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicCircularStackImage : CLKComplicationTemplateGraphicCircular {
  @NSCopying var line1ImageProvider: CLKFullColorImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1ImageProvider: CLKFullColorImageProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicBezelCircularText : CLKComplicationTemplate {
  @NSCopying var circularTemplate: CLKComplicationTemplateGraphicCircular
  @NSCopying var textProvider: CLKTextProvider?
  init(circularTemplate: CLKComplicationTemplateGraphicCircular)
  init(circularTemplate: CLKComplicationTemplateGraphicCircular, textProvider: CLKTextProvider?)
}
class CLKComplicationTemplateGraphicRectangularFullImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicRectangularLargeImage : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(textProvider: CLKTextProvider, imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicRectangularStandardBody : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKFullColorImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var body2TextProvider: CLKTextProvider?
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
  init(headerImageProvider: CLKFullColorImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider)
  init(headerImageProvider: CLKFullColorImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, body2TextProvider: CLKTextProvider?)
}
class CLKComplicationTemplateGraphicRectangularTextGauge : CLKComplicationTemplate {
  @NSCopying var headerImageProvider: CLKFullColorImageProvider?
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var gaugeProvider: CLKGaugeProvider
  init(headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, gaugeProvider: CLKGaugeProvider)
  init(headerImageProvider: CLKFullColorImageProvider?, headerTextProvider: CLKTextProvider, body1TextProvider: CLKTextProvider, gaugeProvider: CLKGaugeProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircular : CLKComplicationTemplate {
}
class CLKComplicationTemplateGraphicExtraLargeCircularImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var leadingTextProvider: CLKTextProvider
  @NSCopying var trailingTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, leadingTextProvider: CLKTextProvider, trailingTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomTextProvider: CLKTextProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, bottomTextProvider: CLKTextProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var bottomImageProvider: CLKFullColorImageProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, bottomImageProvider: CLKFullColorImageProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var centerTextProvider: CLKTextProvider
  init(gaugeProvider: CLKGaugeProvider, centerTextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var gaugeProvider: CLKGaugeProvider
  @NSCopying var imageProvider: CLKFullColorImageProvider
  init(gaugeProvider: CLKGaugeProvider, imageProvider: CLKFullColorImageProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircularStackText : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1TextProvider: CLKTextProvider, line2TextProvider: CLKTextProvider)
}
class CLKComplicationTemplateGraphicExtraLargeCircularStackImage : CLKComplicationTemplateGraphicExtraLargeCircular {
  @NSCopying var line1ImageProvider: CLKFullColorImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init(line1ImageProvider: CLKFullColorImageProvider, line2TextProvider: CLKTextProvider)
}
