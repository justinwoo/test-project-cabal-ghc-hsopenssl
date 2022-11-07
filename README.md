```shell
bash $ nix-shell

nix $ cabal install --install-method=copy --overwrite-policy=always --installdir=out
Wrote tarball sdist to
/.../test-project-cabal-ghc-hsopenssl/dist-newstyle/sdist/test-project-0.1.0.0.tar.gz
Resolving dependencies...
Build profile: -w ghc-9.0.2 -O1
In order, the following will be built (use -v for more details):
 - test-project-0.1.0.0 (exe:test-project) (requires build)
Starting     test-project-0.1.0.0 (exe:test-project)
Building     test-project-0.1.0.0 (exe:test-project)
Installing   test-project-0.1.0.0 (exe:test-project)
Completed    test-project-0.1.0.0 (exe:test-project)
Copying 'test-project' to 'out/test-project'

nix $ ldd out/test-project
        linux-vdso.so.1 (0x00007fff6c1f1000)
        libpcre.so.1 => /nix/store/x773khw8rdwwa1pjaw2gdxmghmw08n34-pcre-8.45/lib/libpcre.so.1 (0x00007fc10593d000)
        libssl.so.1.1 => /nix/store/4271vxflcnxwkdiscrg4g5kc9gw930k0-openssl-1.1.1p/lib/libssl.so.1.1 (0x00007fc1058a5000)
        libcrypto.so.1.1 => /nix/store/4271vxflcnxwkdiscrg4g5kc9gw930k0-openssl-1.1.1p/lib/libcrypto.so.1.1 (0x00007fc1055b2000)
        libgmp.so.10 => /nix/store/z2kzn2kj4wkz3rl1207r4rqyi4ar936j-gmp-with-cxx-6.2.1/lib/libgmp.so.10 (0x00007fc105511000)
        libc.so.6 => /nix/store/k56d9sk88pvrqhvwpa6msdf8gpwnimf6-glibc-2.34-210/lib/libc.so.6 (0x00007fc105311000)
        libm.so.6 => /nix/store/k56d9sk88pvrqhvwpa6msdf8gpwnimf6-glibc-2.34-210/lib/libm.so.6 (0x00007fc105238000)
        librt.so.1 => /nix/store/k56d9sk88pvrqhvwpa6msdf8gpwnimf6-glibc-2.34-210/lib/librt.so.1 (0x00007fc105233000)
        libdl.so.2 => /nix/store/k56d9sk88pvrqhvwpa6msdf8gpwnimf6-glibc-2.34-210/lib/libdl.so.2 (0x00007fc10522e000)
        libffi.so.8 => /nix/store/a6n90jvgz1sbr6982f6pzqs7y95x32b2-libffi-3.4.2/lib/libffi.so.8 (0x00007fc105221000)
        libpthread.so.0 => /nix/store/k56d9sk88pvrqhvwpa6msdf8gpwnimf6-glibc-2.34-210/lib/libpthread.so.0 (0x00007fc10521a000)
        /nix/store/k56d9sk88pvrqhvwpa6msdf8gpwnimf6-glibc-2.34-210/lib/ld-linux-x86-64.so.2 => /nix/store/k56d9sk88pvrqhvwpa6msdf8gpwnimf6-glibc-2.34-210/lib64/ld-linux-x86-64.so.2 (0x00007fc1059b7000)
```
