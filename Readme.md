# OLED display magnifier

These 3D models is made to make 0.96" OLED display more readable by using a credit card sized Fresnel lens.

The model are designed in OpenSCAD.

In the file `CardDisplay-Back.scad` the variable **h** is the length from the front of the lens to the front of the OLED display in mm.

### Print instructions

When you print this you need print 1 of the `CardDisplay-Back#0.stl.zip`, 1x `CardDisplay-Front.stl.zip` and 2x `DisplayClips.stl.zip`.

The number on the end of `CardDisplay-Back#0.stl.zip` is the length from the front of the lens to the front of the OLED display in mm.

You probably need to unzip the files before using them with your sliser.

### Compile Instructions

The file `GNUparallel.list` is used to batch compile the STL files by the following command:
```
cat GNUparallel.list | parallel {}
```
After that, each STL file is ZIP:ed with `pigz` to keep the file size down:
```
pigz -11K -I 16 *.stl`
```
