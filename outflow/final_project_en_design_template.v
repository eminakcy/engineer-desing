
// Efinity Top-level template
// Version: 2021.1.165
// Date: 2022-01-06 18:41

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\Users\user\Desktop\son_final proje\final_project_en_design.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  final_project_en_design
//     #4)  Insert design content.


module final_project_en_design
(
  input [2:0] echo,
  input en,
  input fpgaclk,
  input rst,
  output [2:0] led,
  output [3:0] sig_out_L,
  output [3:0] sig_out_R,
  output [2:0] trigger
);


endmodule

