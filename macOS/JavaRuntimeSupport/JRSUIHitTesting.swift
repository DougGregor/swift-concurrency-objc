
var kJRSUI_PartHit_unknown: Int { get }
var kJRSUI_PartHit_none: Int { get }
var kJRSUI_PartHit_hit: Int { get }
var kJRSUI_PartHit_thumb: Int { get }
var kJRSUI_PartHit_trackMin: Int { get }
var kJRSUI_PartHit_trackMax: Int { get }
var kJRSUI_PartHit_arrowMin: Int { get }
var kJRSUI_PartHit_arrowMax: Int { get }
var kJRSUI_PartHit_arrowMaxInside: Int { get }
var kJRSUI_PartHit_arrowMinInside: Int { get }
typealias JRSUIPartHit = CFIndex
func JRSUIControlGetHitPart(_ renderer: JRSUIRenderer!, _ control: JRSUIControl!, _ bounds: CGRect, _ point: CGPoint) -> JRSUIPartHit
