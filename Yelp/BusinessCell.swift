//
//  BusinessCell.swift
//  Yelp
//
//  Created by Chris Martinez on 9/21/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var reviewImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    
    var business : Business! {
    didSet{
        nameLabel.text = business.name
        addressLabel.text = business.address
        categoriesLabel.text = business.categories
        distanceLabel.text = business.distance
        reviewsCountLabel.text = business.reviewCount!.stringValue
        
        //        get the image from URL::
        thumbImageView.setImageWith(business.imageURL!)
        reviewImageView.image = business.ratingImage
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
