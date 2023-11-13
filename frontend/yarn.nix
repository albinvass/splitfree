{ fetchurl, fetchgit, linkFarm, runCommand, gnutar }: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [
    {
      name = "https___registry.npmjs.org__ampproject_remapping___remapping_2.2.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__ampproject_remapping___remapping_2.2.1.tgz";
        url  = "https://registry.npmjs.org/@ampproject/remapping/-/remapping-2.2.1.tgz";
        sha512 = "lFMjJTrFL3j7L9yBxwYfCq2k6qqwHyzuUl/XBnif78PWTJYyL/dfowQHWE3sp6U6ZzqWiiIZnpTMO96zhkjwtg==";
      };
    }
    {
      name = "_esbuild_android_arm64___android_arm64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_android_arm64___android_arm64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/android-arm64/-/android-arm64-0.18.20.tgz";
        sha512 = "Nz4rJcchGDtENV0eMKUNa6L12zz2zBDXuhj/Vjh18zGqB44Bi7MBMSXjgunJgjRhCmKOjnPuZp4Mb6OKqtMHLQ==";
      };
    }
    {
      name = "_esbuild_android_arm___android_arm_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_android_arm___android_arm_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/android-arm/-/android-arm-0.18.20.tgz";
        sha512 = "fyi7TDI/ijKKNZTUJAQqiG5T7YjJXgnzkURqmGj13C6dCqckZBLdl4h7bkhHt/t0WP+zO9/zwroDvANaOqO5Sw==";
      };
    }
    {
      name = "_esbuild_android_x64___android_x64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_android_x64___android_x64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/android-x64/-/android-x64-0.18.20.tgz";
        sha512 = "8GDdlePJA8D6zlZYJV/jnrRAi6rOiNaCC/JclcXpB+KIuvfBN4owLtgzY2bsxnx666XjJx2kDPUmnTtR8qKQUg==";
      };
    }
    {
      name = "_esbuild_darwin_arm64___darwin_arm64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_darwin_arm64___darwin_arm64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/darwin-arm64/-/darwin-arm64-0.18.20.tgz";
        sha512 = "bxRHW5kHU38zS2lPTPOyuyTm+S+eobPUnTNkdJEfAddYgEcll4xkT8DB9d2008DtTbl7uJag2HuE5NZAZgnNEA==";
      };
    }
    {
      name = "_esbuild_darwin_x64___darwin_x64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_darwin_x64___darwin_x64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/darwin-x64/-/darwin-x64-0.18.20.tgz";
        sha512 = "pc5gxlMDxzm513qPGbCbDukOdsGtKhfxD1zJKXjCCcU7ju50O7MeAZ8c4krSJcOIJGFR+qx21yMMVYwiQvyTyQ==";
      };
    }
    {
      name = "_esbuild_freebsd_arm64___freebsd_arm64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_freebsd_arm64___freebsd_arm64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/freebsd-arm64/-/freebsd-arm64-0.18.20.tgz";
        sha512 = "yqDQHy4QHevpMAaxhhIwYPMv1NECwOvIpGCZkECn8w2WFHXjEwrBn3CeNIYsibZ/iZEUemj++M26W3cNR5h+Tw==";
      };
    }
    {
      name = "_esbuild_freebsd_x64___freebsd_x64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_freebsd_x64___freebsd_x64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/freebsd-x64/-/freebsd-x64-0.18.20.tgz";
        sha512 = "tgWRPPuQsd3RmBZwarGVHZQvtzfEBOreNuxEMKFcd5DaDn2PbBxfwLcj4+aenoh7ctXcbXmOQIn8HI6mCSw5MQ==";
      };
    }
    {
      name = "_esbuild_linux_arm64___linux_arm64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_arm64___linux_arm64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-arm64/-/linux-arm64-0.18.20.tgz";
        sha512 = "2YbscF+UL7SQAVIpnWvYwM+3LskyDmPhe31pE7/aoTMFKKzIc9lLbyGUpmmb8a8AixOL61sQ/mFh3jEjHYFvdA==";
      };
    }
    {
      name = "_esbuild_linux_arm___linux_arm_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_arm___linux_arm_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-arm/-/linux-arm-0.18.20.tgz";
        sha512 = "/5bHkMWnq1EgKr1V+Ybz3s1hWXok7mDFUMQ4cG10AfW3wL02PSZi5kFpYKrptDsgb2WAJIvRcDm+qIvXf/apvg==";
      };
    }
    {
      name = "_esbuild_linux_ia32___linux_ia32_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_ia32___linux_ia32_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-ia32/-/linux-ia32-0.18.20.tgz";
        sha512 = "P4etWwq6IsReT0E1KHU40bOnzMHoH73aXp96Fs8TIT6z9Hu8G6+0SHSw9i2isWrD2nbx2qo5yUqACgdfVGx7TA==";
      };
    }
    {
      name = "_esbuild_linux_loong64___linux_loong64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_loong64___linux_loong64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-loong64/-/linux-loong64-0.18.20.tgz";
        sha512 = "nXW8nqBTrOpDLPgPY9uV+/1DjxoQ7DoB2N8eocyq8I9XuqJ7BiAMDMf9n1xZM9TgW0J8zrquIb/A7s3BJv7rjg==";
      };
    }
    {
      name = "_esbuild_linux_mips64el___linux_mips64el_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_mips64el___linux_mips64el_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-mips64el/-/linux-mips64el-0.18.20.tgz";
        sha512 = "d5NeaXZcHp8PzYy5VnXV3VSd2D328Zb+9dEq5HE6bw6+N86JVPExrA6O68OPwobntbNJ0pzCpUFZTo3w0GyetQ==";
      };
    }
    {
      name = "_esbuild_linux_ppc64___linux_ppc64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_ppc64___linux_ppc64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-ppc64/-/linux-ppc64-0.18.20.tgz";
        sha512 = "WHPyeScRNcmANnLQkq6AfyXRFr5D6N2sKgkFo2FqguP44Nw2eyDlbTdZwd9GYk98DZG9QItIiTlFLHJHjxP3FA==";
      };
    }
    {
      name = "_esbuild_linux_riscv64___linux_riscv64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_riscv64___linux_riscv64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-riscv64/-/linux-riscv64-0.18.20.tgz";
        sha512 = "WSxo6h5ecI5XH34KC7w5veNnKkju3zBRLEQNY7mv5mtBmrP/MjNBCAlsM2u5hDBlS3NGcTQpoBvRzqBcRtpq1A==";
      };
    }
    {
      name = "_esbuild_linux_s390x___linux_s390x_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_linux_s390x___linux_s390x_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-s390x/-/linux-s390x-0.18.20.tgz";
        sha512 = "+8231GMs3mAEth6Ja1iK0a1sQ3ohfcpzpRLH8uuc5/KVDFneH6jtAJLFGafpzpMRO6DzJ6AvXKze9LfFMrIHVQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__esbuild_linux_x64___linux_x64_0.18.20.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__esbuild_linux_x64___linux_x64_0.18.20.tgz";
        url  = "https://registry.npmjs.org/@esbuild/linux-x64/-/linux-x64-0.18.20.tgz";
        sha512 = "UYqiqemphJcNsFEskc73jQ7B9jgwjWrSayxawS6UVFZGWrAAtkzjxSqnoclCXxWtfwLdzU+vTpcNYhpn43uP1w==";
      };
    }
    {
      name = "_esbuild_netbsd_x64___netbsd_x64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_netbsd_x64___netbsd_x64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/netbsd-x64/-/netbsd-x64-0.18.20.tgz";
        sha512 = "iO1c++VP6xUBUmltHZoMtCUdPlnPGdBom6IrO4gyKPFFVBKioIImVooR5I83nTew5UOYrk3gIJhbZh8X44y06A==";
      };
    }
    {
      name = "_esbuild_openbsd_x64___openbsd_x64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_openbsd_x64___openbsd_x64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/openbsd-x64/-/openbsd-x64-0.18.20.tgz";
        sha512 = "e5e4YSsuQfX4cxcygw/UCPIEP6wbIL+se3sxPdCiMbFLBWu0eiZOJ7WoD+ptCLrmjZBK1Wk7I6D/I3NglUGOxg==";
      };
    }
    {
      name = "_esbuild_sunos_x64___sunos_x64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_sunos_x64___sunos_x64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/sunos-x64/-/sunos-x64-0.18.20.tgz";
        sha512 = "kDbFRFp0YpTQVVrqUd5FTYmWo45zGaXe0X8E1G/LKFC0v8x0vWrhOWSLITcCn63lmZIxfOMXtCfti/RxN/0wnQ==";
      };
    }
    {
      name = "_esbuild_win32_arm64___win32_arm64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_win32_arm64___win32_arm64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/win32-arm64/-/win32-arm64-0.18.20.tgz";
        sha512 = "ddYFR6ItYgoaq4v4JmQQaAI5s7npztfV4Ag6NrhiaW0RrnOXqBkgwZLofVTlq1daVTQNhtI5oieTvkRPfZrePg==";
      };
    }
    {
      name = "_esbuild_win32_ia32___win32_ia32_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_win32_ia32___win32_ia32_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/win32-ia32/-/win32-ia32-0.18.20.tgz";
        sha512 = "Wv7QBi3ID/rROT08SABTS7eV4hX26sVduqDOTe1MvGMjNd3EjOz4b7zeexIR62GTIEKrfJXKL9LFxTYgkyeu7g==";
      };
    }
    {
      name = "_esbuild_win32_x64___win32_x64_0.18.20.tgz";
      path = fetchurl {
        name = "_esbuild_win32_x64___win32_x64_0.18.20.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/win32-x64/-/win32-x64-0.18.20.tgz";
        sha512 = "kTdfRcSiDfQca/y9QIkng02avJ+NCaQvrMejlsB3RRv5sE9rRoeBPISaZpKxHELzRxZyLvNts1P27W3wV+8geQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__fastify_busboy___busboy_2.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__fastify_busboy___busboy_2.1.0.tgz";
        url  = "https://registry.npmjs.org/@fastify/busboy/-/busboy-2.1.0.tgz";
        sha512 = "+KpH+QxZU7O4675t3mnkQKcZZg56u+K/Ct2K+N2AZYNVK8kyeo/bI18tI8aPm3tvNNRyTWfj6s5tnGNlcbQRsA==";
      };
    }
    {
      name = "https___registry.npmjs.org__jridgewell_gen_mapping___gen_mapping_0.3.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__jridgewell_gen_mapping___gen_mapping_0.3.3.tgz";
        url  = "https://registry.npmjs.org/@jridgewell/gen-mapping/-/gen-mapping-0.3.3.tgz";
        sha512 = "HLhSWOLRi875zjjMG/r+Nv0oCW8umGb0BgEhyX3dDX3egwZtB8PqLnjz3yedt8R5StBrzcg4aBpnh8UA9D1BoQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__jridgewell_resolve_uri___resolve_uri_3.1.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__jridgewell_resolve_uri___resolve_uri_3.1.1.tgz";
        url  = "https://registry.npmjs.org/@jridgewell/resolve-uri/-/resolve-uri-3.1.1.tgz";
        sha512 = "dSYZh7HhCDtCKm4QakX0xFpsRDqjjtZf/kjI/v3T3Nwt5r8/qz/M19F9ySyOqU94SXBmeG9ttTul+YnR4LOxFA==";
      };
    }
    {
      name = "https___registry.npmjs.org__jridgewell_set_array___set_array_1.1.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__jridgewell_set_array___set_array_1.1.2.tgz";
        url  = "https://registry.npmjs.org/@jridgewell/set-array/-/set-array-1.1.2.tgz";
        sha512 = "xnkseuNADM0gt2bs+BvhO0p78Mk762YnZdsuzFV018NoG1Sj1SCQvpSqa7XUaTam5vAGasABV9qXASMKnFMwMw==";
      };
    }
    {
      name = "https___registry.npmjs.org__jridgewell_sourcemap_codec___sourcemap_codec_1.4.15.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__jridgewell_sourcemap_codec___sourcemap_codec_1.4.15.tgz";
        url  = "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.4.15.tgz";
        sha512 = "eF2rxCRulEKXHTRiDrDy6erMYWqNw4LPdQ8UQA4huuxaQsVeRPFl2oM8oDGxMFhJUWZf9McpLtJasDDZb/Bpeg==";
      };
    }
    {
      name = "https___registry.npmjs.org__jridgewell_trace_mapping___trace_mapping_0.3.20.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__jridgewell_trace_mapping___trace_mapping_0.3.20.tgz";
        url  = "https://registry.npmjs.org/@jridgewell/trace-mapping/-/trace-mapping-0.3.20.tgz";
        sha512 = "R8LcPeWZol2zR8mmH3JeKQ6QRCFb7XgUhV9ZlGhHLGyg4wpPiPZNQOOWhFZhxKw8u//yTbNGI42Bx/3paXEQ+Q==";
      };
    }
    {
      name = "https___registry.npmjs.org__nodelib_fs.scandir___fs.scandir_2.1.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__nodelib_fs.scandir___fs.scandir_2.1.5.tgz";
        url  = "https://registry.npmjs.org/@nodelib/fs.scandir/-/fs.scandir-2.1.5.tgz";
        sha512 = "vq24Bq3ym5HEQm2NKCr3yXDwjc7vTsEThRDnkp2DK9p1uqLR+DHurm/NOTo0KG7HYHU7eppKZj3MyqYuMBf62g==";
      };
    }
    {
      name = "https___registry.npmjs.org__nodelib_fs.stat___fs.stat_2.0.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__nodelib_fs.stat___fs.stat_2.0.5.tgz";
        url  = "https://registry.npmjs.org/@nodelib/fs.stat/-/fs.stat-2.0.5.tgz";
        sha512 = "RkhPPp2zrqDAQA/2jNhnztcPAlv64XdhIp7a7454A5ovI7Bukxgt7MX7udwAu3zg1DcpPU0rz3VV1SeaqvY4+A==";
      };
    }
    {
      name = "https___registry.npmjs.org__nodelib_fs.walk___fs.walk_1.2.8.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__nodelib_fs.walk___fs.walk_1.2.8.tgz";
        url  = "https://registry.npmjs.org/@nodelib/fs.walk/-/fs.walk-1.2.8.tgz";
        sha512 = "oGB+UxlgWcgQkgwo8GcEGwemoTFt3FIO9ababBmaGwXIoBKZ+GTy0pP185beGg7Llih/NSHSV2XAs1lnznocSg==";
      };
    }
    {
      name = "https___registry.npmjs.org__polka_url___url_1.0.0_next.23.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__polka_url___url_1.0.0_next.23.tgz";
        url  = "https://registry.npmjs.org/@polka/url/-/url-1.0.0-next.23.tgz";
        sha512 = "C16M+IYz0rgRhWZdCmK+h58JMv8vijAA61gmz2rspCSwKwzBebpdcsiUmwrtJRdphuY30i6BSLEOP8ppbNLyLg==";
      };
    }
    {
      name = "https___registry.npmjs.org__rollup_plugin_commonjs___plugin_commonjs_25.0.7.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__rollup_plugin_commonjs___plugin_commonjs_25.0.7.tgz";
        url  = "https://registry.npmjs.org/@rollup/plugin-commonjs/-/plugin-commonjs-25.0.7.tgz";
        sha512 = "nEvcR+LRjEjsaSsc4x3XZfCCvZIaSMenZu/OiwOKGN2UhQpAYI7ru7czFvyWbErlpoGjnSX3D5Ch5FcMA3kRWQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__rollup_plugin_json___plugin_json_6.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__rollup_plugin_json___plugin_json_6.0.1.tgz";
        url  = "https://registry.npmjs.org/@rollup/plugin-json/-/plugin-json-6.0.1.tgz";
        sha512 = "RgVfl5hWMkxN1h/uZj8FVESvPuBJ/uf6ly6GTj0GONnkfoBN5KC0MSz+PN2OLDgYXMhtG0mWpTrkiOjoxAIevw==";
      };
    }
    {
      name = "https___registry.npmjs.org__rollup_plugin_node_resolve___plugin_node_resolve_15.2.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__rollup_plugin_node_resolve___plugin_node_resolve_15.2.3.tgz";
        url  = "https://registry.npmjs.org/@rollup/plugin-node-resolve/-/plugin-node-resolve-15.2.3.tgz";
        sha512 = "j/lym8nf5E21LwBT4Df1VD6hRO2L2iwUeUmP7litikRsVp1H6NWx20NEp0Y7su+7XGc476GnXXc4kFeZNGmaSQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__rollup_pluginutils___pluginutils_5.0.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__rollup_pluginutils___pluginutils_5.0.5.tgz";
        url  = "https://registry.npmjs.org/@rollup/pluginutils/-/pluginutils-5.0.5.tgz";
        sha512 = "6aEYR910NyP73oHiJglti74iRyOwgFU4x3meH/H8OJx6Ry0j6cOVZ5X/wTvub7G7Ao6qaHBEaNsV3GLJkSsF+Q==";
      };
    }
    {
      name = "https___registry.npmjs.org__sveltejs_adapter_auto___adapter_auto_2.1.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__sveltejs_adapter_auto___adapter_auto_2.1.1.tgz";
        url  = "https://registry.npmjs.org/@sveltejs/adapter-auto/-/adapter-auto-2.1.1.tgz";
        sha512 = "nzi6x/7/3Axh5VKQ8Eed3pYxastxoa06Y/bFhWb7h3Nu+nGRVxKAy3+hBJgmPCwWScy8n0TsstZjSVKfyrIHkg==";
      };
    }
    {
      name = "https___registry.npmjs.org__sveltejs_adapter_node___adapter_node_1.3.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__sveltejs_adapter_node___adapter_node_1.3.1.tgz";
        url  = "https://registry.npmjs.org/@sveltejs/adapter-node/-/adapter-node-1.3.1.tgz";
        sha512 = "A0VgRQDCDPzdLNoiAbcOxGw4zT1Mc+n1LwT1OmO350R7WxrEqdMUChPPOd1iMfIDWlP4ie6E2d/WQf5es2d4Zw==";
      };
    }
    {
      name = "https___registry.npmjs.org__sveltejs_kit___kit_1.27.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__sveltejs_kit___kit_1.27.5.tgz";
        url  = "https://registry.npmjs.org/@sveltejs/kit/-/kit-1.27.5.tgz";
        sha512 = "+L1WPs/ZYNjXoBFoFARypD4aZOjkT51vFpRCtQI45+Fmmfi4Y0dH/8VFlmYD6VlGe89ViIPg7lgf/JpGQ2tr7A==";
      };
    }
    {
      name = "https___registry.npmjs.org__sveltejs_vite_plugin_svelte_inspector___vite_plugin_svelte_inspector_1.0.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__sveltejs_vite_plugin_svelte_inspector___vite_plugin_svelte_inspector_1.0.4.tgz";
        url  = "https://registry.npmjs.org/@sveltejs/vite-plugin-svelte-inspector/-/vite-plugin-svelte-inspector-1.0.4.tgz";
        sha512 = "zjiuZ3yydBtwpF3bj0kQNV0YXe+iKE545QGZVTaylW3eAzFr+pJ/cwK8lZEaRp4JtaJXhD5DyWAV4AxLh6DgaQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__sveltejs_vite_plugin_svelte___vite_plugin_svelte_2.5.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__sveltejs_vite_plugin_svelte___vite_plugin_svelte_2.5.2.tgz";
        url  = "https://registry.npmjs.org/@sveltejs/vite-plugin-svelte/-/vite-plugin-svelte-2.5.2.tgz";
        sha512 = "Dfy0Rbl+IctOVfJvWGxrX/3m6vxPLH8o0x+8FA5QEyMUQMo4kGOVIojjryU7YomBAexOTAuYf1RT7809yDziaA==";
      };
    }
    {
      name = "https___registry.npmjs.org__types_cookie___cookie_0.5.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__types_cookie___cookie_0.5.4.tgz";
        url  = "https://registry.npmjs.org/@types/cookie/-/cookie-0.5.4.tgz";
        sha512 = "7z/eR6O859gyWIAjuvBWFzNURmf2oPBmJlfVWkwehU5nzIyjwBsTh7WMmEEV4JFnHuQ3ex4oyTvfKzcyJVDBNA==";
      };
    }
    {
      name = "https___registry.npmjs.org__types_estree___estree_1.0.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__types_estree___estree_1.0.5.tgz";
        url  = "https://registry.npmjs.org/@types/estree/-/estree-1.0.5.tgz";
        sha512 = "/kYRxGDLWzHOB7q+wtSUQlFrtcdUccpfy+X+9iMBpHK8QLLhx2wIPYuS5DYtR9Wa/YlZAbIovy7qVdB1Aq6Lyw==";
      };
    }
    {
      name = "https___registry.npmjs.org__types_pug___pug_2.0.9.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__types_pug___pug_2.0.9.tgz";
        url  = "https://registry.npmjs.org/@types/pug/-/pug-2.0.9.tgz";
        sha512 = "Yg4LkgFYvn1faISbDNWmcAC1XoDT8IoMUFspp5mnagKk+UvD2N0IWt5A7GRdMubsNWqgCLmrkf8rXkzNqb4szA==";
      };
    }
    {
      name = "https___registry.npmjs.org__types_resolve___resolve_1.20.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__types_resolve___resolve_1.20.2.tgz";
        url  = "https://registry.npmjs.org/@types/resolve/-/resolve-1.20.2.tgz";
        sha512 = "60BCwRFOZCQhDncwQdxxeOEEkbc5dIMccYLwbxsS4TUNeVECQ/pBJ0j09mrHOl/JJvpRPGwO9SvE4nR2Nb/a4Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_acorn___acorn_8.11.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_acorn___acorn_8.11.2.tgz";
        url  = "https://registry.npmjs.org/acorn/-/acorn-8.11.2.tgz";
        sha512 = "nc0Axzp/0FILLEVsm4fNwLCwMttvhEI263QtVPQcbpfZZ3ts0hLsZGOpE6czNlid7CJ9MlyH8reXkpsf3YUY4w==";
      };
    }
    {
      name = "https___registry.npmjs.org_anymatch___anymatch_3.1.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_anymatch___anymatch_3.1.3.tgz";
        url  = "https://registry.npmjs.org/anymatch/-/anymatch-3.1.3.tgz";
        sha512 = "KMReFUr0B4t+D+OBkjR3KYqvocp2XaSzO55UcB6mgQMd3KbcE+mWTyvVV7D/zsdEbNnV6acZUutkiHQXvTr1Rw==";
      };
    }
    {
      name = "https___registry.npmjs.org_aria_query___aria_query_5.3.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_aria_query___aria_query_5.3.0.tgz";
        url  = "https://registry.npmjs.org/aria-query/-/aria-query-5.3.0.tgz";
        sha512 = "b0P0sZPKtyu8HkeRAfCq0IfURZK+SuwMjY1UXGBU27wpAiTwQAIlq56IbIO+ytk/JjS1fMR14ee5WBBfKi5J6A==";
      };
    }
    {
      name = "https___registry.npmjs.org_axobject_query___axobject_query_3.2.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_axobject_query___axobject_query_3.2.1.tgz";
        url  = "https://registry.npmjs.org/axobject-query/-/axobject-query-3.2.1.tgz";
        sha512 = "jsyHu61e6N4Vbz/v18DHwWYKK0bSWLqn47eeDSKPB7m8tqMHF9YJ+mhIk2lVteyZrY8tnSj/jHOv4YiTCuCJgg==";
      };
    }
    {
      name = "https___registry.npmjs.org_balanced_match___balanced_match_1.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_balanced_match___balanced_match_1.0.2.tgz";
        url  = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz";
        sha512 = "3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==";
      };
    }
    {
      name = "https___registry.npmjs.org_binary_extensions___binary_extensions_2.2.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_binary_extensions___binary_extensions_2.2.0.tgz";
        url  = "https://registry.npmjs.org/binary-extensions/-/binary-extensions-2.2.0.tgz";
        sha512 = "jDctJ/IVQbZoJykoeHbhXpOlNBqGNcwXJKJog42E5HDPUwQTSdjCHdihjj0DlnheQ7blbT6dHOafNAiS8ooQKA==";
      };
    }
    {
      name = "https___registry.npmjs.org_brace_expansion___brace_expansion_1.1.11.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_brace_expansion___brace_expansion_1.1.11.tgz";
        url  = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha512 = "iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==";
      };
    }
    {
      name = "https___registry.npmjs.org_brace_expansion___brace_expansion_2.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_brace_expansion___brace_expansion_2.0.1.tgz";
        url  = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-2.0.1.tgz";
        sha512 = "XnAIvQ8eM+kC6aULx6wuQiwVsnzsi9d3WxzV3FpWTGA19F621kwdbsAcFKXgKUHZWsy+mY6iL1sHTxWEFCytDA==";
      };
    }
    {
      name = "https___registry.npmjs.org_braces___braces_3.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_braces___braces_3.0.2.tgz";
        url  = "https://registry.npmjs.org/braces/-/braces-3.0.2.tgz";
        sha512 = "b8um+L1RzM3WDSzvhm6gIz1yfTbBt6YTlcEKAvsmqCZZFw46z626lVj9j1yEPW33H5H+lBQpZMP1k8l+78Ha0A==";
      };
    }
    {
      name = "https___registry.npmjs.org_buffer_crc32___buffer_crc32_0.2.13.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_buffer_crc32___buffer_crc32_0.2.13.tgz";
        url  = "https://registry.npmjs.org/buffer-crc32/-/buffer-crc32-0.2.13.tgz";
        sha512 = "VO9Ht/+p3SN7SKWqcrgEzjGbRSJYTx+Q1pTQC0wrWqHx0vpJraQ6GtHx8tvcg1rlK1byhU5gccxgOgj7B0TDkQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_builtin_modules___builtin_modules_3.3.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_builtin_modules___builtin_modules_3.3.0.tgz";
        url  = "https://registry.npmjs.org/builtin-modules/-/builtin-modules-3.3.0.tgz";
        sha512 = "zhaCDicdLuWN5UbN5IMnFqNMhNfo919sH85y2/ea+5Yg9TsTkeZxpL+JLbp6cgYFS4sRLp3YV4S6yDuqVWHYOw==";
      };
    }
    {
      name = "https___registry.npmjs.org_callsites___callsites_3.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_callsites___callsites_3.1.0.tgz";
        url  = "https://registry.npmjs.org/callsites/-/callsites-3.1.0.tgz";
        sha512 = "P8BjAsXvZS+VIDUI11hHCQEv74YT67YUi5JJFNWIqL235sBmjX4+qx9Muvls5ivyNENctx46xQLQ3aTuE7ssaQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_chokidar___chokidar_3.5.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_chokidar___chokidar_3.5.3.tgz";
        url  = "https://registry.npmjs.org/chokidar/-/chokidar-3.5.3.tgz";
        sha512 = "Dr3sfKRP6oTcjf2JmUmFJfeVMvXBdegxB0iVQ5eb2V10uFJUCAS8OByZdVAyVb8xXNz3GjjTgj9kLWsZTqE6kw==";
      };
    }
    {
      name = "https___registry.npmjs.org_code_red___code_red_1.0.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_code_red___code_red_1.0.4.tgz";
        url  = "https://registry.npmjs.org/code-red/-/code-red-1.0.4.tgz";
        sha512 = "7qJWqItLA8/VPVlKJlFXU+NBlo/qyfs39aJcuMT/2ere32ZqvF5OSxgdM5xOfJJ7O429gg2HM47y8v9P+9wrNw==";
      };
    }
    {
      name = "https___registry.npmjs.org_commondir___commondir_1.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_commondir___commondir_1.0.1.tgz";
        url  = "https://registry.npmjs.org/commondir/-/commondir-1.0.1.tgz";
        sha512 = "W9pAhw0ja1Edb5GVdIF1mjZw/ASI0AlShXM83UUGe2DVr5TdAPEA1OA8m/g8zWp9x6On7gqufY+FatDbC3MDQg==";
      };
    }
    {
      name = "https___registry.npmjs.org_concat_map___concat_map_0.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_concat_map___concat_map_0.0.1.tgz";
        url  = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
        sha512 = "/Srv4dswyQNBfohGpz9o6Yb3Gz3SrUDqBH5rTuhGR7ahtlbYKnVxw2bCFMRljaA7EXHaXZ8wsHdodFvbkhKmqg==";
      };
    }
    {
      name = "https___registry.npmjs.org_cookie___cookie_0.5.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_cookie___cookie_0.5.0.tgz";
        url  = "https://registry.npmjs.org/cookie/-/cookie-0.5.0.tgz";
        sha512 = "YZ3GUyn/o8gfKJlnlX7g7xq4gyO6OSuhGPKaaGssGB2qgDUS0gPgtTvoyZLTt9Ab6dC4hfc9dV5arkvc/OCmrw==";
      };
    }
    {
      name = "https___registry.npmjs.org_css_tree___css_tree_2.3.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_css_tree___css_tree_2.3.1.tgz";
        url  = "https://registry.npmjs.org/css-tree/-/css-tree-2.3.1.tgz";
        sha512 = "6Fv1DV/TYw//QF5IzQdqsNDjx/wc8TrMBZsqjL9eW01tWb7R7k/mq+/VXfJCl7SoD5emsJop9cOByJZfs8hYIw==";
      };
    }
    {
      name = "https___registry.npmjs.org_debug___debug_4.3.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_debug___debug_4.3.4.tgz";
        url  = "https://registry.npmjs.org/debug/-/debug-4.3.4.tgz";
        sha512 = "PRWFHuSU3eDtQJPvnNY7Jcket1j0t5OuOsFzPPzsekD52Zl8qUfFIPEiswXqIvHWGVHOgX+7G/vCNNhehwxfkQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_deepmerge___deepmerge_4.3.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_deepmerge___deepmerge_4.3.1.tgz";
        url  = "https://registry.npmjs.org/deepmerge/-/deepmerge-4.3.1.tgz";
        sha512 = "3sUqbMEc77XqpdNO7FRyRog+eW3ph+GYCbj+rK+uYyRMuwsVy0rMiVtPn+QJlKFvWP/1PYpapqYn0Me2knFn+A==";
      };
    }
    {
      name = "https___registry.npmjs.org_dequal___dequal_2.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_dequal___dequal_2.0.3.tgz";
        url  = "https://registry.npmjs.org/dequal/-/dequal-2.0.3.tgz";
        sha512 = "0je+qPKHEMohvfRTCEo3CrPG6cAzAYgmzKyxRiYSSDkS6eGJdyVJm7WaYA5ECaAD9wLB2T4EEeymA5aFVcYXCA==";
      };
    }
    {
      name = "https___registry.npmjs.org_detect_indent___detect_indent_6.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_detect_indent___detect_indent_6.1.0.tgz";
        url  = "https://registry.npmjs.org/detect-indent/-/detect-indent-6.1.0.tgz";
        sha512 = "reYkTUJAZb9gUuZ2RvVCNhVHdg62RHnJ7WJl8ftMi4diZ6NWlciOzQN88pUhSELEwflJht4oQDv0F0BMlwaYtA==";
      };
    }
    {
      name = "https___registry.npmjs.org_devalue___devalue_4.3.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_devalue___devalue_4.3.2.tgz";
        url  = "https://registry.npmjs.org/devalue/-/devalue-4.3.2.tgz";
        sha512 = "KqFl6pOgOW+Y6wJgu80rHpo2/3H07vr8ntR9rkkFIRETewbf5GaYYcakYfiKz89K+sLsuPkQIZaXDMjUObZwWg==";
      };
    }
    {
      name = "https___registry.npmjs.org_es6_promise___es6_promise_3.3.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_es6_promise___es6_promise_3.3.1.tgz";
        url  = "https://registry.npmjs.org/es6-promise/-/es6-promise-3.3.1.tgz";
        sha512 = "SOp9Phqvqn7jtEUxPWdWfWoLmyt2VaJ6MpvP9Comy1MceMXqE6bxvaTu4iaxpYYPzhny28Lc+M87/c2cPK6lDg==";
      };
    }
    {
      name = "https___registry.npmjs.org_esbuild___esbuild_0.18.20.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_esbuild___esbuild_0.18.20.tgz";
        url  = "https://registry.npmjs.org/esbuild/-/esbuild-0.18.20.tgz";
        sha512 = "ceqxoedUrcayh7Y7ZX6NdbbDzGROiyVBgC4PriJThBKSVPWnnFHZAkfI1lJT8QFkOwH4qOS2SJkS4wvpGl8BpA==";
      };
    }
    {
      name = "https___registry.npmjs.org_esm_env___esm_env_1.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_esm_env___esm_env_1.0.0.tgz";
        url  = "https://registry.npmjs.org/esm-env/-/esm-env-1.0.0.tgz";
        sha512 = "Cf6VksWPsTuW01vU9Mk/3vRue91Zevka5SjyNf3nEpokFRuqt/KjUQoGAwq9qMmhpLTHmXzSIrFRw8zxWzmFBA==";
      };
    }
    {
      name = "https___registry.npmjs.org_estree_walker___estree_walker_2.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_estree_walker___estree_walker_2.0.2.tgz";
        url  = "https://registry.npmjs.org/estree-walker/-/estree-walker-2.0.2.tgz";
        sha512 = "Rfkk/Mp/DL7JVje3u18FxFujQlTNR2q6QfMSMB7AvCBx91NGj/ba3kCfza0f6dVDbw7YlRf/nDrn7pQrCCyQ/w==";
      };
    }
    {
      name = "https___registry.npmjs.org_estree_walker___estree_walker_3.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_estree_walker___estree_walker_3.0.3.tgz";
        url  = "https://registry.npmjs.org/estree-walker/-/estree-walker-3.0.3.tgz";
        sha512 = "7RUKfXgSMMkzt6ZuXmqapOurLGPPfgj6l9uRZ7lRGolvk0y2yocc35LdcxKC5PQZdn2DMqioAQ2NoWcrTKmm6g==";
      };
    }
    {
      name = "https___registry.npmjs.org_fast_glob___fast_glob_3.3.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_fast_glob___fast_glob_3.3.2.tgz";
        url  = "https://registry.npmjs.org/fast-glob/-/fast-glob-3.3.2.tgz";
        sha512 = "oX2ruAFQwf/Orj8m737Y5adxDQO0LAB7/S5MnxCdTNDd4p6BsyIVsv9JQsATbTSq8KHRpLwIHbVlUNatxd+1Ow==";
      };
    }
    {
      name = "https___registry.npmjs.org_fastq___fastq_1.15.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_fastq___fastq_1.15.0.tgz";
        url  = "https://registry.npmjs.org/fastq/-/fastq-1.15.0.tgz";
        sha512 = "wBrocU2LCXXa+lWBt8RoIRD89Fi8OdABODa/kEnyeyjS5aZO5/GNvI5sEINADqP/h8M29UHTHUb53sUu5Ihqdw==";
      };
    }
    {
      name = "https___registry.npmjs.org_fill_range___fill_range_7.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_fill_range___fill_range_7.0.1.tgz";
        url  = "https://registry.npmjs.org/fill-range/-/fill-range-7.0.1.tgz";
        sha512 = "qOo9F+dMUmC2Lcb4BbVvnKJxTPjCm+RRpe4gDuGrzkL7mEVl/djYSu2OdQ2Pa302N4oqkSg9ir6jaLWJ2USVpQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_fs.realpath___fs.realpath_1.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_fs.realpath___fs.realpath_1.0.0.tgz";
        url  = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha512 = "OO0pH2lK6a0hZnAdau5ItzHPI6pUlvI7jMVnxUQRtw4owF2wk8lOSabtGDCTP4Ggrg2MbGnWO9X8K1t4+fGMDw==";
      };
    }
    {
      name = "fsevents___fsevents_2.3.3.tgz";
      path = fetchurl {
        name = "fsevents___fsevents_2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/fsevents/-/fsevents-2.3.3.tgz";
        sha512 = "5xoDfX+fL7faATnagmWPpbFtwh/R77WmMMqqHGS65C3vvB0YHrgF+B1YmZ3441tMj5n63k0212XNoJwzlhffQw==";
      };
    }
    {
      name = "https___registry.npmjs.org_function_bind___function_bind_1.1.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_function_bind___function_bind_1.1.2.tgz";
        url  = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.2.tgz";
        sha512 = "7XHNxH7qX9xG5mIwxkhumTox/MIRNcOgDrxWsMt2pAr23WHp6MrRlN7FBSFpCpr+oVO0F744iUgR82nJMfG2SA==";
      };
    }
    {
      name = "https___registry.npmjs.org_glob_parent___glob_parent_5.1.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_glob_parent___glob_parent_5.1.2.tgz";
        url  = "https://registry.npmjs.org/glob-parent/-/glob-parent-5.1.2.tgz";
        sha512 = "AOIgSQCepiJYwP3ARnGx+5VnTu2HBYdzbGP45eLw1vr3zB3vZLeyed1sC9hnbcOc9/SrMyM5RPQrkGz4aS9Zow==";
      };
    }
    {
      name = "https___registry.npmjs.org_glob___glob_7.2.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_glob___glob_7.2.3.tgz";
        url  = "https://registry.npmjs.org/glob/-/glob-7.2.3.tgz";
        sha512 = "nFR0zLpU2YCaRxwoCJvL6UvCH2JFyFVIvwTLsIf21AuHlMskA1hhTdk+LlYJtOlYt9v6dvszD2BGRqBL+iQK9Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_glob___glob_8.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_glob___glob_8.1.0.tgz";
        url  = "https://registry.npmjs.org/glob/-/glob-8.1.0.tgz";
        sha512 = "r8hpEjiQEYlF2QU0df3dS+nxxSIreXQS1qRhMJM0Q5NDdR386C7jb7Hwwod8Fgiuex+k0GFjgft18yvxm5XoCQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_globalyzer___globalyzer_0.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_globalyzer___globalyzer_0.1.0.tgz";
        url  = "https://registry.npmjs.org/globalyzer/-/globalyzer-0.1.0.tgz";
        sha512 = "40oNTM9UfG6aBmuKxk/giHn5nQ8RVz/SS4Ir6zgzOv9/qC3kKZ9v4etGTcJbEl/NyVQH7FGU7d+X1egr57Md2Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_globrex___globrex_0.1.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_globrex___globrex_0.1.2.tgz";
        url  = "https://registry.npmjs.org/globrex/-/globrex-0.1.2.tgz";
        sha512 = "uHJgbwAMwNFf5mLst7IWLNg14x1CkeqglJb/K3doi4dw6q2IvAAmM/Y81kevy83wP+Sst+nutFTYOGg3d1lsxg==";
      };
    }
    {
      name = "https___registry.npmjs.org_graceful_fs___graceful_fs_4.2.11.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_graceful_fs___graceful_fs_4.2.11.tgz";
        url  = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.11.tgz";
        sha512 = "RbJ5/jmFcNNCcDV5o9eTnBLJ/HszWV0P73bc+Ff4nS/rJj+YaS6IGyiOL0VoBYX+l1Wrl3k63h/KrH+nhJ0XvQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_hasown___hasown_2.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_hasown___hasown_2.0.0.tgz";
        url  = "https://registry.npmjs.org/hasown/-/hasown-2.0.0.tgz";
        sha512 = "vUptKVTpIJhcczKBbgnS+RtcuYMB8+oNzPK2/Hp3hanz8JmpATdmmgLgSaadVREkDm+e2giHwY3ZRkyjSIDDFA==";
      };
    }
    {
      name = "https___registry.npmjs.org_import_fresh___import_fresh_3.3.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_import_fresh___import_fresh_3.3.0.tgz";
        url  = "https://registry.npmjs.org/import-fresh/-/import-fresh-3.3.0.tgz";
        sha512 = "veYYhQa+D1QBKznvhUHxb8faxlrwUnxseDAbAp457E0wLNio2bOSKnjYDhMj+YiAq61xrMGhQk9iXVk5FzgQMw==";
      };
    }
    {
      name = "https___registry.npmjs.org_import_meta_resolve___import_meta_resolve_4.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_import_meta_resolve___import_meta_resolve_4.0.0.tgz";
        url  = "https://registry.npmjs.org/import-meta-resolve/-/import-meta-resolve-4.0.0.tgz";
        sha512 = "okYUR7ZQPH+efeuMJGlq4f8ubUgO50kByRPyt/Cy1Io4PSRsPjxME+YlVaCOx+NIToW7hCsZNFJyTPFFKepRSA==";
      };
    }
    {
      name = "https___registry.npmjs.org_inflight___inflight_1.0.6.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_inflight___inflight_1.0.6.tgz";
        url  = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
        sha512 = "k92I/b08q4wvFscXCLvqfsHCrjrF7yiXsQuIVvVE7N82W3+aqpzuUdBbfhWcy/FZR3/4IgflMgKLOsvPDrGCJA==";
      };
    }
    {
      name = "https___registry.npmjs.org_inherits___inherits_2.0.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_inherits___inherits_2.0.4.tgz";
        url  = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
        sha512 = "k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_binary_path___is_binary_path_2.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_binary_path___is_binary_path_2.1.0.tgz";
        url  = "https://registry.npmjs.org/is-binary-path/-/is-binary-path-2.1.0.tgz";
        sha512 = "ZMERYes6pDydyuGidse7OsHxtbI7WVeUEozgR/g7rd0xUimYNlvZRE/K2MgZTjWy725IfelLeVcEM97mmtRGXw==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_builtin_module___is_builtin_module_3.2.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_builtin_module___is_builtin_module_3.2.1.tgz";
        url  = "https://registry.npmjs.org/is-builtin-module/-/is-builtin-module-3.2.1.tgz";
        sha512 = "BSLE3HnV2syZ0FK0iMA/yUGplUeMmNz4AW5fnTunbCIqZi4vG3WjJT9FHMy5D69xmAYBHXQhJdALdpwVxV501A==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_core_module___is_core_module_2.13.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_core_module___is_core_module_2.13.1.tgz";
        url  = "https://registry.npmjs.org/is-core-module/-/is-core-module-2.13.1.tgz";
        sha512 = "hHrIjvZsftOsvKSn2TRYl63zvxsgE0K+0mYMoH6gD4omR5IWB2KynivBQczo3+wF1cCkjzvptnI9Q0sPU66ilw==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_extglob___is_extglob_2.1.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_extglob___is_extglob_2.1.1.tgz";
        url  = "https://registry.npmjs.org/is-extglob/-/is-extglob-2.1.1.tgz";
        sha512 = "SbKbANkN603Vi4jEZv49LeVJMn4yGwsbzZworEoyEiutsN3nJYdbO36zfhGJ6QEDpOZIFkDtnq5JRxmvl3jsoQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_glob___is_glob_4.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_glob___is_glob_4.0.3.tgz";
        url  = "https://registry.npmjs.org/is-glob/-/is-glob-4.0.3.tgz";
        sha512 = "xelSayHH36ZgE7ZWhli7pW34hNbNl8Ojv5KVmkJD4hBdD3th8Tfk9vYasLM+mXWOZhFkgZfxhLSnrwRr4elSSg==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_module___is_module_1.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_module___is_module_1.0.0.tgz";
        url  = "https://registry.npmjs.org/is-module/-/is-module-1.0.0.tgz";
        sha512 = "51ypPSPCoTEIN9dy5Oy+h4pShgJmPCygKfyRCISBI+JoWT/2oJvK8QPxmwv7b/p239jXrm9M1mlQbyKJ5A152g==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_number___is_number_7.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_number___is_number_7.0.0.tgz";
        url  = "https://registry.npmjs.org/is-number/-/is-number-7.0.0.tgz";
        sha512 = "41Cifkg6e8TylSpdtTpeLVMqvSBEVzTttHvERD741+pnZ8ANv0004MRL43QKPDlK9cGvNp6NZWZUBlbGXYxxng==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_reference___is_reference_1.2.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_reference___is_reference_1.2.1.tgz";
        url  = "https://registry.npmjs.org/is-reference/-/is-reference-1.2.1.tgz";
        sha512 = "U82MsXXiFIrjCK4otLT+o2NA2Cd2g5MLoOVXUZjIOhLurrRxpEXzI8O0KZHr3IjLvlAH1kTPYSuqer5T9ZVBKQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_is_reference___is_reference_3.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_is_reference___is_reference_3.0.2.tgz";
        url  = "https://registry.npmjs.org/is-reference/-/is-reference-3.0.2.tgz";
        sha512 = "v3rht/LgVcsdZa3O2Nqs+NMowLOxeOm7Ay9+/ARQ2F+qEoANRcqrjAZKGN0v8ymUetZGgkp26LTnGT7H0Qo9Pg==";
      };
    }
    {
      name = "https___registry.npmjs.org_kleur___kleur_4.1.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_kleur___kleur_4.1.5.tgz";
        url  = "https://registry.npmjs.org/kleur/-/kleur-4.1.5.tgz";
        sha512 = "o+NO+8WrRiQEE4/7nwRJhN1HWpVmJm511pBHUxPLtp0BUISzlBplORYSmTclCnJvQq2tKu/sgl3xVpkc7ZWuQQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_locate_character___locate_character_3.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_locate_character___locate_character_3.0.0.tgz";
        url  = "https://registry.npmjs.org/locate-character/-/locate-character-3.0.0.tgz";
        sha512 = "SW13ws7BjaeJ6p7Q6CO2nchbYEc3X3J6WrmTTDto7yMPqVSZTUyY5Tjbid+Ab8gLnATtygYtiDIJGQRRn2ZOiA==";
      };
    }
    {
      name = "https___registry.npmjs.org_magic_string___magic_string_0.27.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_magic_string___magic_string_0.27.0.tgz";
        url  = "https://registry.npmjs.org/magic-string/-/magic-string-0.27.0.tgz";
        sha512 = "8UnnX2PeRAPZuN12svgR9j7M1uWMovg/CEnIwIG0LFkXSJJe4PdfUGiTGl8V9bsBHFUtfVINcSyYxd7q+kx9fA==";
      };
    }
    {
      name = "https___registry.npmjs.org_magic_string___magic_string_0.30.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_magic_string___magic_string_0.30.5.tgz";
        url  = "https://registry.npmjs.org/magic-string/-/magic-string-0.30.5.tgz";
        sha512 = "7xlpfBaQaP/T6Vh8MO/EqXSW5En6INHEvEXQiuff7Gku0PWjU3uf6w/j9o7O+SpB5fOAkrI5HeoNgwjEO0pFsA==";
      };
    }
    {
      name = "https___registry.npmjs.org_mdn_data___mdn_data_2.0.30.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_mdn_data___mdn_data_2.0.30.tgz";
        url  = "https://registry.npmjs.org/mdn-data/-/mdn-data-2.0.30.tgz";
        sha512 = "GaqWWShW4kv/G9IEucWScBx9G1/vsFZZJUO+tD26M8J8z3Kw5RDQjaoZe03YAClgeS/SWPOcb4nkFBTEi5DUEA==";
      };
    }
    {
      name = "https___registry.npmjs.org_merge2___merge2_1.4.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_merge2___merge2_1.4.1.tgz";
        url  = "https://registry.npmjs.org/merge2/-/merge2-1.4.1.tgz";
        sha512 = "8q7VEgMJW4J8tcfVPy8g09NcQwZdbwFEqhe/WZkoIzjn/3TGDwtOCYtXGxA3O8tPzpczCCDgv+P2P5y00ZJOOg==";
      };
    }
    {
      name = "https___registry.npmjs.org_micromatch___micromatch_4.0.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_micromatch___micromatch_4.0.5.tgz";
        url  = "https://registry.npmjs.org/micromatch/-/micromatch-4.0.5.tgz";
        sha512 = "DMy+ERcEW2q8Z2Po+WNXuw3c5YaUSFjAO5GsJqfEl7UjvtIuFKO6ZrKvcItdy98dwFI2N1tg3zNIdKaQT+aNdA==";
      };
    }
    {
      name = "https___registry.npmjs.org_min_indent___min_indent_1.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_min_indent___min_indent_1.0.1.tgz";
        url  = "https://registry.npmjs.org/min-indent/-/min-indent-1.0.1.tgz";
        sha512 = "I9jwMn07Sy/IwOj3zVkVik2JTvgpaykDZEigL6Rx6N9LbMywwUSMtxET+7lVoDLLd3O3IXwJwvuuns8UB/HeAg==";
      };
    }
    {
      name = "https___registry.npmjs.org_minimatch___minimatch_3.1.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_minimatch___minimatch_3.1.2.tgz";
        url  = "https://registry.npmjs.org/minimatch/-/minimatch-3.1.2.tgz";
        sha512 = "J7p63hRiAjw1NDEww1W7i37+ByIrOWO5XQQAzZ3VOcL0PNybwpfmV/N05zFAzwQ9USyEcX6t3UO+K5aqBQOIHw==";
      };
    }
    {
      name = "https___registry.npmjs.org_minimatch___minimatch_5.1.6.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_minimatch___minimatch_5.1.6.tgz";
        url  = "https://registry.npmjs.org/minimatch/-/minimatch-5.1.6.tgz";
        sha512 = "lKwV/1brpG6mBUFHtb7NUmtABCb2WZZmm2wNiOA5hAb8VdCS4B3dtMWyvcoViccwAW/COERjXLt0zP1zXUN26g==";
      };
    }
    {
      name = "https___registry.npmjs.org_minimist___minimist_1.2.8.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_minimist___minimist_1.2.8.tgz";
        url  = "https://registry.npmjs.org/minimist/-/minimist-1.2.8.tgz";
        sha512 = "2yyAR8qBkN3YuheJanUpWC5U3bb5osDywNB8RzDVlDwDHbocAJveqqj1u8+SVD7jkWT4yvsHCpWqqWqAxb0zCA==";
      };
    }
    {
      name = "https___registry.npmjs.org_mkdirp___mkdirp_0.5.6.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_mkdirp___mkdirp_0.5.6.tgz";
        url  = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.6.tgz";
        sha512 = "FP+p8RB8OWpF3YZBCrP5gtADmtXApB5AMLn+vdyA+PyxCjrCs00mjyUozssO33cwDeT3wNGdLxJ5M//YqtHAJw==";
      };
    }
    {
      name = "https___registry.npmjs.org_mri___mri_1.2.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_mri___mri_1.2.0.tgz";
        url  = "https://registry.npmjs.org/mri/-/mri-1.2.0.tgz";
        sha512 = "tzzskb3bG8LvYGFF/mDTpq3jpI6Q9wc3LEmBaghu+DdCssd1FakN7Bc0hVNmEyGq1bq3RgfkCb3cmQLpNPOroA==";
      };
    }
    {
      name = "https___registry.npmjs.org_mrmime___mrmime_1.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_mrmime___mrmime_1.0.1.tgz";
        url  = "https://registry.npmjs.org/mrmime/-/mrmime-1.0.1.tgz";
        sha512 = "hzzEagAgDyoU1Q6yg5uI+AorQgdvMCur3FcKf7NhMKWsaYg+RnbTyHRa/9IlLF9rf455MOCtcqqrQQ83pPP7Uw==";
      };
    }
    {
      name = "https___registry.npmjs.org_ms___ms_2.1.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_ms___ms_2.1.2.tgz";
        url  = "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz";
        sha512 = "sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==";
      };
    }
    {
      name = "https___registry.npmjs.org_nanoid___nanoid_3.3.7.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_nanoid___nanoid_3.3.7.tgz";
        url  = "https://registry.npmjs.org/nanoid/-/nanoid-3.3.7.tgz";
        sha512 = "eSRppjcPIatRIMC1U6UngP8XFcz8MQWGQdt1MTBQ7NaAmvXDfvNxbvWV3x2y6CdEUciCSsDHDQZbhYaB8QEo2g==";
      };
    }
    {
      name = "https___registry.npmjs.org_normalize_path___normalize_path_3.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_normalize_path___normalize_path_3.0.0.tgz";
        url  = "https://registry.npmjs.org/normalize-path/-/normalize-path-3.0.0.tgz";
        sha512 = "6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==";
      };
    }
    {
      name = "https___registry.npmjs.org_once___once_1.4.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_once___once_1.4.0.tgz";
        url  = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha512 = "lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==";
      };
    }
    {
      name = "https___registry.npmjs.org_parent_module___parent_module_1.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_parent_module___parent_module_1.0.1.tgz";
        url  = "https://registry.npmjs.org/parent-module/-/parent-module-1.0.1.tgz";
        sha512 = "GQ2EWRpQV8/o+Aw8YqtfZZPfNRWZYkbidE9k5rpl/hC3vtHHBfGm2Ifi6qWV+coDGkrUKZAxE3Lot5kcsRlh+g==";
      };
    }
    {
      name = "https___registry.npmjs.org_path_is_absolute___path_is_absolute_1.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_path_is_absolute___path_is_absolute_1.0.1.tgz";
        url  = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha512 = "AVbw3UJ2e9bq64vSaS9Am0fje1Pa8pbGqTTsmXfaIiMpnr5DlDhfJOuLj9Sf95ZPVDAUerDfEk88MPmPe7UCQg==";
      };
    }
    {
      name = "https___registry.npmjs.org_path_parse___path_parse_1.0.7.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_path_parse___path_parse_1.0.7.tgz";
        url  = "https://registry.npmjs.org/path-parse/-/path-parse-1.0.7.tgz";
        sha512 = "LDJzPVEEEPR+y48z93A0Ed0yXb8pAByGWo/k5YYdYgpY2/2EsOsksJrq7lOHxryrVOn1ejG6oAp8ahvOIQD8sw==";
      };
    }
    {
      name = "https___registry.npmjs.org_periscopic___periscopic_3.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_periscopic___periscopic_3.1.0.tgz";
        url  = "https://registry.npmjs.org/periscopic/-/periscopic-3.1.0.tgz";
        sha512 = "vKiQ8RRtkl9P+r/+oefh25C3fhybptkHKCZSPlcXiJux2tJF55GnEj3BVn4A5gKfq9NWWXXrxkHBwVPUfH0opw==";
      };
    }
    {
      name = "https___registry.npmjs.org_picocolors___picocolors_1.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_picocolors___picocolors_1.0.0.tgz";
        url  = "https://registry.npmjs.org/picocolors/-/picocolors-1.0.0.tgz";
        sha512 = "1fygroTLlHu66zi26VoTDv8yRgm0Fccecssto+MhsZ0D/DGW2sm8E8AjW7NU5VVTRt5GxbeZ5qBuJr+HyLYkjQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_picomatch___picomatch_2.3.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_picomatch___picomatch_2.3.1.tgz";
        url  = "https://registry.npmjs.org/picomatch/-/picomatch-2.3.1.tgz";
        sha512 = "JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==";
      };
    }
    {
      name = "https___registry.npmjs.org_postcss___postcss_8.4.31.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_postcss___postcss_8.4.31.tgz";
        url  = "https://registry.npmjs.org/postcss/-/postcss-8.4.31.tgz";
        sha512 = "PS08Iboia9mts/2ygV3eLpY5ghnUcfLV/EXTOW1E2qYxJKGGBUtNjN76FYHnMs36RmARn41bC0AZmn+rR0OVpQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_queue_microtask___queue_microtask_1.2.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_queue_microtask___queue_microtask_1.2.3.tgz";
        url  = "https://registry.npmjs.org/queue-microtask/-/queue-microtask-1.2.3.tgz";
        sha512 = "NuaNSa6flKT5JaSYQzJok04JzTL1CA6aGhv5rfLW3PgqA+M2ChpZQnAC8h8i4ZFkBS8X5RqkDBHA7r4hej3K9A==";
      };
    }
    {
      name = "https___registry.npmjs.org_readdirp___readdirp_3.6.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_readdirp___readdirp_3.6.0.tgz";
        url  = "https://registry.npmjs.org/readdirp/-/readdirp-3.6.0.tgz";
        sha512 = "hOS089on8RduqdbhvQ5Z37A0ESjsqz6qnRcffsMU3495FuTdqSm+7bhJ29JvIOsBDEEnan5DPu9t3To9VRlMzA==";
      };
    }
    {
      name = "https___registry.npmjs.org_resolve_from___resolve_from_4.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_resolve_from___resolve_from_4.0.0.tgz";
        url  = "https://registry.npmjs.org/resolve-from/-/resolve-from-4.0.0.tgz";
        sha512 = "pb/MYmXstAkysRFx8piNI1tGFNQIFA3vkE3Gq4EuA1dF6gHp/+vgZqsCGJapvy8N3Q+4o7FwvquPJcnZ7RYy4g==";
      };
    }
    {
      name = "https___registry.npmjs.org_resolve___resolve_1.22.8.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_resolve___resolve_1.22.8.tgz";
        url  = "https://registry.npmjs.org/resolve/-/resolve-1.22.8.tgz";
        sha512 = "oKWePCxqpd6FlLvGV1VU0x7bkPmmCNolxzjMf4NczoDnQcIWrAF+cPtZn5i6n+RfD2d9i0tzpKnG6Yk168yIyw==";
      };
    }
    {
      name = "https___registry.npmjs.org_reusify___reusify_1.0.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_reusify___reusify_1.0.4.tgz";
        url  = "https://registry.npmjs.org/reusify/-/reusify-1.0.4.tgz";
        sha512 = "U9nH88a3fc/ekCF1l0/UP1IosiuIjyTh7hBvXVMHYgVcfGvt897Xguj2UOLDeI5BG2m7/uwyaLVT6fbtCwTyzw==";
      };
    }
    {
      name = "https___registry.npmjs.org_rimraf___rimraf_2.7.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_rimraf___rimraf_2.7.1.tgz";
        url  = "https://registry.npmjs.org/rimraf/-/rimraf-2.7.1.tgz";
        sha512 = "uWjbaKIK3T1OSVptzX7Nl6PvQ3qAGtKEtVRjRuazjfL3Bx5eI409VZSqgND+4UNnmzLVdPj9FqFJNPqBZFve4w==";
      };
    }
    {
      name = "https___registry.npmjs.org_rollup___rollup_3.29.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_rollup___rollup_3.29.4.tgz";
        url  = "https://registry.npmjs.org/rollup/-/rollup-3.29.4.tgz";
        sha512 = "oWzmBZwvYrU0iJHtDmhsm662rC15FRXmcjCk1xD771dFDx5jJ02ufAQQTn0etB2emNk4J9EZg/yWKpsn9BWGRw==";
      };
    }
    {
      name = "https___registry.npmjs.org_run_parallel___run_parallel_1.2.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_run_parallel___run_parallel_1.2.0.tgz";
        url  = "https://registry.npmjs.org/run-parallel/-/run-parallel-1.2.0.tgz";
        sha512 = "5l4VyZR86LZ/lDxZTR6jqL8AFE2S0IFLMP26AbjsLVADxHdhB/c0GUsH+y39UfCi3dzz8OlQuPmnaJOMoDHQBA==";
      };
    }
    {
      name = "https___registry.npmjs.org_sade___sade_1.8.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_sade___sade_1.8.1.tgz";
        url  = "https://registry.npmjs.org/sade/-/sade-1.8.1.tgz";
        sha512 = "xal3CZX1Xlo/k4ApwCFrHVACi9fBqJ7V+mwhBsuf/1IOKbBy098Fex+Wa/5QMubw09pSZ/u8EY8PWgevJsXp1A==";
      };
    }
    {
      name = "https___registry.npmjs.org_sander___sander_0.5.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_sander___sander_0.5.1.tgz";
        url  = "https://registry.npmjs.org/sander/-/sander-0.5.1.tgz";
        sha512 = "3lVqBir7WuKDHGrKRDn/1Ye3kwpXaDOMsiRP1wd6wpZW56gJhsbp5RqQpA6JG/P+pkXizygnr1dKR8vzWaVsfA==";
      };
    }
    {
      name = "https___registry.npmjs.org_set_cookie_parser___set_cookie_parser_2.6.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_set_cookie_parser___set_cookie_parser_2.6.0.tgz";
        url  = "https://registry.npmjs.org/set-cookie-parser/-/set-cookie-parser-2.6.0.tgz";
        sha512 = "RVnVQxTXuerk653XfuliOxBP81Sf0+qfQE73LIYKcyMYHG94AuH0kgrQpRDuTZnSmjpysHmzxJXKNfa6PjFhyQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_sirv___sirv_2.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_sirv___sirv_2.0.3.tgz";
        url  = "https://registry.npmjs.org/sirv/-/sirv-2.0.3.tgz";
        sha512 = "O9jm9BsID1P+0HOi81VpXPoDxYP374pkOLzACAoyUQ/3OUVndNpsz6wMnY2z+yOxzbllCKZrM+9QrWsv4THnyA==";
      };
    }
    {
      name = "https___registry.npmjs.org_sorcery___sorcery_0.11.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_sorcery___sorcery_0.11.0.tgz";
        url  = "https://registry.npmjs.org/sorcery/-/sorcery-0.11.0.tgz";
        sha512 = "J69LQ22xrQB1cIFJhPfgtLuI6BpWRiWu1Y3vSsIwK/eAScqJxd/+CJlUuHQRdX2C9NGFamq+KqNywGgaThwfHw==";
      };
    }
    {
      name = "https___registry.npmjs.org_source_map_js___source_map_js_1.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_source_map_js___source_map_js_1.0.2.tgz";
        url  = "https://registry.npmjs.org/source-map-js/-/source-map-js-1.0.2.tgz";
        sha512 = "R0XvVJ9WusLiqTCEiGCmICCMplcCkIwwR11mOSD9CR5u+IXYdiseeEuXCVAjS54zqwkLcPNnmU4OeJ6tUrWhDw==";
      };
    }
    {
      name = "https___registry.npmjs.org_strip_indent___strip_indent_3.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_strip_indent___strip_indent_3.0.0.tgz";
        url  = "https://registry.npmjs.org/strip-indent/-/strip-indent-3.0.0.tgz";
        sha512 = "laJTa3Jb+VQpaC6DseHhF7dXVqHTfJPCRDaEbid/drOhgitgYku/letMUqOXFoWV0zIIUbjpdH2t+tYj4bQMRQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_supports_preserve_symlinks_flag___supports_preserve_symlinks_flag_1.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_supports_preserve_symlinks_flag___supports_preserve_symlinks_flag_1.0.0.tgz";
        url  = "https://registry.npmjs.org/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz";
        sha512 = "ot0WnXS9fgdkgIcePe6RHNk1WA8+muPa6cSjeR3V8K27q9BB1rTE3R1p7Hv0z1ZyAc8s6Vvv8DIyWf681MAt0w==";
      };
    }
    {
      name = "https___registry.npmjs.org_svelte_check___svelte_check_3.6.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_svelte_check___svelte_check_3.6.0.tgz";
        url  = "https://registry.npmjs.org/svelte-check/-/svelte-check-3.6.0.tgz";
        sha512 = "8VfqhfuRJ1sKW+o8isH2kPi0RhjXH1nNsIbCFGyoUHG+ZxVxHYRKcb+S8eaL/1tyj3VGvWYx3Y5+oCUsJgnzcw==";
      };
    }
    {
      name = "https___registry.npmjs.org_svelte_hmr___svelte_hmr_0.15.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_svelte_hmr___svelte_hmr_0.15.3.tgz";
        url  = "https://registry.npmjs.org/svelte-hmr/-/svelte-hmr-0.15.3.tgz";
        sha512 = "41snaPswvSf8TJUhlkoJBekRrABDXDMdpNpT2tfHIv4JuhgvHqLMhEPGtaQn0BmbNSTkuz2Ed20DF2eHw0SmBQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_svelte_preprocess___svelte_preprocess_5.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_svelte_preprocess___svelte_preprocess_5.1.0.tgz";
        url  = "https://registry.npmjs.org/svelte-preprocess/-/svelte-preprocess-5.1.0.tgz";
        sha512 = "EkErPiDzHAc0k2MF5m6vBNmRUh338h2myhinUw/xaqsLs7/ZvsgREiLGj03VrSzbY/TB5ZXgBOsKraFee5yceA==";
      };
    }
    {
      name = "https___registry.npmjs.org_svelte___svelte_4.2.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_svelte___svelte_4.2.3.tgz";
        url  = "https://registry.npmjs.org/svelte/-/svelte-4.2.3.tgz";
        sha512 = "sqmG9KC6uUc7fb3ZuWoxXvqk6MI9Uu4ABA1M0fYDgTlFYu1k02xp96u6U9+yJZiVm84m9zge7rrA/BNZdFpOKw==";
      };
    }
    {
      name = "https___registry.npmjs.org_tiny_glob___tiny_glob_0.2.9.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_tiny_glob___tiny_glob_0.2.9.tgz";
        url  = "https://registry.npmjs.org/tiny-glob/-/tiny-glob-0.2.9.tgz";
        sha512 = "g/55ssRPUjShh+xkfx9UPDXqhckHEsHr4Vd9zX55oSdGZc/MD0m3sferOkwWtp98bv+kcVfEHtRJgBVJzelrzg==";
      };
    }
    {
      name = "https___registry.npmjs.org_to_regex_range___to_regex_range_5.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_to_regex_range___to_regex_range_5.0.1.tgz";
        url  = "https://registry.npmjs.org/to-regex-range/-/to-regex-range-5.0.1.tgz";
        sha512 = "65P7iz6X5yEr1cwcgvQxbbIw7Uk3gOy5dIdtZ4rDveLqhrdJP+Li/Hx6tyK0NEb+2GCyneCMJiGqrADCSNk8sQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_totalist___totalist_3.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_totalist___totalist_3.0.1.tgz";
        url  = "https://registry.npmjs.org/totalist/-/totalist-3.0.1.tgz";
        sha512 = "sf4i37nQ2LBx4m3wB74y+ubopq6W/dIzXg0FDGjsYnZHVa1Da8FH853wlL2gtUhg+xJXjfk3kUZS3BRoQeoQBQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_tslib___tslib_2.6.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_tslib___tslib_2.6.2.tgz";
        url  = "https://registry.npmjs.org/tslib/-/tslib-2.6.2.tgz";
        sha512 = "AEYxH93jGFPn/a2iVAwW87VuUIkR1FVUKB77NwMF7nBTDkDrrT/Hpt/IrCJ0QXhW27jTBDcf5ZY7w6RiqTMw2Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_typescript___typescript_5.2.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_typescript___typescript_5.2.2.tgz";
        url  = "https://registry.npmjs.org/typescript/-/typescript-5.2.2.tgz";
        sha512 = "mI4WrpHsbCIcwT9cF4FZvr80QUeKvsUsUvKDoR+X/7XHQH98xYD8YHZg7ANtz2GtZt/CBq2QJ0thkGJMHfqc1w==";
      };
    }
    {
      name = "https___registry.npmjs.org_undici___undici_5.26.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_undici___undici_5.26.5.tgz";
        url  = "https://registry.npmjs.org/undici/-/undici-5.26.5.tgz";
        sha512 = "cSb4bPFd5qgR7qr2jYAi0hlX9n5YKK2ONKkLFkxl+v/9BvC0sOpZjBHDBSXc5lWAf5ty9oZdRXytBIHzgUcerw==";
      };
    }
    {
      name = "https___registry.npmjs.org_vite___vite_4.5.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_vite___vite_4.5.0.tgz";
        url  = "https://registry.npmjs.org/vite/-/vite-4.5.0.tgz";
        sha512 = "ulr8rNLA6rkyFAlVWw2q5YJ91v098AFQ2R0PRFwPzREXOUJQPtFUG0t+/ZikhaOCDqFoDhN6/v8Sq0o4araFAw==";
      };
    }
    {
      name = "https___registry.npmjs.org_vitefu___vitefu_0.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_vitefu___vitefu_0.2.5.tgz";
        url  = "https://registry.npmjs.org/vitefu/-/vitefu-0.2.5.tgz";
        sha512 = "SgHtMLoqaeeGnd2evZ849ZbACbnwQCIwRH57t18FxcXoZop0uQu0uzlIhJBlF/eWVzuce0sHeqPcDo+evVcg8Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_wrappy___wrappy_1.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_wrappy___wrappy_1.0.2.tgz";
        url  = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha512 = "l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
      };
    }
  ];
}
