#!/bin/sh

set -xe

${MODEL_LANGUAGE}/import_cvfr.sh

${MODEL_LANGUAGE}/import_lingualibre.sh

${MODEL_LANGUAGE}/import_trainingspeech.sh

${MODEL_LANGUAGE}/import_slr57.sh

${MODEL_LANGUAGE}/import_m-ailabs.sh

generate_alphabet.sh

${MODEL_LANGUAGE}/build_lm.sh

${MODEL_LANGUAGE}/train.sh

${MODEL_LANGUAGE}/evaluate_lm.sh
