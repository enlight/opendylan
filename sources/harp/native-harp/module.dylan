module:    dylan-user
Synopsis:  The module definitions for the NATIVE-HARP library
Author:    Tony Mann
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      See License.txt in this distribution for details.
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND




define module native-standard-imports
  use common-dylan, 
    exclude: {<stretchy-vector>}, 
    rename: {<stretchy-object-vector> => <stretchy-vector>}, 
    export: all;
end module;

define module native-back-end
  use native-standard-imports;
  use harp-for-extenders;
  export
    <harp-native-back-end>,
    <harp-native-windows-back-end>,
    <harp-native-unix-back-end>,
    <harp-native-linux-back-end>,
    <harp-native-freebsd-back-end>,
    <harp-native-darwin-back-end>;
end module;


define module native-instructions
  use native-standard-imports;
  use harp-for-extenders;
  use native-back-end;
  export 
    default-instructions, <instruction-set>, 

    ins--allocate-local-area, harp-allocate-local-area, harp-allocate-local-area-setter,
    ins--allocate-raw-area, harp-allocate-raw-area, harp-allocate-raw-area-setter,
    ins--preserve-registers-entry, harp-preserve-registers-entry, harp-preserve-registers-entry-setter,
    ins--preserve-registers-exit, harp-preserve-registers-exit, harp-preserve-registers-exit-setter,
    ins--st, harp-st, harp-st-setter,
    ins--sth, harp-sth, harp-sth-setter,
    ins--stb, harp-stb, harp-stb-setter,
    ins--fill-words, harp-fill-words, harp-fill-words-setter,
    ins--copy-words-up, harp-copy-words-up, harp-copy-words-up-setter,
    ins--copy-words-down, harp-copy-words-down, harp-copy-words-down-setter,
    ins--fill-words-w, harp-fill-words-w, harp-fill-words-w-setter,
    ins--copy-words-down-w, harp-copy-words-down-w, harp-copy-words-down-w-setter,
    ins--copy-words-up-w, harp-copy-words-up-w, harp-copy-words-up-w-setter,
    ins--copy-bytes-down, harp-copy-bytes-down, harp-copy-bytes-down-setter, 
    ins--copy-bytes-up, harp-copy-bytes-up, harp-copy-bytes-up-setter, 
    ins--fill-bytes, harp-fill-bytes, harp-fill-bytes-setter, 
    ins--push, harp-push, harp-push-setter,
    ins--set-teb, harp-set-teb, harp-set-teb-setter,
    ins--get-teb, harp-get-teb, harp-get-teb-setter,
    ins--set-seh, harp-set-seh, harp-set-seh-setter,
    ins--get-seh, harp-get-seh, harp-get-seh-setter,
    ins--force-u, harp-force-u, harp-force-u-setter,
    ins--force-d, harp-force-d, harp-force-d-setter,
    ins--taddv, harp-taddv, harp-taddv-setter,
    ins--addv, harp-addv, harp-addv-setter,
    ins--divv, harp-divv, harp-divv-setter,
    ins--mulv, harp-mulv, harp-mulv-setter,
    ins--subv, harp-subv, harp-subv-setter,
    ins--tsubv, harp-tsubv, harp-tsubv-setter,
    ins--conditional-move, harp-conditional-move, harp-conditional-move-setter,
    ins--not, harp-not, harp-not-setter,
    ins--ld-teb, harp-ld-teb, harp-ld-teb-setter,
    ins--ld-teb-address, harp-ld-teb-address, harp-ld-teb-address-setter,
    ins--st-teb, harp-st-teb, harp-st-teb-setter,
    ins--add-into-stack-pointer, harp-add-into-stack-pointer, harp-add-into-stack-pointer-setter,
    ins--store-stack-arg-n, harp-store-stack-arg-n, harp-store-stack-arg-n-setter,
    ins--and, harp-and, harp-and-setter,
    ins--asl, harp-asl, harp-asl-setter,
    ins--asr, harp-asr, harp-asr-setter,
    ins--divs, harp-divs, harp-divs-setter,
    ins--divu, harp-divu, harp-divu-setter,
    ins--eor, harp-eor, harp-eor-setter,
    ins--ld, harp-ld, harp-ld-setter,
    ins--ldh, harp-ldh, harp-ldh-setter,
    ins--ldh-signed, harp-ldh-signed, harp-ldh-signed-setter,
    ins--ldb, harp-ldb, harp-ldb-setter,
    ins--ldb-signed, harp-ldb-signed, harp-ldb-signed-setter,
    ins--lsr, harp-lsr, harp-lsr-setter,
    ins--muls, harp-muls, harp-muls-setter,
    ins--and-not, harp-and-not, harp-and-not-setter,
    ins--mulu, harp-mulu, harp-mulu-setter,
    ins--or, harp-or, harp-or-setter,
    ins--mods, harp-mods, harp-mods-setter,
    ins--modu, harp-modu, harp-modu-setter,
    ins--set-bit, harp-set-bit, harp-set-bit-setter,
    ins--unset-bit, harp-unset-bit, harp-unset-bit-setter,
    ins--pop, harp-pop, harp-pop-setter,
    ins--control-flow-link, harp-control-flow-link, harp-control-flow-link-setter,
    ins--bmvunset, harp-bmvunset,
    ins--bmvset, harp-bmvset,
    ins--bhi, harp-bhi, harp-bhi-setter,
    ins--bhs, harp-bhs, harp-bhs-setter,
    ins--blo, harp-blo, harp-blo-setter,
    ins--bls, harp-bls, harp-bls-setter,
    ins--band, harp-band, harp-band-setter,
    ins--bnand, harp-bnand, harp-bnand-setter,
    ins--dynamic-bit, harp-dynamic-bit, harp-dynamic-bit-setter,
    ins--dynamic-nbit, harp-dynamic-nbit, harp-dynamic-nbit-setter,
    ins--bit, harp-bit, harp-bit-setter,
    ins--nbit, harp-nbit, harp-nbit-setter,
    ins--and2-mem, harp-and2-mem, 
    ins--or2-mem, harp-or2-mem,
    ins--add2-mem, harp-add2-mem,
    ins--sub2-mem, harp-sub2-mem,
    ins--add2-mem-locked, harp-add2-mem-locked,
    ins--sub2-mem-locked, harp-sub2-mem-locked,
    ins--eor2-mem, harp-eor2-mem,
    ins--xadd-mem-locked, harp-xadd-mem-locked,
    ins--bne-mem, harp-bne-mem, harp-bne-mem-setter,
    ins--beq-mem, harp-beq-mem, harp-beq-mem-setter,
    ins--bne-words, harp-bne-words, harp-bne-words-setter,
    ins--bne-bytes, harp-bne-bytes, harp-bne-bytes-setter,
    ins--beq-byte, harp-beq-byte,
    ins--bne-byte, harp-bne-byte,
    ins--bge-byte, harp-bge-byte,
    ins--blt-byte, harp-blt-byte,
    ins--ble-byte, harp-ble-byte,
    ins--bgt-byte, harp-bgt-byte,
    ins--ldbits, harp-ldbits, harp-ldbits-setter,
    ins--stbits, harp-stbits, harp-stbits-setter,
    ins--extract-bits, harp-extract-bits, harp-extract-bits-setter,
    ins--set-bits, harp-set-bits, harp-set-bits-setter,
    ins--t-pop, harp-t-pop, harp-t-pop-setter,
    ins--t-push, harp-t-push, harp-t-push-setter,
    ins--remove-optionals, harp-remove-optionals, harp-remove-optionals-setter,
    ins--rts-and-drop, harp-rts-and-drop, harp-rts-and-drop-setter,
    ins--adjust-stack, harp-adjust-stack, harp-adjust-stack-setter,
    ins--load-count-adjusting-stack, harp-load-count-adjusting-stack, harp-load-count-adjusting-stack-setter,
    ins--rts, harp-rts, harp-rts-setter,
    ins--end-cleanup, harp-end-cleanup, harp-end-cleanup-setter,
    ins--pea, harp-pea, harp-pea-setter,
    ins--pea0, 
    ins--lea, harp-lea, harp-lea-setter,
    ins--lea0, 
    ins--load-nlx-address, harp-load-nlx-address, harp-load-nlx-address-setter,
    ins--call, harp-call, harp-call-setter,
    ins--call-alien, harp-call-alien, harp-call-alien-setter,
    ins--call-indirect, harp-call-indirect, harp-call-indirect-setter,
    ins--jmp, harp-jmp, harp-jmp-setter,
    ins--jmp-alien, harp-jmp-alien, harp-jmp-alien-setter,
    ins--jmp-indirect, harp-jmp-indirect, harp-jmp-indirect-setter,
    ins--load-stack-arg-half-signed, harp-load-stack-arg-half-signed, harp-load-stack-arg-half-signed-setter, 
    ins--load-stack-arg-byte-signed, harp-load-stack-arg-byte-signed, harp-load-stack-arg-byte-signed-setter, 
    ins--load-stack-arg-half-unsigned, harp-load-stack-arg-half-unsigned, harp-load-stack-arg-half-unsigned-setter, 
    ins--load-stack-arg-byte-unsigned, harp-load-stack-arg-byte-unsigned, harp-load-stack-arg-byte-unsigned-setter, 
    ins--load-address-of-stack-arg-n, harp-load-address-of-stack-arg-n, harp-load-address-of-stack-arg-n-setter,
    ins--load-address-of-stack-arg, harp-load-address-of-stack-arg, harp-load-address-of-stack-arg-setter,
    ins--load-frame-offset, harp-load-frame-offset, harp-load-frame-offset-setter,
    ins--store-frame-offset, harp-store-frame-offset, harp-store-frame-offset-setter,
    ins--push-mem, harp-push-mem, harp-push-mem-setter,
    ins--pop-mem, harp-pop-mem, harp-pop-mem-setter,
    ins--ror, harp-ror, harp-ror-setter,
    ins--rol, harp-rol, harp-rol-setter,
    ins--add-trap, harp-add-trap, harp-add-trap-setter,
    ins--sub-trap, harp-sub-trap, harp-sub-trap-setter,
    ins--muls-trap, harp-muls-trap, harp-muls-trap-setter,
    ins--asl-trap, harp-asl-trap, harp-asl-trap-setter,
    ins--addc, harp-addc, harp-addc-setter,
    ins--subc, harp-subc, harp-subc-setter,
    ins--addcx, harp-addcx, harp-addcx-setter,
    ins--subcx, harp-subcx, harp-subcx-setter,
    ins--mulx, harp-mulx, harp-mulx-setter,
    ins--mulux, harp-mulux, harp-mulux-setter,
    ins--divx, harp-divx, harp-divx-setter,
    ins--divux, harp-divux, harp-divux-setter,
    ins--aslx, harp-aslx, harp-aslx-setter,
    ins--lslx, harp-lslx, harp-lslx-setter,
    ins--floorx, 
    ins--ceilingx, 
    ins--roundx, 
    ins--truncatex, harp-truncatex, harp-truncatex-setter,
    ins--mulxv, harp-mulxv, harp-mulxv-setter,
    ins--aslxv, harp-aslxv, harp-aslxv-setter,
    ins--divxx, harp-divxx, harp-divxx-setter,
    ins--divuxx, harp-divuxx, harp-divuxx-setter,
    ins--lslxx, harp-lslxx, harp-lslxx-setter,
    ins--lsrxx, harp-lsrxx, harp-lsrxx-setter,
    ins--floorxx, 
    ins--ceilingxx, 
    ins--roundxx, 
    ins--truncatexx, harp-truncatexx, harp-truncatexx-setter,
    ins--reset-values, harp-reset-values,
    ins--set-values, harp-set-values,
    ins--halt, harp-halt,
    ins--move-return-address, harp-move-return-address,
    ins--f10tox, harp-f10tox, harp-f10tox-setter,
    ins--f2tox, harp-f2tox, harp-f2tox-setter,
    ins--fabs, harp-fabs, harp-fabs-setter,
    ins--facos, harp-facos, harp-facos-setter,
    ins--fasin, harp-fasin, harp-fasin-setter,
    ins--fatan, harp-fatan, harp-fatan-setter,
    ins--fatanh, harp-fatanh, harp-fatanh-setter,
    ins--fcos, harp-fcos, harp-fcos-setter,
    ins--fcosh, harp-fcosh, harp-fcosh-setter,
    ins--fetox, harp-fetox, harp-fetox-setter,
    ins--fetoxm1, harp-fetoxm1, harp-fetoxm1-setter,
    ins--fgetexp, harp-fgetexp, harp-fgetexp-setter,
    ins--fgetman, harp-fgetman, harp-fgetman-setter,
    ins--fint, harp-fint, harp-fint-setter,
    ins--flog10, harp-flog10, harp-flog10-setter,
    ins--flog2, harp-flog2, harp-flog2-setter,
    ins--floge, harp-floge, harp-floge-setter,
    ins--flogep1, harp-flogep1, harp-flogep1-setter,
    ins--fmove, harp-fmove, harp-fmove-setter,
    ins--fneg, harp-fneg, harp-fneg-setter,
    ins--fsin, harp-fsin, harp-fsin-setter,
    ins--fsinh, harp-fsinh, harp-fsinh-setter,
    ins--fsqrt, harp-fsqrt, harp-fsqrt-setter,
    ins--ftan, harp-ftan, harp-ftan-setter,
    ins--ftanh, harp-ftanh, harp-ftanh-setter,
    ins--d10tox, harp-d10tox, harp-d10tox-setter,
    ins--d2tox, harp-d2tox, harp-d2tox-setter,
    ins--dabs, harp-dabs, harp-dabs-setter,
    ins--dacos, harp-dacos, harp-dacos-setter,
    ins--dasin, harp-dasin, harp-dasin-setter,
    ins--datan, harp-datan, harp-datan-setter,
    ins--datanh, harp-datanh, harp-datanh-setter,
    ins--dcos, harp-dcos, harp-dcos-setter,
    ins--dcosh, harp-dcosh, harp-dcosh-setter,
    ins--detox, harp-detox, harp-detox-setter,
    ins--detoxm1, harp-detoxm1, harp-detoxm1-setter,
    ins--dgetexp, harp-dgetexp, harp-dgetexp-setter,
    ins--dgetman, harp-dgetman, harp-dgetman-setter,
    ins--dint, harp-dint, harp-dint-setter,
    ins--dlog10, harp-dlog10, harp-dlog10-setter,
    ins--dlog2, harp-dlog2, harp-dlog2-setter,
    ins--dloge, harp-dloge, harp-dloge-setter,
    ins--dlogep1, harp-dlogep1, harp-dlogep1-setter,
    ins--dmove, harp-dmove, harp-dmove-setter,
    ins--dneg, harp-dneg, harp-dneg-setter,
    ins--dsin, harp-dsin, harp-dsin-setter,
    ins--dsinh, harp-dsinh, harp-dsinh-setter,
    ins--dsqrt, harp-dsqrt, harp-dsqrt-setter,
    ins--dtan, harp-dtan, harp-dtan-setter,
    ins--dtanh, harp-dtanh, harp-dtanh-setter,
    ins--fadd, harp-fadd, harp-fadd-setter,
    ins--fdiv, harp-fdiv, harp-fdiv-setter,
    ins--fld, harp-fld, harp-fld-setter,
    ins--fmul, harp-fmul, harp-fmul-setter,
    ins--fsub, harp-fsub, harp-fsub-setter,
    ins--ld-double, harp-ld-double, harp-ld-double-setter,
    ins--dmul, harp-dmul, harp-dmul-setter,
    ins--ddiv, harp-ddiv, harp-ddiv-setter,
    ins--dadd, harp-dadd, harp-dadd-setter,
    ins--dsub, harp-dsub, harp-dsub-setter,
    ins--dld, harp-dld, harp-dld-setter,
    ins--fbeq, harp-fbeq, harp-fbeq-setter,
    ins--fbge, harp-fbge, harp-fbge-setter,
    ins--fbgt, harp-fbgt, harp-fbgt-setter,
    ins--fble, harp-fble, harp-fble-setter,
    ins--fblt, harp-fblt, harp-fblt-setter,
    ins--fbne, harp-fbne, harp-fbne-setter,
    ins--fbnge, harp-fbnge, harp-fbnge-setter,
    ins--dble, harp-dble, harp-dble-setter,
    ins--dbge, harp-dbge, harp-dbge-setter,
    ins--dbne, harp-dbne, harp-dbne-setter,
    ins--dblt, harp-dblt, harp-dblt-setter,
    ins--dbeq, harp-dbeq, harp-dbeq-setter,
    ins--fbngt, harp-fbngt, harp-fbngt-setter,
    ins--fbnle, harp-fbnle, harp-fbnle-setter,
    ins--fbnlt, harp-fbnlt, harp-fbnlt-setter,
    ins--fst, harp-fst, harp-fst-setter,
    ins--dst, harp-dst, harp-dst-setter,
    ins--st-double, harp-st-double, harp-st-double-setter,
    ins--move-to-sfreg, harp-move-to-sfreg, harp-move-to-sfreg-setter,
    ins--move-from-sfreg, harp-move-from-sfreg, harp-move-from-sfreg-setter,
    ins--move-to-dfreg, harp-move-to-dfreg, harp-move-to-dfreg-setter,
    ins--move-from-dfreg, harp-move-from-dfreg, harp-move-from-dfreg-setter,
    ins--convert-to-single-float, harp-convert-to-single-float, harp-convert-to-single-float-setter,
    ins--convert-to-double-float, harp-convert-to-double-float, harp-convert-to-double-float-setter,
    ins--double-to-single-float, harp-double-to-single-float, harp-double-to-single-float-setter,
    ins--single-to-double-float, harp-single-to-double-float, harp-single-to-double-float-setter,
    ins--convert-from-single-float, harp-convert-from-single-float, harp-convert-from-single-float-setter,
    ins--convert-from-double-float, harp-convert-from-double-float, harp-convert-from-double-float-setter,
    ins--convert-to-single-float-x, harp-convert-to-single-float-x, harp-convert-to-single-float-x-setter,
    ins--convert-to-double-float-x, harp-convert-to-double-float-x, harp-convert-to-double-float-x-setter,
    ins--convert-from-single-float-x, harp-convert-from-single-float-x, harp-convert-from-single-float-x-setter,
    ins--convert-from-double-float-x, harp-convert-from-double-float-x, harp-convert-from-double-float-x-setter,
    ins--set-rounding-mode, harp-set-rounding-mode, harp-set-rounding-mode-setter,
    ins--restore-frame, harp-restore-frame, harp-restore-frame-setter,
    ins--init-fpu, harp-init-fpu, harp-init-fpu-setter,
    ins--init-control-word, harp-init-control-word, harp-init-control-word-setter,
    ins--clear-float-exceptions, harp-clear-float-exceptions, harp-clear-float-exceptions-setter,
    ins--classify-float, harp-classify-float, harp-classify-float-setter;

