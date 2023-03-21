void initAnclaje(){
    anclaje = new PVector[2];

    anclaje[0] = (0.0, 0.0);
    anclaje[1] = (0.0, 0.0);
    
    anclaje.x[0] = width / 4;
    anclaje.y[0] = height / 4;

    anclaje.x[1] = width * 3/4;
    anclaje.y[1] = height / 4;
}