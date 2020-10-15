
class NSEPSImageRep : NSImageRep {
  init?(data epsData: Data)
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  func prepareGState()
  var epsRepresentation: Data { get }
  var boundingBox: NSRect { get }
}
