# $NetBSD: Makefile,v 1.6 2020/12/07 09:24:57 adam Exp $

DISTNAME=	Wand-0.6.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	graphics python
MASTER_SITES=	${MASTER_SITE_PYPI:=W/Wand/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://docs.wand-py.org/
COMMENT=	Ctypes-based simple ImageMagick binding for Python
LICENSE=	mit

DEPENDS+=	ImageMagick-[0-9]*:../../graphics/ImageMagick

PYTHON_VERSIONED_DEPENDENCIES=	test:test

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"
