dist/tinycore.iso: build/core.gz
	cp lib/vmlinuz iso/boot/
	cp -r lib/isolinux iso/boot/
	cp build/core.gz iso/boot/
	mkisofs -l -J -R -V tinycore -no-emul-boot -boot-load-size 4 \
	-boot-info-table -b boot/isolinux/isolinux.bin \
	-c boot/isolinux/boot.cat -o dist/tinycore.iso iso

build/intermediate.gz:
	cd src && find . | cpio -o -H newc | gzip -2 > ../build/intermediate.gz && advdef -z4 ../build/intermediate.gz

build/core.gz: build/intermediate.gz
	cat lib/core.gz build/intermediate.gz > build/core.gz

clean:
	-rm build/*
	-rm dist/*
	-rm -r iso/boot/*
