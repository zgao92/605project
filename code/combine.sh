#!/bin/bash

echo "count mapname winrole" > map.txt
cat map_* >> map.txt
rm map_*

echo "count haswon operator" > operator.txt
cat operator_* >> operator.txt
rm operator_*

echo "count haswon primaryweapon" > primaryweapon.txt
cat primaryweapon_* >> primaryweapon.txt
rm primaryweapon_*
