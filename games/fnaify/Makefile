# $NetBSD: Makefile,v 1.1 2021/01/24 19:13:06 maya Exp $

GITHUB_PROJECT=	fnaify
GITHUB_TAG=	3.0
DISTNAME=	3.0
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GITHUB:=rfht/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/rfht/fnaify/
COMMENT=	Launcher for games using the FNA engine
LICENSE=	isc

WRKSRC=		${WRKDIR}/fnaify-3.0
USE_LANGUAGES=	# none
USE_TOOLS+=	bash:run

NO_BUILD=		yes
INSTALLATION_DIRS+=	${PKGMANDIR}/man1 bin share/fnaify

REPLACE_BASH+=			fnaify

.include "../../mk/bsd.prefs.mk"

SUBST_CLASSES+=			pkgsrc-paths
SUBST_STAGE.pkgsrc-paths=	pre-configure
SUBST_FILES.pkgsrc-paths+=	fnaify
SUBST_SED.pkgsrc-paths=		-e 's,^depdir.*,depdir=${PREFIX}/lib:${X11BASE}/lib,'
SUBST_SED.pkgsrc-paths+=	-e 's,^fnadir.*,fnadir=${PREFIX}/share/FNA/,'
SUBST_SED.pkgsrc-paths+=	-e s,/usr/local/,${PREFIX},
.if ${OPSYS} == "NetBSD"
SUBST_SED.pkgsrc-paths+=	-e s,ld.so,ld.elf_so,
.endif

.include "../../devel/libstubborn/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/SDL2_image/buildlink3.mk"
.include "../../audio/openal-soft/buildlink3.mk"
.include "../../audio/faudio/buildlink3.mk"
.include "../../multimedia/libtheoraplay/buildlink3.mk"
.include "../../games/fna/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
