
#NESTED LOOP SOLUTION TO PLAYING GIF IN TERMINAL

# Uncomment below to see the limitations of the code:
#echo -e "\033[5;41;1;37m   *** ERROR ***   \033[0m"

#saves the filenames into an array -> enter as many as you want as long as it corresponds to a real file that you want to read
#below are two files (f1 and f2) that are being saved into the FRAMES array
declare -x FRAMES=(f1 f2)

# objectifying the code so it's in a function
gif(){
    # runs the loop forever like a gif
    while :
    do
        # runs a single iteration of the gif
        for k in "${!FRAMES[@]}"; do
            
            # reads file names like 'f1' and 'f2' etc sequentially
            cat "${FRAMES[k]}"
            # framerate: how fast the gif goes -> change the numerical value after 'sleep'
            sleep 0.1
            # clears for new image: this is the biggest limitation of the code and seemingly unavoidable
            # printf "\\r[ ${FRAME[k]} ]" only prints out the first line in the file
            # so it treats every row in f1 as an array, and prints out f2 straight after like a fax machine
            clear

        done

    done

}

#calls gif function and executes
gif


# FURTHER EXPLAINATION

# A gif is a sequence of images
# This means a gif is an array that also loops forever
# To compile a gif you must first set the gif to loop once -> (popcat opens its mouth -> popcat closes its mouth)
# To make sure the gif loops you make put it inside a forever loop which is what I did with the while ':' (which is always true) -> popcat pops forever until you press cntrl+c