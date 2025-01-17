include <generated/pcb_data.scad>;
include <footprint_modules.scad>;
include <../../kicad_pcb_geometry.scad>;

*edge_cuts_shape(edge_cuts_data);

*board_outline(edge_cuts_data);

// cover screws
screw1_at = [U1_length + 2.5, 2.5];
screw2_at = [U1_length + 2.5, 2.5 + 18];
screw3_at = [5, U1_width + 2.5];

module cover_screws() {
    translate(screw1_at) {
        circle(d = 2.3);
    }
    translate(screw2_at) {
        circle(d = 2.3);
    }
    translate(screw3_at) {
        circle(d = 2.3);
    }
}

// (Metal) top plate
module top_plate() {
    difference() {
        plate(
            edge_cuts_data = edge_cuts_data,
            modules_data = modules_data,
            include_footprints = [
                "Keebio-Parts:TRRS-PJ-320A",
                "ProjectLocal:SW_MX_PG1350_reversible",
                "ProjectLocal:DIP40_Reversible_ZigZag",
                "ProjectLocal:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_Reversible",
                "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad",
                "ProjectLocal:H_M2_Spacer_Hole",
            ],
            force_include_references = [
                "J3"
            ]
        );

        translate([0, -100]) {
            cover_screws();
        }

        // Cut out space for H11
        translate([0, -100 + 23.2]) {
            offset(1) {
                square([7, 5]);
            }
        }

        // Cut out space for H12, H13
        translate([53.2, -100]) {
            offset(1) {
                square([7, 22.2]);
            }
        }

        // Round corners
        // U1, left, top
        translate([0, -100 + 23.2 + 5.95]) {
            corner_rounder(r = 2.5);
        }
        // U1, left, top, again
        translate([7.95, -100 + 23.2]) {
            corner_rounder(r = 2.5);
        }
        // U1, bottom, right
        translate([61.15, -100.1]) {
            corner_rounder(r = 2.5);
        }
        // J3, left, top
        translate([J3_at[0], -J3_at[1]] + [-1.55, 2.3]) {
            rotate([0, 0, 0]) {
                corner_rounder(r = 1);
            }
        }
        // J3, left, bottom
        translate([J3_at[0], -J3_at[1]] + [-1.55, -2.3 -2.54*3]) {
            rotate([0, 0, 270]) {
                corner_rounder(r = 1);
            }
        }
        // J1, right, top
        translate([J1_at[0], -J1_at[1]] + [2.5, 6.3]) {
            rotate([0, 0, 90]) {
                corner_rounder(r = 2.5);
            }
        }
        // J1, right, bottom
        translate([J1_at[0], -J1_at[1]] + [2.5, -4]) {
            rotate([0, 0, 180]) {
                corner_rounder(r = 2.5);
            }
        }
        // SW_RE1, bottom, left
        translate([SW_RE1_at[0], -SW_RE1_at[1]] + [-4, -1.8]) {
            rotate([0, 0, 90]) {
                corner_rounder(r = 2.5);
            }
        }
        // SW_RE1, bottom, right
        translate([SW_RE1_at[0], -SW_RE1_at[1]] + [8.8, -1.8]) {
            rotate([0, 0, 0]) {
                corner_rounder(r = 2.5);
            }
        }
    }
}

