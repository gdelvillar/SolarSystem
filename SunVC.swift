//
//  SunVC.swift
//  Solar System
//
//  Created by Gabriel Del VIllar on 8/25/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import UIKit

class SunVC: UIViewController {

  @IBOutlet weak var textView: UITextView!
  @IBOutlet weak var navBar: UINavigationBar!
  @IBOutlet weak var planetImg: UIImageView!
  @IBOutlet weak var backButton: UIButton!
  
  var planetInfo = [String: String]()
 
  
  var stringH: String!
  var planetName: String!
  var backImgName: String!
  
  @IBAction func popViewButton(_ sender: AnyObject)
  {
    dismiss(animated: true, completion: nil)

  }
    override func viewDidLoad() {
        super.viewDidLoad()
      initDictionary()
      navBar.topItem?.title = planetName
      let planetImage = UIImage(named: backImgName)
      planetImg.image = planetImage
      textView.text = planetInfo[planetName]

        // Do any additional setup after loading the view.
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  func initDictionary(){
    
    let sunInfo = "The Sun is by far the largest object in the solar system. It contains more than 99.8% of the total mass of the Solar System (Jupiter contains most of the rest). It is often said that the Sun is an \"ordinary\" star. That's true in the sense that there are many others similar to it. But there are many more smaller stars than larger ones; the Sun is in the top 10% by mass. The median size of stars in our galaxy is probably less than half the mass of the Sun.\n\ndiameter: 1,390,000 km.\nmass: 1.989e30 kg\ntemperature: 5800 K (surface) 15,600,000 K (core)"
    
    let mercuryInfo = "The closest planet to the sun, Mercury is only a bit larger than Earth'smoon. Its day side is scorched by the sun and can reach 840 degrees Fahrenheit (450 Celsius), but on the night side, temperatures drop to hundreds of degrees below freezing. Mercury has virtually no atmosphere to absorb meteor impacts, so its surface is pockmarked with craters,just like the moon. Over its four-year mission, NASA's MESSENGER spacecraft has revealed views of the planet that have challenged astronomers' expectations.\n Discovery: Known to the ancients and visible to the naked eye\n\n Named after: Messenger of the Roman gods\nDiameter: 3,031 miles (4,878 km)\nOrbit: 88 Earth days\nDay: 58.6 Earth days"
  
    let venusInfo = "The second planet from the sun, Venus is terribly hot, even hotter than Mercury. The atmosphere is toxic. The pressure at the surface would crush and kill you. Scientists describe Venus’ situation as a runaway greenhouse effect. Its size and structure are similar to Earth, Venus' thick, toxic atmosphere traps heat in a runaway \"greenhouse effect.\" Oddly, Venus spins slowly in the opposite direction of most planets.\n\nThe Greeks believed Venus was two different objects — one in the morning sky and another in the evening. Because it is often brighter than any other object in the sky — except for the sun and moon — Venus has generated many UFO reports.\n\nDiscovery: Known to the ancients and visible to the naked eye\nNamed for: Roman goddess of love and beauty\nDiameter: 7,521 miles (12,104 km)\nOrbit: 225 Earth days\nDay: 241 Earth days"
    
    let earthInfo = "The third planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It’s the only world known to harbor life. Earth’s atmosphere is rich in life-sustaining nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).\n\nDiameter: 7,926 miles (12,760 km)\nOrbit: 365.24 days\nDay: 23 hours, 56 minutes"
    
    let marsInfo = "The fourth planet from the sun, is a cold, dusty place. The dust, an iron oxide, gives the planet its reddish cast. Mars shares similarities with Earth: It is rocky, has mountains and valleys, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms. It snows on Mars. And Mars harbors water ice. Scientists think it was once wet and warm, though today it’s cold and desert-like.\n\nMars' atmosphere is too thin for liquid water to exist on the surface for any length of time. Scientists think ancient Mars would have had the conditions to support life, and there is hope that signs of past life — possibly even present biology — may exist on the Red Planet.\n\nDiscovery: Known to the ancients and visible to the naked eye\nNamed for: Roman god of war\nDiameter: 4,217 miles (6,787 km)\nOrbit: 687 Earth days\nDay: Just more than one Earth day (24 hours, 37 minutes)"
    
    let jupiterInfo = "The fifth planet from the sun, Jupiter is huge and is the most massive planet in our solar system. It’s a mostly gaseous world, mostly hydrogen and helium. Its swirling clouds are colorful due to different types of trace gases. A big feature is the Great Red Spot, a giant storm which has raged for hundreds of years. Jupiter has a strong magnetic field, and with dozens of moons, it looks a bit like a miniature solar system.\n\nDiscovery: Known to the ancients and visible to the naked eye\nNamed for: Ruler of the Roman gods\nDiameter: 86,881 miles (139,822 km)\nOrbit: 11.9 Earth years\nDay: 9.8 Earth hours"
    let saturnInfo = "The sixth planet from the sun is known most for its rings. When Galileo Galilei first studied Saturn in the early 1600s, he thought it was an object with three parts. Not knowing he was seeing a planet with rings, the stumped astronomer entered a small drawing — a symbol with one large circle and two smaller ones — in his notebook, as a noun in a sentence describing his discovery. More than 40 years later, Christiaan Huygens proposed that they were rings. The rings are made of ice and rock. Scientists are not yet sure how they formed. The gaseous planet is mostly hydrogen and helium. It has numerous moons.\n\nDiscovery: Known to the ancients and visible to the naked eye\nNamed for: Roman god of agriculture\nDiameter: 74,900 miles (120,500 km)\nOrbit: 29.5 Earth years\nDay: About 10.5 Earth hours"
    let uranusInfo = "The seventh planet from the sun, Uranus is an oddball. It’s the only giant planet whose equator is nearly at right angles to its orbit — it basically orbits on its side. Astronomers think the planet collided with some other planet-size object long ago, causing the tilt. The tilt causes extreme seasons that last 20-plus years, and the sun beats down on one pole or the other for 84 Earth-years. Uranus is about the same size as Neptune. Methane in the atmosphere gives Uranus its blue-green tint. It has numerous moons and faint rings.\n\nDiscovery: 1781 by William Herschel (was thought previously to be a star)\nNamed for: Personification of heaven in ancient myth\nDiameter: 31,763 miles (51,120 km)\nOrbit: 84 Earth years\nDay: 18 Earth hours"
    
    let neptuneInfo = "The eighth planet from the sun, Neptune is known for strong winds — sometimes faster than the speed of sound. Neptune is far out and cold. The planet is more than 30 times as far from the sun as Earth. It has a rocky core. Neptune was the first planet to be predicted to exist by using math, before it was detected. Irregularities in the orbit of Uranus led French astronomer Alexis Bouvard to suggest some other might be exerting a gravitational tug. German astronomer Johann Galle used calculations to help find Neptune in a telescope. Neptune is about 17 times as massive as Earth.\n\nDiscovery: 1846\nNamed for: Roman god of water\nDiameter: 30,775 miles (49,530 km)\nOrbit: 165 Earth years\nDay: 19 Earth hours"
    
    let plutoInfo = "Once the ninth planet from the sun, Pluto is unlike other planets in many respects. It is smaller than Earth's moon. Its orbit carries it inside the orbit of Neptune and then way out beyond that orbit. From 1979 until early 1999, Pluto had actually been the eighth planet from the sun. Then, on Feb. 11, 1999, it crossed Neptune's path and once again became the solar system's most distant planet — until it was demoted to dwarf planet status. Pluto will stay beyond Neptune for 228 years. Pluto’s orbit is tilted to the main plane of the solar system — where the other planets orbit — by 17.1 degrees. It’s a cold, rocky world with only a very ephemeral atmosphere. NASA's New Horizons mission performed history's first flyby of the Pluto system on July 14, 2015.\n\nDiscovery: 1930 by Clyde Tombaugh\nNamed for: Roman god of the underworld, Hades\nDiameter: 1,430 miles (2,301 km)\nOrbit: 248 Earth years\nDay: 6.4 Earth day"
    
    planetInfo["Sun"] = sunInfo
    planetInfo["Mercury"] = mercuryInfo
    planetInfo["Venus"] = venusInfo
    planetInfo["Earth"] = earthInfo
    planetInfo["Mars"] = marsInfo
    planetInfo["Jupiter"] = jupiterInfo
    planetInfo["Saturn"] = saturnInfo
    planetInfo["Uranus"] = uranusInfo
    planetInfo["Neptune"] = neptuneInfo
    planetInfo["Pluto"] = plutoInfo
    
    
    
  }// initdictionary()

  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
