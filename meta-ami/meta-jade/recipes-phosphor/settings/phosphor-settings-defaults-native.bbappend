# This file overrides upstream's default settings
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://defaults-jade.yaml"

do_install_append() {
        DEST=${D}${settings_datadir}
        install -d ${DEST}
        install defaults-jade.yaml ${DEST}/defaults.yaml
}
