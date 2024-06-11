extends Node

# CAPTNJAYCE
# this script an autoload meaning the values here will be loaded and initilized
# before everything else. Saving and Loading will also be done in this script 
# with these values. 
# stageX is used to determine which stages are unlocked, they are modified in LRTP.gd
# and checked in StudyOptions.gd
# stageX_check is used to determine which checkboxes are ticked, they are modified in LRTP.gd
# and checked in StudyOptions.gd

var stage1 = true
var stage2 = false
var stage3 = false
var stage4 = false

var stage1_check = false
var stage2_check = false
var stage3_check = false
var stage4_check = false
