PORTNAME=	silver-theme
DISTVERSION=	6.5.1
CATEGORIES=	x11-themes

MAINTAINER=	b-aazbsd@proton.me
COMMENT=	Silver theme from Sonic-DE
WWW=		https://github.com/Sonic-DE/silver-theme

LICENSE=	LGPL20

USES=		cmake gettext gl tar:xz xorg kde:6 qt:6
USE_GL=		gl opengl
USE_XORG=	x11
USE_KDE=	colorscheme config configwidgets coreaddons decoration \
    		frameworkintegration guiaddons i18n iconthemes kcmutils \
    		kirigami2 widgetsaddons windowsystem \
    		ecm:build
USE_QT=		base declarative
USE_GITHUB=	yes
GH_ACCOUNT=	Sonic-DE

.include <bsd.port.mk>
