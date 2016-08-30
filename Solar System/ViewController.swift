//
//  ViewController.swift
//  Solar System
//
//  Created by Gabriel Del VIllar on 8/15/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  var sunVC: SunVC!
  
  
  @IBOutlet weak var scrollView: UIScrollView!
  
  let celestialBodies = CelestialBodies()
  
  var images = [UIImageView]()

  
  let MAX_PAGE = 9
  let MIN_PAGE = 0
  
  var currentPage = 0
  var appearedView = 0
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    scrollView.isScrollEnabled = false
    
    let leftfSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(sender:)))
    let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(sender:)))
    
    leftfSwipe.direction = UISwipeGestureRecognizerDirection.left
    rightSwipe.direction = UISwipeGestureRecognizerDirection.right
    
    view.addGestureRecognizer(leftfSwipe)
    view.addGestureRecognizer(rightSwipe)
    
  }// viewDidLoad()
  
  
  override func viewDidAppear(_ animated: Bool)
  {
    
    if (appearedView == 0) // allows for first instatiatin of mainview to be used thorought app life
    {
      var contentWidth: CGFloat = 0.0
    
      let scrollViewWidth = scrollView.frame.size.width
    
      for x in 0...9
      {
        let newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
      
        let planet = setImages(pos: x, newX: newX)
      
        setButton(pos: x, planetName: planet, newX: newX)
      
        contentWidth += (newX - 75)
    
      }// creates images, buttons and adds it to scrollView
    
    
      scrollView.contentSize = CGSize(width: scrollViewWidth * 10, height: view.frame.size.height)
      
      animatePics()
    
    }
    
    appearedView += 1
    
  }// viewDidAppear()

  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func animatePics()
  {
    UIView.animate(withDuration: 0.4)
    {
      self.images[self.currentPage].transform = CGAffineTransform.init(scaleX: 1.4, y: 1.4)
      
      for x in 0...9
      {
        if (x != self.currentPage)
        {
          self.images[x].transform = CGAffineTransform.identity
        }
        
      }// resets all but current viewable image back to regualar size
      
    }
  
  
  } // animatePics()
  
  
  func getImgName(planetName: String) -> String
  {
    switch planetName {
    case "Sun":
      return("SunBack")
    case "Mercury":
      return("MercuryBack")
    case "Venus":
      return("VenusBack")
    case "Earth":
      return("EarthBack")
    case "Mars":
      return("MarsBack")
    case "Jupiter":
      return("JupiterBack")
    case "Saturn":
      return("SaturnBack")
    case "Uranus":
      return("UranusBack")
    case "Neptune":
      return("NeptuneBack")
    case "Pluto":
      return("PlutoBack")
    default:
      return("Not Found")

    }
  
  } //getImgName()
  
  
  func handleSwipes(sender: UIGestureRecognizer)
  {
    if let swipeGesture = sender as? UISwipeGestureRecognizer
    {
      switch swipeGesture.direction // determine which way to "swipe"
      {
        case UISwipeGestureRecognizerDirection.right:
          if (currentPage > MIN_PAGE)  // swipe right if not already at page 0
          {
            moveScrollView(direction: -1)
          }
        case UISwipeGestureRecognizerDirection.left:
          if(currentPage < MAX_PAGE) // swipe left if not alreay at max_page(9)
          {
            moveScrollView(direction: 1)
          }
        default:
          break
      }
    } // handleSwipes()
  
  }// handleSwipes()
  
  
  
  
  func moveScrollView(direction: Int)
  {
    currentPage += direction
    
    let point: CGPoint = CGPoint(x: scrollView.frame.size.width * CGFloat(currentPage), y: 0.0)
    scrollView.setContentOffset(point, animated: true)
    
    animatePics()
    
  }// moveScrollView()
  
  
  func setButton(pos: Int, planetName: String, newX: CGFloat)
  {
    let button = UIButton(type: UIButtonType.custom) as UIButton
    
    button.setTitle(planetName, for: UIControlState.normal)
    
    button.backgroundColor = UIColor.darkGray
    
    button.addTarget(self, action: #selector(ViewController.buttonPressed(sender:)), for: UIControlEvents.touchUpInside)
    
    scrollView.addSubview(button)
    
    button.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) + 110, width: 125, height: 50)
    
    button.layer.cornerRadius = 15
    
    
  }// setButton()
  
  
  func buttonPressed(sender: UIButton!)
  {
    let storyBoard = UIStoryboard(name: "SunVC", bundle: nil)
    let sunView = storyBoard.instantiateViewController(withIdentifier: "sunVC") as! SunVC
    sunView.planetName = sender.titleLabel?.text
    sunView.backImgName = getImgName(planetName: (sender.titleLabel?.text)!)
    present(sunView, animated: true, completion: nil)
    
  }// buttonPressed()
  
  
  
  func setImages(pos: Int, newX: CGFloat) -> String
  {
    
    let planetName = CelestialBodies.solarSystem(rawValue: pos)
    let planet = celestialBodies.returnPlanetName(planetName: planetName!)
    let image = UIImage(named: planet)
    let imageView = UIImageView(image: image)
    images.append(imageView)
    
    scrollView.addSubview(imageView)
    
    imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
    
    return planet
  
  }// setImages()
  
  
  
  
}

