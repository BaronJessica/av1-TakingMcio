programa
{
	
	funcao inicio()
	{
		real cambioDolar
		real qntdDolar
		
		escreva("Bem-vindo ao conversor de doláres($) para reais(R$).\nDigite a cotação do dólar atual (separe os centavos por meio de ponto): ")
		leia(cambioDolar)
		escreva("Digite o valor em dólar a ser convertido para real: ")
		leia(qntdDolar)

		escreva("$",qntdDolar, " (dolares), equivalem à R$", cambioDolar * qntdDolar, " (reais) hoje")
		
	}
}