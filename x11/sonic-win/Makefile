PORTNAME=   sonic-win
DISTVERSIONPREFIX=  v
DISTVERSION=    6.5.5
CATEGORIES= x11 kde

MAINTAINER= you@example.com
COMMENT=    Sonic Desktop window manager (KWin fork)
WWW=        https://github.com/Sonic-DE/sonic-win

LICENSE=    GPLv2
LICENSE_FILE=   ${WRKSRC}/COPYING

USES=       cmake compiler:c++17-lang kde:5 qt:5 pkgconfig \
        gl xorg tar:xz
USE_GL=     gl egl
USE_KDE=    auth bookmarks codecs completion config \
        configwidgets coreaddons crash dbusaddons \
        decoration guiaddons i18n iconthemes \
        itemmodels itemviews jobwidgets kcmutils \
        kio notifications package plasma-framework \
        service solid wayland widgetsaddons windowsystem
USE_QT=     core gui widgets dbus network x11extras \
        concurrent svg xml buildtools:build qmake:build
USE_XORG=   x11 xcb xext xfixes xtst xrender

USE_GITHUB= yes
GH_ACCOUNT= Sonic-DE
GH_PROJECT= sonic-win

CMAKE_ON=   BUILD_TESTING=OFF

# Fix Linux paths
post-patch:
    @${REINPLACE_CMD} -e 's|/usr/share|${PREFIX}/share|g' \
        ${WRKSRC}/src/*/*

.include <bsd.port.mk>
