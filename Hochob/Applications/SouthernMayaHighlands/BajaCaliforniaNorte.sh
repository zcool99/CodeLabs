#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export BAJACALIFORNIANORTE_PID=$$
export BAJACALIFORNIANORTE_NAME="Baja California Norte Application"
export BAJACALIFORNIANORTE_PATH=$(readlink -f "$0")
export BAJACALIFORNIANORTE_DIRECTORY=$(dirname "$BAJACALIFORNIANORTE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Memories.sh "5" "off" "${BAJACALIFORNIANORTE_NAME}" &

Eog.sh "$VISITORSCENTER_IMAGE/*" &
sleep 5
Mpg123.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaNorte.mp3" &
sleep 19.2
Robot.sh lupe/say "Nel"
Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/headleft 1
sleep .6
Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/headleft 1
sleep .6
Robot.sh lupe/headright 1
sleep .6
Robot.sh lupe/resetall 1
sleep 5

kill -- -$(ps -o pgid=$BAJACALIFORNIANORTE_PID | grep -o '[0-9]*')

# End of File
