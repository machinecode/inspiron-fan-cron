#Omer Faruk AK 2013 - faruk@iyte.net
#!/bin/bash
cpu_heat=$(sensors | grep CPU | grep -o "[0-9]*\." | grep -o "[0-9]*")

if [ "$cpu_heat" -le 65 ]; then
	i8kctl fan 1 1
else
	i8kctl fan 1 2
fi
