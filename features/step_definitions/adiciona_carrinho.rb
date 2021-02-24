require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path="chromedriver/chromedriver"

Dado('o site da Livelo') do
	@driver = Selenium::WebDriver.for :chrome
	@driver.get "https://www.livelo.com.br/"
	sleep 10
end

Quando('autorizar os cookies') do
	@driver.find_element(:id, "btn-authorizeCoookies").click
	sleep 10

end

Quando('apresentar a seção de produtos') do
	@driver.find_element(:id, "img-resgateprodutos").click
	sleep 10

end

Quando('um clique for efetuado no botão Adicionar ao Carrinho') do
	@driver.find_element(:xpath, "html/body/div[7]/main/div[1]/div[2]/div/div/div/div/div/div/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div/div[2]").click
	sleep 10
end

Então('Livelo exibirá a tela Seu carrinho') do
	@driver.find_element(:id, "cc-prodDetails-addToCart").click
	sleep 10
end







