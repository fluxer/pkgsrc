# $NetBSD: Makefile,v 1.12 2021/01/28 18:04:51 tpaul Exp $

DISTNAME=	terraform-provider-random-2.3.0
PKGREVISION=	7
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=hashicorp/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.terraform.io/docs/providers/random/
COMMENT=	Terraform provider for randomness
LICENSE=	mpl-2.0

DEPENDS+=	terraform-[0-9]*:../../net/terraform

UNLIMIT_RESOURCES=	datasize virtualsize

GO_DIST_BASE=	${DISTNAME}
GO_SRCPATH=	github.com/terraform-providers/${GITHUB_PROJECT}

GO_BUILD_PATTERN=	${GO_SRCPATH}/.

USE_TOOLS+=	bash
REPLACE_BASH+=	scripts/*.sh

CHECK_RELRO_SKIP+=	bin/terraform-provider-random

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
