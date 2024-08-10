# scada-pick-place-scara
Este repositório contém os códigos e arquivos de configuração para uma aplicação de "pick and place" desenvolvida para um robô SCARA da Stäubli.

A interface supervisória foi construída utilizando o Elipse E3, permitindo a seleção intuitiva dos berços de origem e destino para a movimentação de peças. Uma vez que o usuário define as posições e aciona o botão de início, o sistema SCADA estabelece comunicação via OPC UA com o PLC B&R X20CP1583, equipado com módulos de I/O digital e analógico. O PLC, então, envia os comandos apropriados para o robô através de sinais I/O, garantindo a execução pda tarefa.
