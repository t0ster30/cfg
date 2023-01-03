#!/usr/bin/awk -f

BEGIN {
    DEFAULT_COLOR = "\033[;m";
    RED           = "\033[1;31m";
    MAGENTA       = "\033[1;35m";

    # CPU_thresholds
    cpu_high = 70; 
    cpu_middle = 60; 

    # GPU_thresholds
    gpu_high = 80; 
    gpu_middle = 70; 

    # SSD_thresholds
    ssd_high = 75;
    ssd_middle = 60;
}

function colorize(temp, mid_trsh, high_trsh) {
    new_color = "";  
    temp_number = temp;
    gsub("[^0-9]","",temp_number);
    gsub(".$","",temp_number);

    if(temp_number >= high_trsh) 
        new_color = RED;
    else if (temp_number >= mid_trsh) 
        new_color = MAGENTA;
    return new_color temp DEFAULT_COLOR;
}

/Core/         { $3 = "\t" colorize($3, cpu_middle, cpu_high); }
/Sensor/       { $3 = "\t" colorize($3, ssd_middle, ssd_high); }
/Platform Hub/ { $3 = "\t" colorize($3, cpu_middle, cpu_high); }
               { print $1,$2,$3; }