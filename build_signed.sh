echo -e "\nLineageOS signing script\n"
sleep 3

echo -e "\nGenerating target files\n"
make installclean
mka target-files-package otatools && echo -e "\nSigning target files\n"

CERT_DIR=vendor/lineage-priv/keys

croot
sign_target_files_apks -o -d $CERT_DIR \
    --extra_apks AdServicesApk.apk=$CERT_DIR/releasekey \
    --extra_apks FederatedCompute.apk=$CERT_DIR/releasekey \
    --extra_apks HalfSheetUX.apk=$CERT_DIR/releasekey \
    --extra_apks HealthConnectBackupRestore.apk=$CERT_DIR/releasekey \
    --extra_apks HealthConnectController.apk=$CERT_DIR/releasekey \
    --extra_apks OsuLogin.apk=$CERT_DIR/releasekey \
    --extra_apks SafetyCenterResources.apk=$CERT_DIR/releasekey \
    --extra_apks ServiceConnectivityResources.apk=$CERT_DIR/releasekey \
    --extra_apks ServiceUwbResources.apk=$CERT_DIR/releasekey \
    --extra_apks ServiceWifiResources.apk=$CERT_DIR/releasekey \
    --extra_apks WifiDialog.apk=$CERT_DIR/releasekey \
    --extra_apks com.android.adbd.apex=$CERT_DIR/com.android.adbd \
    --extra_apks com.android.adservices.apex=$CERT_DIR/com.android.adservices \
    --extra_apks com.android.adservices.api.apex=$CERT_DIR/com.android.adservices.api \
    --extra_apks com.android.appsearch.apex=$CERT_DIR/com.android.appsearch \
    --extra_apks com.android.appsearch.apk.apex=$CERT_DIR/com.android.appsearch.apk \
    --extra_apks com.android.art.apex=$CERT_DIR/com.android.art \
    --extra_apks com.android.bluetooth.apex=$CERT_DIR/com.android.bluetooth \
    --extra_apks com.android.btservices.apex=$CERT_DIR/com.android.btservices \
    --extra_apks com.android.cellbroadcast.apex=$CERT_DIR/com.android.cellbroadcast \
    --extra_apks com.android.compos.apex=$CERT_DIR/com.android.compos \
    --extra_apks com.android.configinfrastructure.apex=$CERT_DIR/com.android.configinfrastructure \
    --extra_apks com.android.connectivity.resources.apex=$CERT_DIR/com.android.connectivity.resources \
    --extra_apks com.android.conscrypt.apex=$CERT_DIR/com.android.conscrypt \
    --extra_apks com.android.devicelock.apex=$CERT_DIR/com.android.devicelock \
    --extra_apks com.android.extservices.apex=$CERT_DIR/com.android.extservices \
    --extra_apks com.android.graphics.pdf.apex=$CERT_DIR/com.android.graphics.pdf \
    --extra_apks com.android.hardware.authsecret.apex=$CERT_DIR/com.android.hardware.authsecret \
    --extra_apks com.android.hardware.biometrics.face.virtual.apex=$CERT_DIR/com.android.hardware.biometrics.face.virtual \
    --extra_apks com.android.hardware.biometrics.fingerprint.virtual.apex=$CERT_DIR/com.android.hardware.biometrics.fingerprint.virtual \
    --extra_apks com.android.hardware.boot.apex=$CERT_DIR/com.android.hardware.boot \
    --extra_apks com.android.hardware.cas.apex=$CERT_DIR/com.android.hardware.cas \
    --extra_apks com.android.hardware.neuralnetworks.apex=$CERT_DIR/com.android.hardware.neuralnetworks \
    --extra_apks com.android.hardware.rebootescrow.apex=$CERT_DIR/com.android.hardware.rebootescrow \
    --extra_apks com.android.hardware.wifi.apex=$CERT_DIR/com.android.hardware.wifi \
    --extra_apks com.android.healthfitness.apex=$CERT_DIR/com.android.healthfitness \
    --extra_apks com.android.hotspot2.osulogin.apex=$CERT_DIR/com.android.hotspot2.osulogin \
    --extra_apks com.android.i18n.apex=$CERT_DIR/com.android.i18n \
    --extra_apks com.android.ipsec.apex=$CERT_DIR/com.android.ipsec \
    --extra_apks com.android.media.apex=$CERT_DIR/com.android.media \
    --extra_apks com.android.media.swcodec.apex=$CERT_DIR/com.android.media.swcodec \
    --extra_apks com.android.mediaprovider.apex=$CERT_DIR/com.android.mediaprovider \
    --extra_apks com.android.nearby.halfsheet.apex=$CERT_DIR/com.android.nearby.halfsheet \
    --extra_apks com.android.networkstack.tethering.apex=$CERT_DIR/com.android.networkstack.tethering \
    --extra_apks com.android.neuralnetworks.apex=$CERT_DIR/com.android.neuralnetworks \
    --extra_apks com.android.nfcservices.apex=$CERT_DIR/com.android.nfcservices \
    --extra_apks com.android.ondevicepersonalization.apex=$CERT_DIR/com.android.ondevicepersonalization \
    --extra_apks com.android.os.statsd.apex=$CERT_DIR/com.android.os.statsd \
    --extra_apks com.android.permission.apex=$CERT_DIR/com.android.permission \
    --extra_apks com.android.profiling.apex=$CERT_DIR/com.android.profiling \
    --extra_apks com.android.resolv.apex=$CERT_DIR/com.android.resolv \
    --extra_apks com.android.rkpd.apex=$CERT_DIR/com.android.rkpd \
    --extra_apks com.android.runtime.apex=$CERT_DIR/com.android.runtime \
    --extra_apks com.android.safetycenter.resources.apex=$CERT_DIR/com.android.safetycenter.resources \
    --extra_apks com.android.scheduling.apex=$CERT_DIR/com.android.scheduling \
    --extra_apks com.android.sdkext.apex=$CERT_DIR/com.android.sdkext \
    --extra_apks com.android.support.apexer.apex=$CERT_DIR/com.android.support.apexer \
    --extra_apks com.android.telephony.apex=$CERT_DIR/com.android.telephony \
    --extra_apks com.android.telephonymodules.apex=$CERT_DIR/com.android.telephonymodules \
    --extra_apks com.android.tethering.apex=$CERT_DIR/com.android.tethering \
    --extra_apks com.android.tzdata.apex=$CERT_DIR/com.android.tzdata \
    --extra_apks com.android.uwb.apex=$CERT_DIR/com.android.uwb \
    --extra_apks com.android.uwb.resources.apex=$CERT_DIR/com.android.uwb.resources \
    --extra_apks com.android.virt.apex=$CERT_DIR/com.android.virt \
    --extra_apks com.android.vndk.current.apex=$CERT_DIR/com.android.vndk.current \
    --extra_apks com.android.vndk.current.on_vendor.apex=$CERT_DIR/com.android.vndk.current.on_vendor \
    --extra_apks com.android.wifi.apex=$CERT_DIR/com.android.wifi \
    --extra_apks com.android.wifi.dialog.apex=$CERT_DIR/com.android.wifi.dialog \
    --extra_apks com.android.wifi.resources.apex=$CERT_DIR/com.android.wifi.resources \
    --extra_apks com.google.pixel.camera.hal.apex=$CERT_DIR/com.google.pixel.camera.hal \
    --extra_apks com.google.pixel.vibrator.hal.apex=$CERT_DIR/com.google.pixel.vibrator.hal \
    --extra_apks com.qorvo.uwb.apex=$CERT_DIR/com.qorvo.uwb \
    --extra_apex_payload_key com.android.adbd.apex=$CERT_DIR/com.android.adbd.pem \
    --extra_apex_payload_key com.android.adservices.apex=$CERT_DIR/com.android.adservices.pem \
    --extra_apex_payload_key com.android.adservices.api.apex=$CERT_DIR/com.android.adservices.api.pem \
    --extra_apex_payload_key com.android.appsearch.apex=$CERT_DIR/com.android.appsearch.pem \
    --extra_apex_payload_key com.android.appsearch.apk.apex=$CERT_DIR/com.android.appsearch.apk.pem \
    --extra_apex_payload_key com.android.art.apex=$CERT_DIR/com.android.art.pem \
    --extra_apex_payload_key com.android.bluetooth.apex=$CERT_DIR/com.android.bluetooth.pem \
    --extra_apex_payload_key com.android.btservices.apex=$CERT_DIR/com.android.btservices.pem \
    --extra_apex_payload_key com.android.cellbroadcast.apex=$CERT_DIR/com.android.cellbroadcast.pem \
    --extra_apex_payload_key com.android.compos.apex=$CERT_DIR/com.android.compos.pem \
    --extra_apex_payload_key com.android.configinfrastructure.apex=$CERT_DIR/com.android.configinfrastructure.pem \
    --extra_apex_payload_key com.android.connectivity.resources.apex=$CERT_DIR/com.android.connectivity.resources.pem \
    --extra_apex_payload_key com.android.conscrypt.apex=$CERT_DIR/com.android.conscrypt.pem \
    --extra_apex_payload_key com.android.devicelock.apex=$CERT_DIR/com.android.devicelock.pem \
    --extra_apex_payload_key com.android.extservices.apex=$CERT_DIR/com.android.extservices.pem \
    --extra_apex_payload_key com.android.graphics.pdf.apex=$CERT_DIR/com.android.graphics.pdf.pem \
    --extra_apex_payload_key com.android.hardware.authsecret.apex=$CERT_DIR/com.android.hardware.authsecret.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.face.virtual.apex=$CERT_DIR/com.android.hardware.biometrics.face.virtual.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.fingerprint.virtual.apex=$CERT_DIR/com.android.hardware.biometrics.fingerprint.virtual.pem \
    --extra_apex_payload_key com.android.hardware.boot.apex=$CERT_DIR/com.android.hardware.boot.pem \
    --extra_apex_payload_key com.android.hardware.cas.apex=$CERT_DIR/com.android.hardware.cas.pem \
    --extra_apex_payload_key com.android.hardware.neuralnetworks.apex=$CERT_DIR/com.android.hardware.neuralnetworks.pem \
    --extra_apex_payload_key com.android.hardware.rebootescrow.apex=$CERT_DIR/com.android.hardware.rebootescrow.pem \
    --extra_apex_payload_key com.android.hardware.wifi.apex=$CERT_DIR/com.android.hardware.wifi.pem \
    --extra_apex_payload_key com.android.healthfitness.apex=$CERT_DIR/com.android.healthfitness.pem \
    --extra_apex_payload_key com.android.hotspot2.osulogin.apex=$CERT_DIR/com.android.hotspot2.osulogin.pem \
    --extra_apex_payload_key com.android.i18n.apex=$CERT_DIR/com.android.i18n.pem \
    --extra_apex_payload_key com.android.ipsec.apex=$CERT_DIR/com.android.ipsec.pem \
    --extra_apex_payload_key com.android.media.apex=$CERT_DIR/com.android.media.pem \
    --extra_apex_payload_key com.android.media.swcodec.apex=$CERT_DIR/com.android.media.swcodec.pem \
    --extra_apex_payload_key com.android.mediaprovider.apex=$CERT_DIR/com.android.mediaprovider.pem \
    --extra_apex_payload_key com.android.nearby.halfsheet.apex=$CERT_DIR/com.android.nearby.halfsheet.pem \
    --extra_apex_payload_key com.android.networkstack.tethering.apex=$CERT_DIR/com.android.networkstack.tethering.pem \
    --extra_apex_payload_key com.android.neuralnetworks.apex=$CERT_DIR/com.android.neuralnetworks.pem \
    --extra_apex_payload_key com.android.nfcservices.apex=$CERT_DIR/com.android.nfcservices.pem \
    --extra_apex_payload_key com.android.ondevicepersonalization.apex=$CERT_DIR/com.android.ondevicepersonalization.pem \
    --extra_apex_payload_key com.android.os.statsd.apex=$CERT_DIR/com.android.os.statsd.pem \
    --extra_apex_payload_key com.android.permission.apex=$CERT_DIR/com.android.permission.pem \
    --extra_apex_payload_key com.android.profiling.apex=$CERT_DIR/com.android.profiling.pem \
    --extra_apex_payload_key com.android.resolv.apex=$CERT_DIR/com.android.resolv.pem \
    --extra_apex_payload_key com.android.rkpd.apex=$CERT_DIR/com.android.rkpd.pem \
    --extra_apex_payload_key com.android.runtime.apex=$CERT_DIR/com.android.runtime.pem \
    --extra_apex_payload_key com.android.safetycenter.resources.apex=$CERT_DIR/com.android.safetycenter.resources.pem \
    --extra_apex_payload_key com.android.scheduling.apex=$CERT_DIR/com.android.scheduling.pem \
    --extra_apex_payload_key com.android.sdkext.apex=$CERT_DIR/com.android.sdkext.pem \
    --extra_apex_payload_key com.android.support.apexer.apex=$CERT_DIR/com.android.support.apexer.pem \
    --extra_apex_payload_key com.android.telephony.apex=$CERT_DIR/com.android.telephony.pem \
    --extra_apex_payload_key com.android.telephonymodules.apex=$CERT_DIR/com.android.telephonymodules.pem \
    --extra_apex_payload_key com.android.tethering.apex=$CERT_DIR/com.android.tethering.pem \
    --extra_apex_payload_key com.android.tzdata.apex=$CERT_DIR/com.android.tzdata.pem \
    --extra_apex_payload_key com.android.uwb.apex=$CERT_DIR/com.android.uwb.pem \
    --extra_apex_payload_key com.android.uwb.resources.apex=$CERT_DIR/com.android.uwb.resources.pem \
    --extra_apex_payload_key com.android.virt.apex=$CERT_DIR/com.android.virt.pem \
    --extra_apex_payload_key com.android.vndk.current.apex=$CERT_DIR/com.android.vndk.current.pem \
    --extra_apex_payload_key com.android.vndk.current.on_vendor.apex=$CERT_DIR/com.android.vndk.current.on_vendor.pem \
    --extra_apex_payload_key com.android.wifi.apex=$CERT_DIR/com.android.wifi.pem \
    --extra_apex_payload_key com.android.wifi.dialog.apex=$CERT_DIR/com.android.wifi.dialog.pem \
    --extra_apex_payload_key com.android.wifi.resources.apex=$CERT_DIR/com.android.wifi.resources.pem \
    --extra_apex_payload_key com.google.pixel.camera.hal.apex=$CERT_DIR/com.google.pixel.camera.hal.pem \
    --extra_apex_payload_key com.google.pixel.vibrator.hal.apex=$CERT_DIR/com.google.pixel.vibrator.hal.pem \
    --extra_apex_payload_key com.qorvo.uwb.apex=$CERT_DIR/com.qorvo.uwb.pem \
    $OUT/obj/PACKAGING/target_files_intermediates/*-target_files*.zip \
    signed-target_files.zip

echo -e "\nGenerating install package\n"
ota_from_target_files -k $CERT_DIR/releasekey \
    --block --backup=true \
    signed-target_files.zip \
    signed-ota_update.zip

echo -e "\nSigning completed!\n"