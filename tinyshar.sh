#!/bin/bash
#
#by: Mathias Uhle
#
#tinyshar v.01  a rather krude mockup of the original one

cat << ENDOFTHEWORLD
#!/bin/bash
#
#made with tinyshar v.0.1
#
#
ENDOFTHEWORLD

    
    format=$1
    count=0
    shopt -s nullglob
    allfiles=(*.$format)

: '
    echo "Package" ${#allfiles[@]} "files? y/n"
    read answer 
        if [ answer == n ]
         then
          break
         elsif [ answer == y ]
       do
'

while  [ $count -lt ${#allfiles[@]} ]; do
     
 	
	cat << EOF
cat << Thisistheend > ${allfiles[$count]}.bak
EOF
	cat "${allfiles[$count]}"
echo Thisistheend

  function transrights()
     { 
	     converted=$(ls -la  $1 | awk '{print $1}' | sed 's/^.//g' | sed 's/.\{3\}/& /g' | sed 's/--- /0/g' | sed 's/--. /1/g' | sed 's/-.- /2/g' | sed 's/-.. /3/g' | sed 's/.-- /4/g' | sed 's/-.- /5/g' | sed 's/..- /6/g' | sed 's/... /7/g' | sed 's/ //g')  
      }


   transrights ${allfiles[$count]}
    echo chmod $converted ${allfiles[$count]}.bak

   count=$(( count+1 ))
done 


