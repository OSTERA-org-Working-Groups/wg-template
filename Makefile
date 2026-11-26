# Makefile for a Working Group repository
#
# The commands are the same for every Working Group, so they are not kept here.
# They come from OSTERA-org-Working-Groups/wg-tools, at the version named
# in .github/workflows/work-items.yml (the @v1 at the end of its uses: lines),
# so the commands on your computer are the same as the checks on GitHub. The
# actual Makefile commands are downloaded from the wg-tools repo the first time
# you run make. Then each time a command is run, it will check for new
# versions, so long as the local copies are more than a day old.
#
# The local copies are downloaded into .wg-tools/, which git ignores. Without a
# network connection, it uses the copies it already has.
#
# Type make on its own to list the commands. Do not change this file:
# changes go into wg-tools, for every Working Group at once.

TOOLS_REPO    := OSTERA-org-Working-Groups/wg-tools
TOOLS_VERSION := $(shell sed -n 's|.*/wg-tools/\.github/workflows/[^@]*@\([A-Za-z0-9._-]*\).*|\1|p' .github/workflows/work-items.yml 2>/dev/null | head -n 1)
TOOLS_URL     ?= https://raw.githubusercontent.com/$(TOOLS_REPO)/$(TOOLS_VERSION)
TOOLS_DIR     := .wg-tools/$(TOOLS_VERSION)

ifeq ($(TOOLS_VERSION),)
$(error Cannot find the wg-tools version in .github/workflows/work-items.yml. Run make from the root of the repository)
endif

# Download tools.mk and work-items.pl when they are missing or more than a
# day old. Both are kept only if both downloads work.
TOOLS_DOWNLOAD := $(shell \
  d='$(TOOLS_DIR)'; \
  if [ -z "$$(find "$$d/.fetched" -mmin -1440 2>/dev/null)" ]; then \
    mkdir -p "$$d" && \
    curl -fsL --max-time 30 "$(TOOLS_URL)/tools.mk" -o "$$d/tools.mk.new" 2>/dev/null && \
    curl -fsL --max-time 30 "$(TOOLS_URL)/work-items.pl" -o "$$d/work-items.pl.new" 2>/dev/null && \
    mv "$$d/tools.mk.new" "$$d/tools.mk" && mv "$$d/work-items.pl.new" "$$d/work-items.pl" && \
    touch "$$d/.fetched"; \
    rm -f "$$d/tools.mk.new" "$$d/work-items.pl.new"; \
  fi)

ifeq ($(wildcard $(TOOLS_DIR)/tools.mk),)
$(error Could not download the commands from $(TOOLS_URL). Check your network connection, and try again)
endif
include $(TOOLS_DIR)/tools.mk
