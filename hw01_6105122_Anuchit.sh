
#!/bin/bash
echo -e "Welcome to covid-19 testing program \nYou will have to answer 10 questions. "
read -p "1.What is Your name? : " name
read -p "2.How old are you? : " age
nn=0
if [ $age -lt 1 -o $age -gt 120 ] ; then
        echo -e  "You age is out of human life range.\nPlease answer the questions again."
        exit 1
fi
read -p "3.What is your physical gender? [input 1 for male , 2 for female] : " gender
if [ $gender -lt 0 -o $gender -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
fi
if [ $gender -eq 1 ] ; then
	gd=male
elif [ $gender -eq 2 ] ; then
	gd=female
fi
read -p "4.Have you traveled to a foreign country since March? [input 1 for yes , 2 for no] : " tfc
if [ $tfc -lt 0 -o $tfc -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
elif [ $tfc -eq 1 ] ; then
	nn=$((nn + 1))
fi
read -p "5.Have you go to a Boxing stadium in 06/03/2563? [input 1 for yes , 2 for no] : " box
if [ $box -lt 0 -o $box -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
elif [ $box -eq 1 ] ; then
	nn=$((nn + 1))
fi
read -p "6.Are you Body temperature more than 37.5 c? [input 1 for yes , 2 for no] : " tb
if [ $tb -lt 0 -o $tb -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
elif [ $tb -eq  1 ] ; then
	nn=$((nn + 1))
fi
read -p "7.Are you have sore throat? [input 1 for yes , 2 for no] : " st
if [ $st -lt 0 -o $st -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
elif [ $st -eq  1 ] ; then
	nn=$((nn + 1))
fi
read -p "8.Is you smell system nomal? [input 1 for yes , 2 for no] : " ss
if [ $ss -lt 0 -o $ss -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
elif [ $ss -eq  2 ] ; then
	nn=$((nn + 1))
fi
read -p "9.Did you get close to the covid-19 patient's? [input 1 for yes , 2 for no] : " cp
if [ $cp -lt 0 -o $cp -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
elif [ $cp -eq  1 ] ; then
	nn=$((nn + 1))
fi
read -p "10.Are you have cough? [input 1 for yes , 2 for no] : " hc
if [ $hc -lt 0 -o $hc -gt 2 ] ; then
	echo -e  "You input is wrong\nPlease answer the questions again."
	exit 1
elif [ $hc -eq  1 ] ; then
	nn=$((nn + 1))
fi
echo -e "Your Profile \nname : $name  \nage : $age \ngender : $gd \nThis is a suggestion for you."
if [ $nn -lt 1 ] ; then
	echo "Congratulation! You are free from Covid-19."
elif [ $nn -gt 1 -a $nn -lt 4 ] ; then
	echo "You shold 14-day Self-Quarantine if you have Additional symptoms go see a doctor "
elif [ $nn -gt 4 ] ; then
	"Please go to see a doctor right away!! You are at risk of Covid-19."
fi 
exit 0