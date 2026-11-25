PORTNAME=	pkgbase
DISTVERSIONPREFIX=	v
DISTVERSION=	0.8
CATEGORIES=	sysutils

MAINTAINER=	cryx-ports@h3q.com
COMMENT=	FreeBSD pkgbase(8) upgrade tool in PKGBASE world similar to freebsd-update(8) command.
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
