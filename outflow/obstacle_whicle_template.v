
// Efinity Top-level template
// Version: 2021.1.165
// Date: 2022-01-05 17:11

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\Users\user\Desktop\final project\obstacle_whicle.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  obstacle_whicle
//     #4)  Insert design content.


module obstacle_whicle
(
  input [2:0] echo,
  input fpgaclk,
  output [2:0] led,
  output [2:0] trigger
);


endmodule

