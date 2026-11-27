PORTNAME=	pkgbase
DISTVERSION=	0.9
CATEGORIES=	sysutils

MAINTAINER=	cryx-ports@h3q.com
COMMENT=	FreeBSD PKGBASE upgrade tool
WWW=		https://github.com/vermaden/pkgbase

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_GITHUB=	yes
GH_ACCOUNT=	vermaden

NO_ARCH=	yes
NO_BUILD=	yes

PLIST_FILES=	bin/pkgbase

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pkgbase	${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
