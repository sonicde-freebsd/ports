PORTNAME=	sonic-workspace
DISTVERSION=	6.5.5.1
CATEGORIES=	x11

COMMENT=	Sonic Workspace
MAINTAINER=	b-aazbsd@proton.me

LICENSE=	LGPL20

LIB_DEPENDS=	libcanberra.so:audio/libcanberra \
		libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libicui18n.so:devel/icu \
		libqalculate.so:math/libqalculate \
		libudev.so:devel/libudev-devd \
		libxcb-image.so:x11/xcb-util-image \
		libxcb-util.so:x11/xcb-util \
		libxkbcommon.so:x11/libxkbcommon

RUN_DEPENDS=	kio-extras>=24.12.3:devel/kio-extras \
		kio-fuse>=5.1.0_1:filesystems/kio-fuse \
		mkfontscale:x11-fonts/mkfontscale \
		oxygen-icons>=0:x11-themes/oxygen-icons \
		xmessage:x11/xmessage \
		xrdb:x11/xrdb \
		xset:x11/xset \
		kwin_x11:x11-wm/sonic-win

USES=		cmake desktop-file-utils gettext gl kde:6 pkgconfig python \
		qt:6 shebangfix tar:xz xorg
USE_GITHUB=yes
GH_ACCOUNT=Sonic-DE

USE_GL=		gl opengl
USE_KDE=	activities activities-stats archive attica auth baloo \
		bookmarks colorscheme completion config configwidgets \
		coreaddons crash dbusaddons doctools filemetadata globalaccel \
		guiaddons holidays i18n iconthemes idletime itemmodels \
		itemviews jobwidgets kcmutils kdeclarative kio kirigami-addons \
		kirigami2 kquickcharts kscreenlocker kwin \
		layer-shell-qt libkexiv2 libkscreen libksysguard libplasma \
		newstuff notifications notifyconfig package parts phonon \
		plasma5support prison runner service solid \
		statusnotifieritem svg syntaxhighlighting texteditor \
		textwidgets userfeedback wallet \
		widgetsaddons windowsystem xmlgui \
		ecm:build
USE_QT=		base declarative location svg
USE_XORG=	ice sm x11 xau xcb xcursor xext xfixes xft xi xrender xtst
SHEBANG_FILES=	components/calendar/kconf_update/migrate-calendar-to-plugin-id.py.in

CMAKE_ON=	PLASMA_X11_DEFAULT_SESSION \
		CMAKE_DISABLE_FIND_PACKAGE_KF6NetworkManagerQt

OPTIONS_DEFINE=	GTK

GTK_DESC=		Global menu bar support for GTK applications
GTK_RUN_DEPENDS=	appmenu-gtk-module>0:x11/gtk-app-menu

post-patch:
	@${REINPLACE_CMD} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${PATCH_WRKSRC}/startkde/startplasma.cpp \
		${PATCH_WRKSRC}/login-sessions/plasmawayland.desktop.cmake


.include <bsd.port.mk>

Warning: you need LIB_DEPENDS+=libkfontinst.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libkfontinstui.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libkrdb.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libxcb-cursor.so:x11/xcb-util-cursor
Warning: you need LIB_DEPENDS+=libklookandfeel.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libklipper.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libpackagekitqt6.so:ports-mgmt/packagekit-qt
Warning: you need LIB_DEPENDS+=libtaskmanager.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libKNightTime.so:sysutils/plasma6-knighttime
Warning: you need LIB_DEPENDS+=libkmpris.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libAppStreamQt.so:devel/appstream-qt
Warning: you need LIB_DEPENDS+=libnotificationmanager.so:x11/plasma6-plasma-workspace
Warning: you need USES=qt:6 and USE_QT+=positioning
Warning: you need LIB_DEPENDS+=libbatterycontrol.so:x11/plasma6-plasma-workspace
Warning: you need LIB_DEPENDS+=libdbus-1.so:devel/dbus


