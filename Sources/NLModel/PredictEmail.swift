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
    
    ///Funçao para input
    /// - Parameter input: recebe um texto de email
    /// - Returns: Retorna o tom do email
    public func predictModel(input: String) -> ToneClassifierModelOutput? {
        do{
            let config = MLModelConfiguration()
            let model = try ToneClassifierModel(configuration: config)
            
            let previsao = try model.prediction(text: input) //testando com "não gosto de você" irá retornar um "negativo"
            return previsao
            
        }catch{
            //aqui a gente trataria os erros
            return nil
        }
        
    }
    
    
}
