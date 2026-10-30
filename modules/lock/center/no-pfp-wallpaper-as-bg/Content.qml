import QtQuick
import QtQuick.Layouts
import Caelestia.Config
import qs.components
import qs.services
import qs.components.images
Item {
    id: root

    required property var lock

    implicitWidth: layout.implicitWidth
    implicitHeight: layout.implicitHeight

    CachingImage {
        anchors.fill: parent
        path: Wallpapers.current
    }

    RowLayout {
        id: lyout

        anchors.fill: parent
        spacing: Tokens.spacing.largeIncreased * 2

        ColumnLayout {
            Layout.fillWidth: true
            spacing: Tokens.spacing.medium

            WeatherInfo {
                Layout.fillWidth: true
                rootHeight: root.height
            }

            Fetch {
                Layout.fillWidth: true
                rootHeight: root.height
            }

            Media {
                Layout.fillWidth: true
                Layout.fillHeight: true
                lock: root.lock
            }
        }

        Center {
            lock: root.lock
        }

        ColumnLayout {
            Layout.fillWidth: true
            spacing: Tokens.spacing.medium

            Resources {
                Layout.fillWidth: true
            }

            StyledRect {
                Layout.fillWidth: true
                Layout.fillHeight: true

                bottomRightRadius: Tokens.rounding.extraLarge
                radius: Tokens.rounding.medium
                color: Colours.tPalette.m3surfaceContainer

                NotifDock {
                    lock: root.lock
                }
            }
        }
    }
}