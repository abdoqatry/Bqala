//
//  GradientLayer.swift
//  UIGradient
//
//  Created by Youssef on 11/11/18.
//  Copyright © 2018 ITGeeks. All rights reserved.
//

import UIKit

public enum GradientDirection {
    case topToBottom
    case bottomToTop
    case leftToRight
    case rightToLeft
    case topLeftToBottomRight
    case topRightToBottomLeft
    case bottomLeftToTopRight
    case bottomRightToTopLeft
    case custom(Int)
}

open class UIGradientLayer: CAGradientLayer {

    private var direction: GradientDirection = .bottomLeftToTopRight

    public init(direction: GradientDirection, colors: [UIColor], cornerRadius: CGFloat = 0, locations: [Double]? = nil) {
        super.init()
        self.direction = direction
        self.needsDisplayOnBoundsChange = true
        self.colors = colors.map { $0.cgColor as Any }
        let (startPoint, endPoint) = UIGradientHelper.getStartAndEndPointsOf(direction)
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.cornerRadius = cornerRadius
        self.locations = locations?.map { NSNumber(value: $0) }
    }
    
    public override init(layer: Any) {
        super.init(layer: layer)
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init()
    }
    
    public final func clone() -> UIGradientLayer {
        if let colors = self.colors {
            return UIGradientLayer(direction: self.direction, colors: colors.map { UIColor(cgColor: ($0 as! CGColor)) }, cornerRadius: self.cornerRadius, locations: self.locations?.map { $0.doubleValue } )
        }
        return UIGradientLayer(direction: self.direction, colors: [], cornerRadius: self.cornerRadius, locations: self.locations?.map { $0.doubleValue })
    }
}

public extension UIGradientLayer {
    public static var oceanBlue: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight, colors: [UIColor.hex("2E3192"), UIColor.hex("1BFFFF")])
    }
    
    public static var sanguine: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("D4145A"), UIColor.hex("FBB03B")])
    }
    
    public static var lusciousLime: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("009245"), UIColor.hex("FCEE21")])
    }
    
    public static var purpleLake: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("662D8C"), UIColor.hex("ED1E79")])
    }
    
    public static var freshPapaya: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("ED1C24"), UIColor.hex("FCEE21")])
    }
    
    public static var ultramarine: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("00A8C5"), UIColor.hex("FFFF7E")])
    }
    
    public static var pinkSugar: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("D74177"), UIColor.hex("FFE98A")])
    }
    
    public static var lemonDrizzle: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("FB872B"), UIColor.hex("D9E021")])
    }
    
    public static var victoriaPurple: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("312A6C"), UIColor.hex("852D91")])
    }
    
    public static var springGreens: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("009E00"), UIColor.hex("FFFF96")])
    }
    
    public static var mysticMauve: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("B066FE"), UIColor.hex("63E2FF")])
    }
    
    public static var reflexSilver: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("808080"), UIColor.hex("E6E6E6")])
    }
    
    public static var neonGlow: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("00FFA1"), UIColor.hex("00FFFF")])
    }
    
    public static var berrySmoothie: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("8E78FF"), UIColor.hex("FC7D7B")])
    }
    
    public static var newLeaf: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("00537E"), UIColor.hex("3AA17E")])
    }
    
    public static var cottonCandy: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("FCA5F1"), UIColor.hex("B5FFFF")])
    }
    
    public static var pixieDust: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("D585FF"), UIColor.hex("00FFEE")])
    }
    
    public static var fizzyPeach: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("F24645"), UIColor.hex("EBC08D")])
    }
    
    public static var sweetDream: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("3A3897"), UIColor.hex("A3A1FF")])
    }
    
    public static var firebrick: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("45145A"), UIColor.hex("FF5300")])
    }
    
    public static var wroughtIron: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("333333"), UIColor.hex("5A5454")])
    }
    
    public static var deepSea: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("4F00BC"), UIColor.hex("29ABE2")])
    }
    
    public static var coastalBreeze: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("00B7FF"), UIColor.hex("FFFFC7")])
    }
    
    public static var eveningDelight: UIGradientLayer {
        return UIGradientLayer(direction: .bottomLeftToTopRight , colors: [UIColor.hex("93278F"), UIColor.hex("00A99D")])
    }
}
