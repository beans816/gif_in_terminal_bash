oneframe(){
    cat f1
    #first delay
    sleep 0.1
    clear
}
twoframe(){
    cat f2
    #longer delay
    sleep 0.5
    clear
}

#runs the loop forever
while :
do
    oneframe
    twoframe
done
