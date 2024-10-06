# OLED display magnifier
These 3D models is made to make 0.96" OLED display more readable by using a credit card sized Fresnel lens.

The model are designed in OpenSCAD.

In the file "CardDisplay-Back.scad" the variable **h** is the length from the front of the lens to the front of the OLED display.
### Compile Instructions
The file "GNUparallel.list" is used to batch compile the STL files by the following command:
```
cat GNUparallel.list | parallel {}
```
After that, each STL file is ZIP:ed with this command to keep the file size down:
```
pigz -11K -I 16 *.stl`
```