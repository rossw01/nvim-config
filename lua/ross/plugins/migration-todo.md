Packer -> Lazy TODO:

## Early Priorities
- reconfigure plugin configs to use Lazy style of configuration
    - find lazy loading opportunities where possible (i.e. non-gui things or things that can be loaded when attaching lsp or opening specific file types etc)
    - move files into /lazy or /lazylsp once they have config changed.

## Once everything is moved into lazy/ or lazylsp/:
- remove lsp/ dir (this should now be empty), rename lazylsp/ to lsp/
    - change the include path in plugins-setup
- move all the files in lsp/ into the parent dir
    - change the include path in plugins-setup

The plugins file structure should match how the main branch.
then it is ready for merging into main :)
