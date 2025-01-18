# Paths
SRCDIR := src
OBJDIR := build
SRC := $(wildcard $(SRCDIR)/*.bas)
PRG := $(SRC:src/%.bas=$(OBJDIR)/%.prg)

# Commands
MKPRG = petcat -w2 -o $@ --
RM := rm -rf
MKDIR := mkdir -p

# Rules
$(OBJDIR)/%.prg: $(SRCDIR)/%.bas
	$(MKPRG) $<

# Targets
.PHONY: all prg run clean

all: prg
prg: $(PRG)

run: $(PRG)
	x64sc $(OBJDIR)/*.prg

$(SRC): | $(OBJDIR)

$(OBJDIR):
	$(MKDIR) $(OBJDIR)

clean:
	$(RM) $(OBJDIR)
