// Material Symbol via ligature rendering — for use in SDDM pixel theme
// Pass icon name as text (e.g. text: "arrow_forward")
import QtQuick 2.15

Text {
    property int iconSize: 18
    property color iconColor: "#cdd6f4"
    property string symFont: ""

    font.family: symFont
    font.pixelSize: iconSize
    color: iconColor
}
