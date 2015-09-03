#!/bin/bash
# 
# Copyright (c) 2015 Javier Sayago <admin@lonasdigital.com>
# Contact: javilonas@esp-desarrolladores.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

echo "#################### Asignando permisos correctos  ####################"
find . -type f -name '*.h' -exec chmod 644 {} \;
find . -type f -name '*.c' -exec chmod 644 {} \;
find . -type f -name '*.sh' -exec chmod 755 {} \;
echo ""
sleep 3
echo ""
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo ""
sleep 1
echo ""
echo "#################### Eliminando restos anteriores  ####################"
make cleanall > /dev/null 2>&1
echo ""
sleep 3
echo ""
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo ""
sleep 1
echo ""
echo "#################### Iniciando Compilación binario ####################"
export ARCH=ppc
echo ""
export target=ppc-old
echo ""
export TOOLCHAIN=/home/lonas/toolchains/powerpc-old-tuxbox-linux/dm500/cdk
echo ""
make target=ppc-old CROSS_COMPILE=$TOOLCHAIN/bin/powerpc-tuxbox-linux-gnu-
echo ""
sleep 3
echo ""
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo "......................................................................."
echo ""
sleep 1
echo ""
chmod 755 Make_PPC_OLD.sh
echo ""
sleep 3
echo ""
echo "Finalizado!!"
