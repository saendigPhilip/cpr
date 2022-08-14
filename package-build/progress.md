## Building a multi-binary package for libcpr -- Progress

### Overview of the general workflow
1. Remove unnecessary files and build tarball
2. Generate necessary debian files using `debmake`
3. Adapt the generated files to the needs of libcpr
4. Build the package using `debuild`
5. Check lintian Output. If there are errors/warnings, go back to step 2
6. Check package contents. If there are unexpected or missing files, go back to step 2
7. Upload the package to a debian package repository

### Iterations
1. Finished
   - [x] Adapt the debian packaging files
   - [x] Build the package using `debuild`
   - [x] Check lintian Output. If there are errors/warnings, start next iteration
   Package build succeeds, however we get the following lintian errors:
   ```
   E: libcpr-dev: missing-dependency-on-libc needed by usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   E: libcpr source: weak-library-dev-dependency (in section for libcpr-dev) Depends libcpr1 [debian/control:29]
   W: libcpr source: binaries-have-file-conflict libcpr-dev libcpr1 usr/lib/x86_64-linux-gnu/libcpr.so
   W: libcpr source: binaries-have-file-conflict libcpr-dev libcpr1 usr/lib/x86_64-linux-gnu/libcpr.so.1
   W: libcpr source: binaries-have-file-conflict libcpr-dev libcpr1 usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   W: libcpr-dev: copyright-has-url-from-dh_make-boilerplate
   W: libcpr1: copyright-has-url-from-dh_make-boilerplate
   W: libcpr source: file-without-copyright-information debian/README.Debian [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/changelog [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/control [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/copyright [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/libcpr-dev.install [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/libcpr1.install [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/patches/000-deb-package-option.patch [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/patches/series [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/rules [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/source/format [debian/copyright]
   W: libcpr source: file-without-copyright-information debian/watch [debian/copyright]
   W: libcpr-dev: improbable-bug-number-in-closes 0000
   W: libcpr1: improbable-bug-number-in-closes 0000
   W: libcpr-dev: link-to-shared-library-in-wrong-package usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0 usr/lib/x86_64-linux-gnu/libcpr.so
   W: libcpr1: link-to-shared-library-in-wrong-package usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0 usr/lib/x86_64-linux-gnu/libcpr.so
   W: libcpr source: package-depends-on-hardcoded-libc (in section for libcpr1) Depends libc6 (>= 2.34), libssl3, libcurl4, ${misc:Depends}, ${shlibs:Depends} [debian/control:15]
   W: libcpr-dev: package-name-doesnt-match-sonames libcpr1
   I: libcpr source: duplicate-short-description libcpr-dev libcpr1
   I: libcpr-dev: no-symbols-control-file usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   I: libcpr1: no-symbols-control-file usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   I: libcpr source: older-debian-watch-file-standard 3
   I: libcpr source: out-of-date-standards-version 4.5.1 (released 2020-11-17) (current is 4.6.0.1)
   I: libcpr source: patch-not-forwarded-upstream debian/patches/000-deb-package-option.patch
   I: libcpr-dev: spelling-error-in-binary usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0 procceed proceed
   I: libcpr1: spelling-error-in-binary usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0 procceed proceed
   ```
   These issues will be fixed in the following iterations
2. Finished
   - [x] Adapt the debian packaging files
   - [x] Build the package using `debuild`
   - [x] Check lintian Output. If there are errors/warnings, start next iteration
   Fixed most obvious issues. Reduced the number of lintian errors:
   ```
   E: libcpr-dev: missing-dependency-on-libc needed by usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   E: libcpr source: weak-library-dev-dependency (in section for libcpr-dev) Depends libcpr1 (= 1.9.0) [debian/control:29]
   W: libcpr source: binaries-have-file-conflict libcpr-dev libcpr1 usr/lib/x86_64-linux-gnu/libcpr.so.1
   W: libcpr source: binaries-have-file-conflict libcpr-dev libcpr1 usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   W: libcpr-dev: description-synopsis-starts-with-article
   W: libcpr1: description-synopsis-starts-with-article
   W: libcpr-dev: improbable-bug-number-in-closes 0000
   W: libcpr1: improbable-bug-number-in-closes 0000
   W: libcpr-dev: link-to-shared-library-in-wrong-package usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0 usr/lib/x86_64-linux-gnu/libcpr.so
   W: libcpr-dev: package-name-doesnt-match-sonames libcpr1
   I: libcpr-dev: no-symbols-control-file usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   I: libcpr1: no-symbols-control-file usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0
   I: libcpr source: patch-not-forwarded-upstream debian/patches/000-deb-package-option.patch
   I: libcpr-dev: spelling-error-in-binary usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0 procceed proceed
   I: libcpr1: spelling-error-in-binary usr/lib/x86_64-linux-gnu/libcpr.so.1.9.0 procceed proceed
   ```
3. In progress
   - [ ] Adapt the debian packaging files
   - [ ] Build the package using `debuild`
   - [ ] Check lintian Output. If there are errors/warnings, start next iteration


