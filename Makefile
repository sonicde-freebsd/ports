SUBDIR += x11
SUBDIR += x11-themes
SUBDIR += x11-wm

.include <bsd.port.subdir.mk>

GIT?= git
.if !target(update)
update:
.if exists(${.CURDIR}/.git)
	@echo "--------------------------------------------------------------"
	@echo ">>> Updating ${.CURDIR} from git repository"
	@echo "--------------------------------------------------------------"
	cd ${.CURDIR}; ${GIT} pull
.endif
.endif
