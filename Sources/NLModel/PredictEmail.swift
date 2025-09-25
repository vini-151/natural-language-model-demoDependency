//
//  predictEmail.swift
//  NLModel
//
//  Created by Vini Oliveira  on 25/09/25.
//

import Foundation
import CoreML

public class PredictEmail{
    
    
    public init(){//por que precisamos explicitar o public nesse init vazio?
        
    }
    
    public func testarModel(input: String) -> EmailClassifierModelOutput? {
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
