
class ABSearchElement : NSObject {
  /*not inherited*/ init!(forConjunction conjuction: ABSearchConjunction, children: [Any]!)
  func matchesRecord(_ record: ABRecord!) -> Bool
}
