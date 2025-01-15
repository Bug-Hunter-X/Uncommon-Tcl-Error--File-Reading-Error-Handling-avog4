proc read_file {filename} { 
  set fp [open $filename r] 
  if {$fp == -1} { 
    puts "Error opening file: $filename" 
    return -1 
  } 
  set content [read $fp] 
  close $fp 
  return $content 
} 

set data [read_file data.txt] 
if {$data == -1} { 
  puts "Error reading file" 
} else { 
  puts $data 
}

#The improved error handling provides informative messages, allowing for easier debugging and user understanding.
#Also consider adding more specific error checking and handling to enhance the robustness of the code further.