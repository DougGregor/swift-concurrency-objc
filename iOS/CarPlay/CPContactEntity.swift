
@available(iOS 14.0, *)
class CPContactEntity : CPEntity {
  init(name: NSAttributedString, imageSet: CPImageSet)
  var name: NSAttributedString
  var imageSet: CPImageSet
  var actionButtons: [CPEntityButton]?
  var subtitle: NSAttributedString?
  var informativeText: NSAttributedString?
}
