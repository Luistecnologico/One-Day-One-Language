/*
 * Crea una única función (importante que sólo sea una) que sea capaz
 * de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 */

void main() {
  
  displayArea(Square(2)); // Area: 4
  displayArea(Triangle(10, 5)); // Area: 25
  displayArea(Rectangle(2, 8)); // Area: 16
  
}

void displayArea(IPolygon polygon) {
  polygon.printArea();
}

abstract class IPolygon {
  void printArea();
}

class Square implements IPolygon {
  
  int side = 0;
  
  Square(int side) {
    this.side = side;
  }
  
  int getArea() {
    return this.side * this.side; 
  }
  
  @override
  void printArea() {
    print("Square area is: ${getArea()}");
  }
  
}

class Triangle implements IPolygon {
  
  int height = 0;
  int _base = 0;
  
  Triangle(int height, int _base) {
    this.height = height;
    this._base = _base;
  }
  
  double getArea() {
    return (height * _base) / 2;
  }
  
  @override
  void printArea() {
    print("Triangle area is: ${getArea()}");
  }
}

class Rectangle implements IPolygon {
  
  int height = 0;
  int width = 0;
  
  Rectangle(int height, int width) {
    this.height = height;
    this.width = width;
  }
  
  int getArea() {
    return height * width;
  }
  
  @override
  void printArea() {
    print("Rectangle area is: ${getArea()}");
  }
}