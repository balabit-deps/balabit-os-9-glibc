/*
 * Public domain.
 */

#include <libm-alias-ldouble.h>
#include <machine/asm.h>

RCSID("$NetBSD: $")

ENTRY(__copysignl)
	movl	32(%rsp),%edx
	movl	16(%rsp),%eax
	andl	$0x8000,%edx
	andl	$0x7fff,%eax
	orl	%edx,%eax
	movl	%eax,16(%rsp)
	fldt	8(%rsp)
	ret
END (__copysignl)
libm_alias_ldouble (__copysign, copysign)
