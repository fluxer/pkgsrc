# $NetBSD: Makefile,v 1.17 2020/08/17 20:19:06 leot Exp $

DISTNAME=	paper-icon-theme-1.5.0
PKGREVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=snwh/}
GITHUB_TAG=	v.${PKGVERSION_NOREV}

MAINTAINER=	youri@NetBSD.org
HOMEPAGE=	https://github.com/snwh/paper-icon-theme
COMMENT=	Modern freedesktop icon theme
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/${GITHUB_PROJECT}-${GITHUB_TAG}

REPLACE_PYTHON+=	meson/post_install.py

PYTHON_FOR_BUILD_ONLY=	tool

CHECK_WRKREF_SKIP+=		share/icons/*/*/*/*
CHECK_INTERPRETER_SKIP+=	share/icons/*/*/*/*

.include "../../devel/meson/build.mk"
.include "../../graphics/adwaita-icon-theme/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
