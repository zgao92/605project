#!/bin/bash

echo "count mapname winrole" > map.txt
cat map_* >> map.txt

echo "count haswon operator" > operator.txt
cat operator_* >> operator.txt

echo "count haswon primaryweapon" > primaryweapon.txt
cat primaryweapon_* >> primaryweapon.txt
