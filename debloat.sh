#!/bin/bash

app=(
org.lineageos.jelly
com.android.calculator2
org.lineageos.etar
com.android.contacts
org.lineageos.glimpse
com.oplus.consumerIRApp
us.spotco.ir_remote
com.brouken.player
org.lineageos.twelve
com.mycompany.myapp
com.wstxda.viper4android
)

for app in ${app[@]}; do adb shell pm disable-user $app; done
