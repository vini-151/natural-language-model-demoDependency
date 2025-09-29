# ``NLModel``

# Natural Language Package 

## Versões mínimas
- MacOS: 14 
- iOS: 17

## Função

`PredictModel`
- `Parametros`: recebe o texto de input do tipo String que será analisado
- `Retorno`: retorna a String da métric

## Métricas de análise fornecidas

0. tristeza
1. alegria
2. amor
3. raiva
4. medo
5. surpresa 
default: sentimento não identificado

## Instruções e exemplo de uso 
1. Adicione a dependência ao seu projeto através do link 
	https://github.com/vini-151/natural-language-model-demoDependency.git
	
2. Importe a dependência no seu projeto: 
	
	```
	import NLModel
	```

3. Instanciar a classe

	```
	var predict = PredictText()
	```

4. Chamar a função predictModel no local desejado

	```
	let return = predict.predictModel(input: Text)
	```

## Data set utilizado para treinar nosso modelo (ToneClassifierModel) disponível em: https://www.kaggle.com/datasets/parulpandey/emotion-dataset


- ``PredictEmail/testarModel(input:)``
