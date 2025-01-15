proc read_file {filename} { 
  set fp [open $filename r] 
  if {$fp == -1} { 
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

#This code will fail if the file data.txt does not exist or the user does not have read permission to the file.
#The error message is not very helpful. To make the code more robust, check for errors explicitly and use more descriptive error messages.