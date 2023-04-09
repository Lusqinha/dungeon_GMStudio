

// Cria uma variável para armazenar o estado atual do inimigo
var state = "patrol";

// Cria uma variável para armazenar o raio de visão do inimigo
var vision_radius = 10;

// Cria uma variável para armazenar a referência ao objeto do jogador
var player = instance_nearest(x, y, oPlayer);

// Verifica qual é o estado atual do inimigo
switch (state) {
    case "patrol":
        // No estado de patrulha, o inimigo se move aleatoriamente pela área
        // Você pode usar a função move_random() ou alguma outra lógica para isso
        move_random(-1,1);

        // Verifica se o jogador está dentro do raio de visão do inimigo
        if ((point_distance(x, y, player.x, player.y)) < vision_radius) {
            // Se sim, muda para o estado de perseguição
            state = "chase";
        }
        break;
    case "chase":
        // No estado de perseguição, o inimigo segue o jogador usando algum algoritmo de pathfinding
        // Você pode usar a função mp_potential_step() ou alguma outra lógica para isso
        mp_potential_step(player.x, player.y, 2, true);

        // Verifica se o jogador saiu do raio de visão do inimigo
        if (point_distance(x, y, player.x, player.y) > vision_radius) {
            // Se sim, volta para o estado de patrulha
            state = "patrol";
        }
        break;
}