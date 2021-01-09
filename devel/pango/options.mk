# $NetBSD: options.mk,v 1.17 2019/08/16 10:43:24 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.pango
PKG_SUPPORTED_OPTIONS=	libthai quartz x11 introspection
PKG_SUGGESTED_OPTIONS=	x11 introspection

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		coretext quartz x11 thai introspection x11introspection

###
### X11 support
###
.if !empty(PKG_OPTIONS:Mx11)
# fix for pangox.pc
PLIST.x11=		yes
BUILDLINK_API_DEPENDS.Xft2+=	Xft2>=2.1.7nb3
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXrender/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXt?=	build # only for configure
.include "../../x11/libXt/buildlink3.mk"
.endif

###
### Thai language support
###
.if !empty(PKG_OPTIONS:Mlibthai)
PLIST.thai=		yes
.include "../../devel/libthai/buildlink3.mk"
.endif

.include "../../mk/bsd.prefs.mk"

###
### Quartz "support"
###
.if ${OPSYS} == "Darwin"
### always looks for system CoreText
.  if empty(MACHINE_PLATFORM:MDarwin-[1-8].*-*)
### CoreText is only available in 10.5 or newer
PLIST.coretext=		yes
.  endif
.  if !empty(PKG_OPTIONS:Mquartz)
### installs its coretext header file if cairo was built with "quartz" option
PLIST.quartz=		yes
.  endif
.endif

###
### introspection support
###
.if !empty(PKG_OPTIONS:Mintrospection)
PLIST.introspection=		yes
.  if !empty(PKG_OPTIONS:Mx11)
PLIST.x11introspection=		yes
.  endif
MESON_ARGS+=		-D introspection=true
BUILDLINK_DEPMETHOD.gobject-introspection=	build
.include "../../devel/gobject-introspection/buildlink3.mk"
.else
MESON_ARGS+=		-D introspection=false
.endif
