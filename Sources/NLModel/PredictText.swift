//
//  predictEmail.swift
//  NLModel
//
//  Created by Vini Oliveira  on 25/09/25.
//

import Foundation
import CoreML

public class PredictText{
     
    
    public init(){//por que precisamos explicitar o public nesse init vazio?
        
    }
    
    ///Funçao para input
    /// - Parameter input: recebe um texto de email
    /// - Returns: Retorna o tom do email
    public func predictModel(input: String) -> String? {
        do{
            let config = MLModelConfiguration()
            
            let model = try ToneClassifierModel(configuration: config)
        
            let previsao = try model.prediction(text: input) //testando com "não gosto de você" irá retornar um "negativo"
            
            print("previsao.label: \(previsao.label)")
            
            switch previsao.label {
            case "0":
                return "tristeza"
            case "1":
                return "alegria"
            case "2":
                return "amor"
            case "3":
                return "raiva"
            case "4":
                return "medo"
            case "5":
                return "surpresa"
            default:
                return "sentimento não identificado"
            }
            
            
            
        }catch{
            //aqui a gente trataria os erros
            return nil
        }
        
    }
    
    
}
