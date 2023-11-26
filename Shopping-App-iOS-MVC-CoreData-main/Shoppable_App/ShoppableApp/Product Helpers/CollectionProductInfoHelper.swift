//
//  CollectionProductInfoHelper.swift
//
//
//  Created by Cristina Dobson
//


import Foundation


// MARK: - Product Collection Types enum

// Product Collection Types
enum CollectionType: String, CaseIterable {
  case tshirt
  case jeans
  
  // Returns the title to use in ProductCatalogViewController
  var productTypeTitle: String {
    switch self {
      case .tshirt:
        return "T-shirts"
      case .jeans:
        return "Jeans"
    }
  }
}


struct CollectionProductInfoHelper {
  
  
  // MARK: - Get localized Product Collection type
  
  // Get the product collection type localized name
  static  func getProductCollectionTypeLocalizedName(from index: Int) -> String {
    
    let collectionTypeCases = CollectionType.allCases
    
    if index <= collectionTypeCases.count-1 {
      let collectionName = collectionTypeCases[index].productTypeTitle
      return NSLocalizedString(
        collectionName,
        comment: "Collection type")
    }
    
    return ""
  }
  
}















