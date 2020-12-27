# $NetBSD: options.mk,v 1.1 2016/12/01 12:51:12 martin Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.libsecret
PKG_SUPPORTED_OPTIONS=	introspection
PKG_SUGGESTED_OPTIONS=	introspection

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	introspection
# introspection requires vala
.if !empty(PKG_OPTIONS:Mintrospection)
.include "../../lang/vala/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
PLIST.introspection=yes
CONFIGURE_ARGS+=	--enable-introspection=yes
CONFIGURE_ARGS+=	--enable-vala=yes
.else
CONFIGURE_ARGS+=	--enable-introspection=no
CONFIGURE_ARGS+=	--enable-vala=no
.endif
