
unset IFS

EXT_REPO=repo
EXT_DIFF=diff
EXT_PTCH=patch

if [ ! ${DIR_IDX} ]; then
	DIR_IDX=3
fi

DIR_CURRENT=$PWD

DIR_LPRJ=${DIR_CURRENT}/repo
DIR_LMAK=${DIR_CURRENT}/mk
DIR_LBIN=${DIR_CURRENT}/bin
DIR_LPAT=${DIR_CURRENT}/patches
DIR_LBLD=${DIR_CURRENT}/v1

DIR_LIB=${DIR_CURRENT}/../lib${DIR_IDX}
DIR_BIN=${DIR_CURRENT}/../bin${DIR_IDX}
DIR_DNL=${DIR_CURRENT}/../dnl${DIR_IDX}
DIR_UPL=${DIR_CURRENT}/../upl${DIR_IDX}
DIR_ARC=${DIR_CURRENT}/../arc${DIR_IDX}
DIR_DIF=${DIR_CURRENT}/../dif${DIR_IDX}
DIR_PAT=${DIR_CURRENT}/../patches${DIR_IDX}

# Hmmmm...
#SVN_OPTIONS=--trust-server-cert --non-interactive

