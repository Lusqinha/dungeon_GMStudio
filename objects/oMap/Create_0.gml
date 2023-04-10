// Define o tamanho da janela
window_set_size(1280, 720)

// Define os valores de movimento
dn = 1
dw = 2
de = 4
ds = 8

// Obtém o ID da camada do tilemap
var layer_id = layer_tilemap_get_id("lTiles")

// Calcula o tamanho da grade
grid_w = room_width div cell_size;
grid_h = room_height div cell_size;

// Cria uma nova grade e a preenche com zeros
grid = ds_grid_create(grid_w, grid_h)
ds_grid_clear(grid, 0)

// Define a posição inicial
var xx = grid_w div 2
var yy = grid_h div 2

// Define a direção inicial aleatória
var dir = irandom(3)

// Define o tamanho da sala
room_size = 5

// Define o número de salas
rooms = 50
// Cria as salas
for (var i = 0; i < rooms; i++) {

    // Preenche a região da sala com um valor de 2
    ds_grid_set_region(grid, xx - room_size, yy - room_size, xx + room_size, yy + room_size, 2)
    
    // Define a distância máxima da sala
    path_dist = room_size * 5
    
    // Cria o caminho para a próxima sala
    while (path_dist > 0) {
        // Define o valor da célula atual como 1
        grid[# xx, yy] = 1
        
        // Move para a próxima célula
        xx += lengthdir_x(1, dir * 90)
        yy += lengthdir_y(1, dir * 90)
        
        // Mantém a posição dentro da grade
        xx = clamp(xx, 3, grid_w - 3)
        yy = clamp(yy, 3, grid_h - 3)
        
        // Decrementa a distância restante
        path_dist--;
    }
    
    // Define a região da sala atual com um valor de 2
    ds_grid_set_region(grid, xx - room_size, yy - room_size, xx + room_size, yy + room_size, 2)
    
    // Define uma nova direção aleatória
    dir = irandom(3)
}

// Preenche o tilemap com os valores da grade
for (var xx = 0; xx < grid_w; xx++) {
    for (var yy = 0; yy < grid_h; yy++) {
        // Se a célula for 0, define o valor do tilemap com base nas células vizinhas
        if (grid[# xx, yy] == 0) {
            var n_tile = grid[# xx, yy - 1] == 0;
            var w_tile = grid[# xx - 1, yy] == 0;
            var e_tile = grid[# xx + 1, yy] == 0;
            var s_tile = grid[# xx, yy + 1] == 0;
            var index = n_tile * dn + w_tile * dw + e_tile * de + s_tile * ds + 1
            tilemap_set(layer_id, index, xx, yy)
        } 
        // Se a célula for 1 ou 2, define o valor do tilemap como 17
        else if (grid[# xx, yy]){
			tilemap_set(layer_id, 17, xx, yy)
		
}
}
}
