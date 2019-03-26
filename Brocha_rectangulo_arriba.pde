int [] colores = {0,0,0}; //arreglo que guarda el color del pincel 

void setup(){ //setup previo a la ejecucion 
  size(600,600); //define tamaño de pantalla 
  background(255); //define el color de fondo 

// creamos la interfaz 
   
  line(0,500,600,500); //separador 
   
  fill(255,255,255); //borrar pantalla 
  rect(90,510,70,70); 
   
   
  stroke(0,0,200); // define color de linea 
  strokeWeight(40); //define ancho de linea 
  smooth(); //suaviza los bordes 
   

}; 

void draw(){ //esta funcion se ejecuta a 60fps junto con todo lo que esta en ella 
   
 if ((mousePressed) && (mouseY < 500)){  //funcion detecta el click del mouse y analiza la posicion 
    
  rect(mouseX,mouseY,25,65); 
  }; 
  
}; 
   
void mouseClicked(){ 
   
  //pincel rojo 
  if ((mouseX < 350) && (mouseX > 300)  
   && (mouseY < 575)  && (mouseY > 525)) {  
    
   colores[0] = 255; 
   colores[1] = 0; 
   colores[2] = 0; 
   stroke(colores[0],colores[1],colores[2]); };  

  //pincel azul 
  if ((mouseX < 410) && (mouseX > 360)  
   && (mouseY < 575)  && (mouseY > 525)) { 

   colores[0] = 0; 
   colores[1] = 0; 
   colores[2] = 255; 
   stroke(colores[0],colores[1],colores[2]); };  

   //borrar pantalla 
  if ((mouseX < 160) && (mouseX > 90)  
   && (mouseY < 580)  && (mouseY > 510)) {  
        
       //se dibuja otra vez la interface 
        background(255); 
         
        strokeWeight(1); 
        stroke(0); 
        line(0,500,600,500); //separador 
   
        fill(255,255,255); //borrar pantalla 
        rect(90,510,70,70); 
   
        fill(255,0,0); //pincel rojo 
        rect(300,525,50,50); 
   
        fill(0,0,255); //pincel azul 
        rect(360,525,50,50); 
   
        stroke(colores[0],colores[1],colores[2]); 
        strokeWeight(7); 
        smooth();  
      
   }; 

} 
