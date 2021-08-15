#!/bin/bash

# Uninstallable Apps list
echo uninstalling apps......
echo 

uninstall_app_lists=(
com.miui.fm
com.miui.compass
com.google.android.apps.googleassistant
com.xiaomi.mipicks
com.google.android.googlequicksearchbox
com.google.android.apps.subscriptions.red
com.google.android.apps.nbu.paisa.user
com.micredit.in
com.mipay.wallet.in
com.miui.player
com.next.innovation.takatak
com.netflix.mediaclient
com.netflix.mediaclient
com.miui.notes
com.google.android.apps.podcasts
com.miui.miservice
com.android.stk
com.miui.weather2
com.miui.analytics
com.google.android.projection.gearhead
com.miui.cleanmaster
com.xiaomi.mi_connect_service
com.miui.msa.global
com.google.android.setupwizard
com.google.android.apps.restore
com.miui.backup
com.miui.cloudbackup
com.google.android.apps.wellbeing
com.facebook.katana
com.facebook.services
com.facebook.system
com.facebook.appmanager
com.miui.bugreport
com.caf.fmradio
com.xiaomi.glgm
com.google.android.tts
com.google.ar.lens
com.xiaomi.payment
cn.wps.xiaomi.abroad.lite
com.miui.micloudsync
com.android.nfc
com.android.hotwordenrollment.okgoogle
com.netflix.partner.activation
com.android.printspooler
com.android.printservice.recommendation
com.miui.hybrid
com.android.bips
com.android.apps.tag
com.android.hotwordenrollment.xgoogle
com.miui.cloudservice
com.xiaomi.simactivate.service
com.google.android.youtube
com.xiaomi.midrop
com.google.android.marvin.talkback
com.google.android.apps.turbo
com.funnypuri.client
com.android.soundrecorder
com.amazon.avod.thirdpartyclient
com.xiaomi.scanner
com.linkedin.android
)

for uninstall_apk in ${uninstall_app_lists[@]}; do
    echo - $uninstall_apk
    adb shell pm uninstall $uninstall_apk
done
echo 

# List of system apps can able to disable
echo disabling apps......

disable_app_lists=(
com.miui.android.fashiongallery
com.facemoji.lite.xiaomi
)

for disable_apk in ${disable_app_lists[@]}; do
    echo - $disable_apk
    adb shell pm disable-user $disable_apk
done

exit 0
