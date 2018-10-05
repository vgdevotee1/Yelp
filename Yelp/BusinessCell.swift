//
//  BusinessCell.swift
//  Yelp
//
//  Created by Garrett Tibbetts on 10/3/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var ThumbImageView: UIImageView!
    @IBOutlet weak var RatingImageView: UIImageView!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var CostLabel: UILabel!
    @IBOutlet weak var NumReviewsLabel: UILabel!
    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var FoodTypeLabel: UILabel!
    @IBOutlet weak var RestaurantNameLabel: UILabel!
    
    var business: Business!
    {
        didSet{
            RestaurantNameLabel.text = business.name
            ThumbImageView.setImageWith(business.imageURL!)
            RatingImageView.image = business.ratingImage
            DistanceLabel.text = business.distance
            NumReviewsLabel.text = "\(business.reviewCount!) Reviews"
            LocationLabel.text = business.address
            FoodTypeLabel.text = business.categories
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ThumbImageView.layer.cornerRadius = 3
        ThumbImageView.clipsToBounds = true
        
        RestaurantNameLabel.preferredMaxLayoutWidth = RestaurantNameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        RestaurantNameLabel.preferredMaxLayoutWidth = RestaurantNameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
