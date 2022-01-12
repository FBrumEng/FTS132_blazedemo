from selenium import webdriver

# Inicio
def before_all(context):  # Antes de tudo

    # Declarar o Selenium, instanciar como o navegador e apontar o driver
    context.driver = webdriver.Chrome('C:/Users/aless/PycharmProjects/Cursos_Iterasys/FTS132_blazedemo/drivers/chrome/versao_96/chromedriver.exe')

    # Maximizar a janela do navegador
    context.driver.maximize_window()

    # Define uma espera maxima para todos os elementos do script
    context.driver.implicitly_wait(30)

    print('Passo A - Antes de tudo')

# Fim
def after_all(context): # Depois de tudo

    # Desligar / Destruir o objeto do selenium
    context.driver.quit()

    print('Passo Z - Depois de tudo')

# Bloco executado ao final de cada step
def after_step(context, step):
    print()