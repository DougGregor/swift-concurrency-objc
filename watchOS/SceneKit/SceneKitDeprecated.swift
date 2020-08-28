
extension SCNLight : SCNTechniqueSupport {
}
extension SCNCamera {
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use fStop instead")
  var focalBlurRadius: CGFloat
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var xFov: Double
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var yFov: Double
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use -[SCNCamera fStop] instead with fStop = sensorHeight / aperture.")
  var aperture: CGFloat
  @available(watchOS, introduced: 3.0, deprecated: 4.0)
  var focalSize: CGFloat
  @available(watchOS, introduced: 3.0, deprecated: 4.0)
  var focalDistance: CGFloat
}
extension SCNMaterialProperty {
}
