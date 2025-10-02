//
//  predictEmail.swift
//  NLModel
//
//  Created by Vini Oliveira  on 25/09/25.
//

import Foundation
import CoreML

@available(macOS 14.0, *)

/// Classe que tem a função de predição
public class PredictText{
    
    public init() async throws {
        
        
    }
    
   

    
    ///Funçao para input
    /// - Parameter input: recebe uma String texto
    /// - Returns: Retorna a métrica conclusiva
	public func predictModel(input: String) -> String? {
        do{
            let config = MLModelConfiguration()
            
            let model = try TweetDataset2(configuration: config)
        
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
            return nil
        }
        
    }
    
    
    public func predictModelAwait(input: String) async throws -> String {
        
        
        
        do{
            
            try Task.checkCancellation()
            
            let config = MLModelConfiguration()
            
            let model = try TweetDataset2(configuration: config)
        
            let previsao = try await model.prediction(text: input) //testando com "não gosto de você" irá retornar um "negativo"
            
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
            return "erro"
        }
        
        
        
    }
    
    
}
