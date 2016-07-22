//
//  DataSourceUI.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

protocol CollectionDataSourceUI {
    func setDataSource<T>(dataSource: CollectionDataSource<T>)
}