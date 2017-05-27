#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HBS_CAMERA_FSW_ROOT=`pwd`
export HBS_CAMERA_FSW_BINARY=fswebcam
export HBS_CAMERA_FSW_ARGUMENTS="-r 1280x720 -s brightness=65% -s Contrast=50% -s Gamma=100% --jpeg 100 --no-banner"
export HBS_CAMERA_FSW_REPOSITORY=$HOCHOB_MEDIA_IMAGE_VISITORS_FSWEBCAM
export HBS_CAMERA_FSW_IMAGE=$HOCHOB_MEDIA_IMAGE_VISITORS_FSWEBCAM_IMAGE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

$HBS_CAMERA_FSW_BINARY $HBS_CAMERA_FSW_ARGUMENTS $HBS_CAMERA_FSW_IMAGE

# End of File
