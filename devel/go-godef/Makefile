# $NetBSD: Makefile,v 1.24 2021/01/23 14:22:57 bsiegert Exp $

DISTNAME=	godef-0.0.20170920
PKGNAME=	go-${DISTNAME}
PKGREVISION=	23
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=rogpeppe/}
GITHUB_PROJECT=	godef
GITHUB_TAG=	b692db1de5229d4248e23c41736b431eb665615d

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/rogpeppe/godef
COMMENT=	Print where symbols are defined in Go source code
LICENSE=	modified-bsd

GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG}
GO_SRCPATH=	github.com/rogpeppe/${GITHUB_PROJECT}

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
