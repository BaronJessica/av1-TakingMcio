programa
{
	
	funcao inicio()
	{
		real cambioDolar
		real qntdDolar
		
		escreva("Bem-vindo ao conversor de dol�res($) para reais(R$).\nDigite a cota��o do d�lar atual (separe os centavos por meio de ponto): ")
		leia(cambioDolar)
		escreva("Digite o valor em d�lar a ser convertido para real: ")
		leia(qntdDolar)

		escreva("$",qntdDolar, " (dolares), equivalem � R$", cambioDolar * qntdDolar, " (reais) hoje")
		
	}
}