end module;


define module native-instructions-for-clients
  use native-instructions,
    export:
    {

    ins--allocate-local-area,
    ins--allocate-raw-area,
    ins--preserve-registers-entry,
    ins--preserve-registers-exit,
    ins--st,
    ins--sth,
    ins--stb,
    ins--fill-words,
    ins--copy-words-up,
    ins--copy-words-down,
    ins--fill-words-w,
    ins--copy-words-down-w,
    ins--copy-words-up-w,
    ins--copy-bytes-down, 
    ins--copy-bytes-up,
    ins--fill-bytes,
    ins--push,
    ins--set-teb,
    ins--get-teb,
    ins--set-seh,
    ins--get-seh,
    ins--force-u,
    ins--force-d,
    ins--taddv,
    ins--addv,
    ins--divv,
    ins--mulv,
    ins--subv,
    ins--tsubv,
    ins--conditional-move,
    ins--not,
    ins--ld-teb, 
    ins--ld-teb-address,
    ins--st-teb,
    ins--add-into-stack-pointer,
    ins--store-stack-arg-n,
    ins--and,
    ins--asl,
    ins--asr,
    ins--divs,
    ins--divu,
    ins--eor,
    ins--ld,
    ins--ldh,
    ins--ldh-signed,
    ins--ldb,
    ins--ldb-signed,
    ins--lsr,
    ins--muls,
    ins--and-not,
    ins--mulu,
    ins--or,
    ins--mods,
    ins--modu,
    ins--set-bit,
    ins--unset-bit,
    ins--pop,
    ins--control-flow-link,
    ins--bmvunset,
    ins--bmvset,
    ins--bhi,
    ins--bhs,
    ins--blo,
    ins--bls,
    ins--band,
    ins--bnand,
    ins--dynamic-bit,
    ins--dynamic-nbit,
    ins--bit,
    ins--nbit,
    ins--and2-mem,
    ins--or2-mem,
    ins--add2-mem,
    ins--sub2-mem,
    ins--add2-mem-locked,
    ins--sub2-mem-locked,
    ins--eor2-mem,
    ins--xadd-mem-locked,
    ins--bne-mem,
    ins--beq-mem,
    ins--bne-words,
    ins--bne-bytes,
    ins--beq-byte,
    ins--bne-byte,
    ins--bge-byte,
    ins--blt-byte,
    ins--ble-byte,
    ins--bgt-byte,
    ins--ldbits,
    ins--stbits,
    ins--extract-bits,
    ins--set-bits,
    ins--t-pop,
    ins--t-push,
    ins--remove-optionals,
    ins--rts-and-drop,
    ins--adjust-stack,
    ins--load-count-adjusting-stack,
    ins--rts,
    ins--end-cleanup,
    ins--pea,
    ins--pea0,
    ins--lea,
    ins--lea0,
    ins--load-nlx-address,
    ins--call,
    ins--call-alien,
    ins--call-indirect,
    ins--jmp,
    ins--jmp-alien,
    ins--jmp-indirect,
    ins--load-stack-arg-half-signed,
    ins--load-stack-arg-byte-signed,
    ins--load-stack-arg-half-unsigned,
    ins--load-stack-arg-byte-unsigned,
    ins--load-address-of-stack-arg-n,
    ins--load-address-of-stack-arg,
    ins--load-frame-offset,
    ins--store-frame-offset,
    ins--push-mem,
    ins--pop-mem,
    ins--ror,
    ins--rol,
    ins--add-trap,
    ins--sub-trap,
    ins--muls-trap,
    ins--asl-trap,
    ins--addc,
    ins--subc,
    ins--addcx,
    ins--subcx,
    ins--mulx,
    ins--mulux,
    ins--divx,
    ins--divux,
    ins--aslx,
    ins--lslx,
    ins--floorx,
    ins--ceilingx,
    ins--roundx,
    ins--truncatex,
    ins--mulxv,
    ins--aslxv,
    ins--divxx,
    ins--divuxx,
    ins--lslxx,
    ins--lsrxx,
    ins--floorxx,
    ins--ceilingxx,
    ins--roundxx,
    ins--truncatexx,
    ins--reset-values,
    ins--set-values,
    ins--halt,
    ins--move-return-address,
    ins--f10tox,
    ins--f2tox,
    ins--fabs,
    ins--facos,
    ins--fasin,
    ins--fatan,
    ins--fatanh,
    ins--fcos,
    ins--fcosh,
    ins--fetox,
    ins--fetoxm1,
    ins--fgetexp,
    ins--fgetman,
    ins--fint,
    ins--flog10,
    ins--flog2,
    ins--floge,
    ins--flogep1,
    ins--fmove,
    ins--fneg,
    ins--fsin,
    ins--fsinh,
    ins--fsqrt,
    ins--ftan,
    ins--ftanh,
    ins--d10tox,
    ins--d2tox,
    ins--dabs,
    ins--dacos,
    ins--dasin,
    ins--datan,
    ins--datanh,
    ins--dcos,
    ins--dcosh,
    ins--detox,
    ins--detoxm1,
    ins--dgetexp,
    ins--dgetman,
    ins--dint,
    ins--dlog10,
    ins--dlog2,
    ins--dloge,
    ins--dlogep1,
    ins--dmove,
    ins--dneg,
    ins--dsin,
    ins--dsinh,
    ins--dsqrt,
    ins--dtan,
    ins--dtanh,
    ins--fadd,
    ins--fdiv,
    ins--fld,
    ins--fmul,
    ins--fsub,
    ins--ld-double,
    ins--dmul,
    ins--ddiv,
    ins--dadd,
    ins--dsub,
    ins--dld,
    ins--fbeq,
    ins--fbge,
    ins--fbgt,
    ins--fble,
    ins--fblt,
    ins--fbne,
    ins--fbnge,
    ins--dble,
    ins--dbge,
    ins--dbne,
    ins--dblt,
    ins--dbeq,
    ins--fbngt,
    ins--fbnle,
    ins--fbnlt,
    ins--fst,
    ins--dst,
    ins--st-double,
    ins--move-to-sfreg,
    ins--move-from-sfreg,
    ins--move-to-dfreg,
    ins--move-from-dfreg,
    ins--convert-to-single-float,
    ins--convert-to-double-float,
    ins--double-to-single-float,
    ins--single-to-double-float,
    ins--convert-from-single-float,
    ins--convert-from-double-float,
    ins--convert-to-single-float-x,
    ins--convert-to-double-float-x,
    ins--convert-from-single-float-x,
    ins--convert-from-double-float-x,
    ins--set-rounding-mode,
    ins--restore-frame,
    ins--init-fpu,
    ins--init-control-word,
    ins--clear-float-exceptions,
    ins--classify-float
    }
