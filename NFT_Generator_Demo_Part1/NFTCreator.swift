//
//  NFTCreator.swift
//  NFTGenerator
//
//  Created by James Layton on 4/17/22.
//

import Foundation
import UIKit

class NFTCreator {
    
    func createNFT() -> UIImage {
        
        let layerName = ["Black", "RedEyeball", "Green", "Medium", "TopMiddle", "BottomMiddle"]
        
        var nft = UIImage()
        let nftSize = CGSize(width: 300, height: 300)
        let nftRect = CGRect(x: 0, y: 0, width: nftSize.width, height: nftSize.height)
        
        for layerName in layerName {
            let layeredImage = UIImage(named: layerName)
            
            UIGraphicsBeginImageContext(nftSize)
            
            nft.draw(in: nftRect)
            layeredImage?.draw(in: nftRect)
            
            nft = UIGraphicsGetImageFromCurrentImageContext() ?? nft
            
            UIGraphicsEndImageContext()
        }
        
        return nft
    }
}
