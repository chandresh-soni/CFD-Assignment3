// Gmsh project created on Sat Dec 02 19:24:57 2023
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 0.5};
//+
Point(2) = {15, 0, 0, 0.5};
//+
Point(3) = {0, 10, 0, 0.5};
//+
Line(1) = {1, 2};
//+
Line(2) = {1, 3};
//+
Point(4) = {15, 10, 0, 0.5};
//+
Line(3) = {3, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 2};
//+
Point(5) = {3.75, 5, 0, 0.1};
//+
Point(6) = {3.75, 3.5, 0, 0.1};
//+
Point(7) = {3.75, 6.5, 0, 0.1};
//+
Point(8) = {2.75, 5, 0, 0.1};
//+
Point(9) = {4.75, 5, 0, 0.1};
//+
Line(5) = {7, 9};
//+
Line(6) = {9, 6};
//+
Line(7) = {6, 8};
//+
Line(8) = {8, 7};
//+
Curve Loop(1) = {3, 4, -1, 2};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1}; 
  Layers{1};
  Recombine;
}
//+
Physical Surface("FrontandBacke", 25) = {10, 1};
//+
Physical Surface("top", 26) = {2};
//+
Physical Surface("bottom", 27) = {4};
//+
Physical Surface("inlet", 28) = {5};
//+
Physical Surface("diamond", 29) = {6, 8, 9, 7};
//+
Physical Surface("outlet", 30) = {3};
//+
Physical Volume("volume", 31) = {1};
