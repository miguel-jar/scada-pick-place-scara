# scada-pick-place-scara
Aplicação pick n' place para robô scara da Stäubli, controlada através de um sistema SCADA. No supervisório é possível selecionar o berço de origem e destino da peça. Ao pressionar o botão de início, o supervisório comunica via OPC UA com um PLC B&amp;R, que transmite ao robô a origem e o destino da peça via IO.
