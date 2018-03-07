#!/bin/bash

TREE=../Marlin-git
SOURCE_BASE=${TREE}/Marlin/example_configurations/delta/generic/Configuration.h
TARGET_BASE=${TREE}/Marlin/Configuration.h
SOURCE_ADV=${TREE}/Marlin/example_configurations/delta/generic/Configuration_adv.h
TARGET_ADV=${TREE}/Marlin/Configuration_adv.h

cp $SOURCE_BASE $TARGET_BASE
cp $SOURCE_ADV $TARGET_ADV

if [[ -n $1 && -e $1  ]]; then
    sed -f $1 -i ${TARGET_BASE}
fi

if [[ -n $2 && -e $2  ]]; then
    sed -f $2 -i ${TARGET_ADV}
fi
