//
//  CelestialBodies.swift
//  Solar System
//
//  Created by Gabriel Del VIllar on 8/15/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import Foundation

class CelestialBodies
{
  
  
  
  enum solarSystem: Int
  {
    case Sun = 0
    case Mercury = 1
    case Venus = 2
    case Earth = 3
    case Mars = 4
    case Jupiter = 5
    case Saturn = 6
    case Uranus = 7
    case Neptune = 8
    case Pluto = 9 // make pluto have a sad face becasue it tis not a planet anymore
  }
  
  
  func returnPlanetName (planetName:CelestialBodies.solarSystem) -> String
  {
    if(planetName == CelestialBodies.solarSystem(rawValue: 0))
    {
      return "Sun"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 1))
    {
      return "Mercury"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 2))
    {
      return "Venus"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 3))
    {
      return "Earth"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 4))
    {
      return "Mars"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 5))
    {
      return "Jupiter"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 6))
    {
      return "Saturn"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 7))
    {
      return "Uranus"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 8))
    {
      return "Neptune"
    }
      
    else if (planetName == CelestialBodies.solarSystem(rawValue: 9))
    {
      return "Pluto"
    }
    
    return "NotFound"
    
  } // returnPlanetName()
  
} // CelestialBodies class

