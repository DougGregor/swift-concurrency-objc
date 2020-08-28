
class NSPICTImageRep : NSImageRep {
  init?(data pictData: Data)
  var pictRepresentation: Data { get }
  var boundingBox: NSRect { get }
}
