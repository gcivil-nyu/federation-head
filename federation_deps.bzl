"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    http_archive(
        name = "rules_cc",
        strip_prefix = "rules_cc-master",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_cc/archive/master.zip",
          "https://github.com/bazelbuild/rules_cc/archive/master.zip"
      ],
    )

    http_archive(
        name = "rules_python",
        strip_prefix = "rules_python-master",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_python/archive/master.zip",
          "https://github.com/bazelbuild/rules_python/archive/master.zip"
      ],
    )

# ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/846e5dbedac123d12455adcfe6f53c8b5dcbfeef.zip","https://github.com/abseil/abseil-cpp/archive/846e5dbedac123d12455adcfe6f53c8b5dcbfeef.zip"],  # 2019-10-31T19:15:43Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-846e5dbedac123d12455adcfe6f53c8b5dcbfeef",
      sha256 = "4fd748afbda72289d695a1ed470e0d0ffe3e668696b83c99339421430f08edd6",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/2db3df9c4f825591dfce2d6909cebe4a3f073910.zip","https://github.com/google/googletest/archive/2db3df9c4f825591dfce2d6909cebe4a3f073910.zip"],  # 2019-10-31T19:11:41Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-2db3df9c4f825591dfce2d6909cebe4a3f073910",
      sha256 = "b60502a3c2634a72373b4d480eec4af5a8f7bd5362e20a4a394d670c636fed65",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/cf446a18bf37d5cc9b116f59cf9e6a9be89e58cc.zip","https://github.com/google/benchmark/archive/cf446a18bf37d5cc9b116f59cf9e6a9be89e58cc.zip"],  # 2019-10-24T19:13:03Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "benchmark-cf446a18bf37d5cc9b116f59cf9e6a9be89e58cc",
      sha256 = "ff01751c5dfe310b4f6f77a7ea689fd918b7bd4ac0020ca88e4ce7084657d6a4",
)

    # zlib pinned to 1.2.11
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
