PORTNAME=   sonic-workspace
DISTVERSION=    6.5.5
CATEGORIES= x11 kde

MAINTAINER= haplessidiot
COMMENT=    Sonic Desktop workspace environment (KDE6-based)
WWW=        https://github.com/Sonic-DE/sonic-workspace

LICENSE=    GPLv2
LICENSE_FILE=   ${WRKSRC}/COPYING

USES=       cmake compiler:c++17-lang kde:6 qt:6 pkgconfig \
        gl xorg wayland tar:xz
USE_GL=     gl egl
USE_XORG=   x11 xcb xext xfixes xrender xi sm
USE_KDE=    auth bookmarks codecs completion config \
        configwidgets coreaddons crash dbusaddons \
        decoration guiaddons i18n iconthemes \
        itemmodels itemviews jobwidgets kcmutils \
        kio notifications package plasma-framework \
        service solid wayland widgetsaddons windowsystem \
        globalaccel idle time kscreenlocker \
        kirigami2 runner doctools newstuff declarative \
        plasma-workspace plasma-desktop
USE_QT=     base declarative quick quickcontrols2 \
        tools svg sensors multimedia \
        waylandcompat \
        buildtools:build qmake:build

USE_GITHUB= yes
GH_ACCOUNT= Sonic-DE
GH_PROJECT= sonic-workspace

CMAKE_ON=   BUILD_TESTING=OFF \
        KDE_INSTALL_USE_QT_SYS_PATHS=ON

post-patch:
    @${REINPLACE_CMD} -e 's|/usr/share|${PREFIX}/share|g' \
        ${WRKSRC}/src/*/*


PORTSDIR?= ${.CURDIR}/../..
.include "${PORTSDIR}/Mk/bsd.port.mk"
