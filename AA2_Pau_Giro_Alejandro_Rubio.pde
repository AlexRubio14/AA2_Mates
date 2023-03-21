
//variables
Particulas[][] malla;
float xPart, yPart;

//Muelle
float km, lm, deltaT;
PVector[] anclaje; 



//Setup
void setup()
{
    size(1200, 800, P3D);

    //Inicializar malla
    InitPart();

    // Inicializar el muelle
            //Muelle.Init();
    km = 0.3;
    lm = 10.0;

    // El anclaje
    initAnclaje();

    // Inicializar las particulas
    PVector pos_inicial = new PVector(0.25 * width, 0.4* height);
    PVector vel_inicial = new PVector(-30.0, -20.0);
    particula_1 = new Particulas(pos_inicial, vel_inicial, 1.0, 35.0);
}

//Draw
void draw()
{
  background(100);
  translate(width / 2, height / 2, 0.0);
  rotateX(radians(-35.26));
  rotateY(radians(-45.0));

   // Calcular
    particula_1.calcula_m();
    //Pintar
    particula_1.pinta_m();
    fill(0,255,0);
    ellipse(anclaje.x, anclaje.y, particula_1.tamanyo, particula_1.tamanyo);
    //El muelle Rojo
    stroke(255, 0, 0);
    line(particula_1.posicion.x, particula_1.posicion.y, anclaje.x, anclaje.y);
}
