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
1. In progress
   - [x] Remove unnecessary files and build tarball
   - [x] Generate necessary debian files using `debmake`
   - [ ] Adapt the generated files to the needs of libcpr
   - [ ] Build the package using `debuild`
   - [ ] Check lintian Output. If there are errors/warnings, go back to step 2
   - [ ] Check package contents. If there are unexpected or missing files, go back to step 2
   - [ ] Upload the package to a debian package repository

