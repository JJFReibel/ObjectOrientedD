/*
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
import std.stdio;
import std.conv;
class Car { 
   public: 
      double wheels;
      double doors;
      double cylinders; 

   this(int wheelsIn, int doorsIn, int cylindersIn){
       this.wheels = wheelsIn;
       this.doors = doorsIn;
       this.cylinders = cylindersIn;
   }    
      
   pure void addWheels(int wheelsIn){
       this.wheels += wheelsIn;
   }
   pure void addDoors(int doorsIn){
       this.doors += doorsIn;
   }
   pure void addCylinders(int cylindersIn){
       this.cylinders += cylindersIn;
   }
   pure void deleteWheels(int wheelsIn){
       this.wheels -= wheelsIn;
   }
   pure void deleteDoors(int doorsIn){
       this.doors -= doorsIn;
   }
   pure void deleteCylinders(int cylindersIn){
       this.cylinders -= cylindersIn;
   }
}

void main(string[ ] args)
{
   writeln("Creating car.");
   Car subaru = new Car(4, 4, 4);
   writeln("Wheel check: " ~ to!string(subaru.wheels));
   writeln("Door check: " ~ to!string(subaru.doors));
   writeln("Cylinder check: " ~ to!string(subaru.cylinders) ~ "\n");
   writeln("Adding wheel directly to car object.");
   subaru.addWheels(1);
   writeln("Wheel check: " ~ to!string(subaru.wheels));
   writeln("Door check: " ~ to!string(subaru.doors));
   writeln("Cylinder check: " ~ to!string(subaru.cylinders) ~ "\n");
   writeln("Removing wheel using object method.");
   subaru.deleteWheels(1);
   writeln("Wheel check: " ~ to!string(subaru.wheels));
   writeln("Door check: " ~ to!string(subaru.doors));
   writeln("Cylinder check: " ~ to!string(subaru.cylinders) ~ "\n");
}