// (Metal) top plate
// but allowing access to the SW_BOOT SW_RESET buttons.
module top_plate_with_buttons() {
    difference() {
        plate(
            edge_cuts_data = edge_cuts_data,
            modules_data = modules_data,
            include_footprints = [
                "Keebio-Parts:TRRS-PJ-320A",
                "ProjectLocal:SW_MX_PG1350_reversible",
                "ProjectLocal:DIP40_Reversible_ZigZag",
                "ProjectLocal:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_Reversible",
                "MountingHole:MountingHole_2.2mm_M2_ISO7380_Pad",
                "ProjectLocal:H_M2_Spacer_Hole",
                "ProjectLocal:SW_Push_SPST_3x6mm",
            ],
            force_include_references = [
                "J3"
            ]
        );

        translate([0, -100]) {
            cover_screws();
        }

        // Cut out space for H11
        translate([0, -100 + 23.2]) {
            offset(1) {
                square([7, 5]);
            }
        }

        // Cut out space for H12, H13
        translate([53.2, -100]) {
            offset(1) {
                square([7, 22.2]);
            }
        }

        // Round corners
        // U1, left, top
        translate([0, -100 + 23.2 + 5.95]) {
            corner_rounder(r = 2.5);
        }
        // U1, left, top, again
        translate([7.95, -100 + 23.2]) {
            corner_rounder(r = 2.5);
        }
        // J3, left, top
        translate([J3_at[0], -J3_at[1]] + [-1.55, 2.3]) {
            rotate([0, 0, 0]) {
                corner_rounder(r = 1);
            }
        }
        // J3, left, bottom
        translate([J3_at[0], -J3_at[1]] + [-1.55, -2.3 -2.54*3]) {
            rotate([0, 0, 270]) {
                corner_rounder(r = 1);
            }
        }
        // J1, right, top
        translate([J1_at[0], -J1_at[1]] + [2.5, 6.3]) {
            rotate([0, 0, 90]) {
                corner_rounder(r = 2.5);
            }
        }
        // J1, right, bottom
        translate([J1_at[0], -J1_at[1]] + [2.5, -4]) {
            rotate([0, 0, 180]) {
                corner_rounder(r = 2.5);
            }
        }
        // SW_RE1, bottom, left
        translate([SW_RE1_at[0], -SW_RE1_at[1]] + [-4, -1.8]) {
            rotate([0, 0, 90]) {
                corner_rounder(r = 2.5);
            }
        }
        // SW_RE1, bottom, right
        translate([SW_RE1_at[0], -SW_RE1_at[1]] + [8.8, -1.8]) {
            rotate([0, 0, 0]) {
                corner_rounder(r = 2.5);
            }
        }
        // Reset Buttons
        translate([61, -89.1]) {
            corner_rounder(r = 2.5);
        }
        translate([79.9, -100.1]) {
            corner_rounder(r = 2.5);
        }
        translate([60, -104]) {
            offset(1) {
                square([19, 14], center = false);
            }
        }
    }
}

// Acrylic bottom plate
// variant with hole for the motor, boot/reset buttons.
module bottom_plate_with_motor_and_buttons() {
    difference() {
        plate(
            edge_cuts_data = edge_cuts_data,
            modules_data = modules_data,
            include_footprints = [
                "ProjectLocal:H_M2_Spacer_Hole",
                "ProjectLocal:Mini_DC_Motor",
                "ProjectLocal:SW_Push_SPST_3x6mm",
            ]
        );

        // Space on the bottom plate for the BOOT0, RESET1 buttons
        translate([SW_BOOT0_at[0] - 2.5, -SW_BOOT0_at[1] - 10]) {
            offset(5) {
              square([10, 10]);
            }
        }
        translate([SW_BOOT0_at[0], -SW_BOOT0_at[1]] + [-7.49, -9.6]) {
            rotate([0, 0, 90]) {
                corner_rounder(r = 5);
            }
        }
        translate([SW_BOOT0_at[0], -SW_BOOT0_at[1]] + [+12.49, -9.6]) {
            rotate([0, 0, 0]) {
                corner_rounder(r = 5);
            }
        }
    }
}

// Acrylic bottom plate
module bottom_plate() {
    plate(
        edge_cuts_data = edge_cuts_data,
        modules_data = modules_data,
        include_footprints = [
            "ProjectLocal:H_M2_Spacer_Hole",
        ]
    );
}

// Acrylic plate cover (Covers U1)
//  with hole for accessing the NRST, BOOT0 buttons
//  on the WeAct Studio MiniF4.
module microcontroller_cover_with_buttons() {
    difference() {
        offset(2) {
            offset(-2) {
                square([U1_length + 4.5, U1_width], center = false);
                square([10, U1_width + 6], center = false);
            }
        }

        cover_screws();
        translate([14.5, 11]) {
            offset(1) {
                square(13.5, center = true);
            }
        }
    }
}

// Acrylic plate cover (Covers U1)
module microcontroller_cover() {
    difference() {
        offset(2) {
            offset(-2) {
                square([U1_length + 4.5, U1_width], center = false);
                square([10, U1_width + 6], center = false);
            }
        }

        cover_screws();
    }
}

*top_plate();
*top_plate_with_buttons();
*bottom_plate_with_motor_and_buttons();
*bottom_plate();
*microcontroller_cover_with_buttons();
*microcontroller_cover();