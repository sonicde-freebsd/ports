PORTNAME=	sonicde
PORTVERSION=	${KDE_PLASMA_VERSION}.${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11

MAINTAINER=	b-aazbsd@proton.me
COMMENT=	Sonic-DE components, Plasma Desktop and KDE Applications (meta port)
WWW=		https://github.com/Sonic-DE

LICENSE=	NONE

LIB_DEPENDS=	libkworkspace6.so:x11/sonic-workspace
RUN_DEPENDS=	kde-baseapps>=${KDE_APPLICATIONS_VERSION}:x11/kde-baseapps \
		kwin_x11:x11-wm/sonic-win \
		kaccess:x11/sonic-desktop

USES=		kde:6 metaport qt:6
USE_KDE=	${_USE_PLASMA_ALL:Nbreeze-gtk:Nkde-gtk-config:Noxygen:Noxygen-sounds:Nplasma-workspace:Nkwin-x11:Nplasma-desktop}

CONFLICTS=	kde

# The official VLC backend can be used, but vlc port still uses Qt5 for GUI.
OPTIONS_DEFAULT=	MPV
OPTIONS_MULTI=		PHONON
OPTIONS_MULTI_PHONON=	MPV VLC

PHONON_DESC=	Phonon multimedia backend

MPV_DESC=	mpv backend
MPV_USE=	KDE=phonon-mpv

VLC_DESC=	VLC backend (depends on Qt5 packages)
VLC_USE=	KDE=phonon-vlc

.include <bsd.port.mk>