end module;


define module thread-environment
  use dylan;

  create
    teb-dynamic-environment-offset,
    teb-thread-local-variables-offset,
    teb-current-thread-offset,
    teb-current-thread-handle-offset,
    teb-current-handler-offset,
    teb-runtime-state-offset,
    teb-mv-count-offset,
    teb-mv-area-offset,
    teb-mv-area-size,
    teb-total-size;
end module;


define module native-main-harp
  use dylan;
  use harp-for-extenders;
  use native-back-end;
  use native-instructions;
  use thread-environment;

  export
    remove-optionals-runtime,
    check-for-valid-stack-adjust,
    find-size-for-stack-pointer-adjust,
    return-address-on-stack?,
    return-address-size,
    return-address-size-in-bytes,
    operate-on-stack-arg,
    size-of-preserved-registers,
    emit-scl,
    call-remove-optionals,
    arg-offset, arg-offset-from-arg-number,
    \if-return-address,
    \with-move-return-address-ops,
    \move-return-address-template-definer,
    \remove-optionals-template-definer,
    \adjust-stack-template-definer,
    \with-load-count-adjusting-stack-ops,
    \load-count-adjusting-stack-template-definer,
    \load-address-of-stack-arg-template-definer,
    \load-address-of-stack-arg-n-template-definer,
    \load-stack-arg-n-template-definer,
    \load-frame-offset-template-definer,
    \store-frame-offset-template-definer,
    \store-stack-arg-n-template-definer,
    \with-load-nlx-address-ops,
    \load-nlx-address-template-definer,
    \strong-scl-template-definer,
    \scl-template-definer
    ;
end module;


define module native-harp-for-extenders
  use dylan;
  use harp-for-extenders, export: all;
  use native-back-end, export: all;
  use native-main-harp, export: all;
  use native-instructions, export: all;
  use thread-environment, export: all;
end module;


define module native-harp
  use dylan;
  use harp, export: all;
  use native-back-end, export: all;
  use native-main-harp, export: all;
  use native-instructions-for-clients, export: all;
  use thread-environment, export: all;
end module;
