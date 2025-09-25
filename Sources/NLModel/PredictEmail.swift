//
//  predictEmail.swift
//  NLModel
//
//  Created by Vini Oliveira  on 25/09/25.
//

import Foundation
import CoreML

public class PredictEmail{
    
    var input: String
    
    public init(input: String){
        self.input = input
    }
    
    public func testarModel() -> EmailClassifierModelOutput? {
        do{
            let config = MLModelConfiguration()
            let model = try EmailClassifierModel(configuration: config)
            
            let predicao = try model.prediction(text: input) //testando com "não gosto de você" irá retornar um "negativo"
            return predicao
            
        }catch{
            //aqui a gente trataria os erros
            return nil
        }
        
    }
    
    
}
