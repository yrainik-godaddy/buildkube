# Do not edit. bazel-deps autogenerates this file from ../../stackb/buildkube/dependencies.yaml.

def declare_maven(hash):
    native.maven_jar(
        name = hash["name"],
        artifact = hash["artifact"],
        sha1 = hash["sha1"],
        repository = hash["repository"]
    )
    native.bind(
        name = hash["bind"],
        actual = hash["actual"]
    )

def list_dependencies():
    return [
    {"artifact": "com.github.jponge:lzma-java:1.3", "lang": "java", "sha1": "a25db9d4d385ccda4825ae1b47a7a61d86e595af", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_github_jponge_lzma_java", "actual": "@com_github_jponge_lzma_java//jar", "bind": "jar/com/github/jponge/lzma_java"},
    {"artifact": "com.github.pcj:google-options:1.0.0", "lang": "java", "sha1": "85d54fe6771e5ff0d54827b0a3315c3e12fdd0c7", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_github_pcj_google_options", "actual": "@com_github_pcj_google_options//jar", "bind": "jar/com/github/pcj/google_options"},
    {"artifact": "com.google.api.grpc:proto-google-common-protos:0.1.9", "lang": "java", "sha1": "3760f6a6e13c8ab070aa629876cdd183614ee877", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_api_grpc_proto_google_common_protos", "actual": "@com_google_api_grpc_proto_google_common_protos//jar", "bind": "jar/com/google/api/grpc/proto_google_common_protos"},
    {"artifact": "com.google.auth:google-auth-library-credentials:0.4.0", "lang": "java", "sha1": "171da91494a1391aef13b88bd7302b29edb8d3b3", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_auth_google_auth_library_credentials", "actual": "@com_google_auth_google_auth_library_credentials//jar", "bind": "jar/com/google/auth/google_auth_library_credentials"},
# duplicates in com.google.code.findbugs:jsr305 promoted to 3.0.1
# - com.github.pcj:google-options:1.0.0 wanted version 3.0.1
# - com.google.guava:guava:23.5-jre wanted version 1.3.9
# - io.grpc:grpc-core:1.8.0 wanted version 3.0.0
    {"artifact": "com.google.code.findbugs:jsr305:3.0.1", "lang": "java", "sha1": "f7be08ec23c21485b9b5a1cf1654c2ec8c58168d", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_code_findbugs_jsr305", "actual": "@com_google_code_findbugs_jsr305//jar", "bind": "jar/com/google/code/findbugs/jsr305"},
    {"artifact": "com.google.code.gson:gson:2.7", "lang": "java", "sha1": "751f548c85fa49f330cecbb1875893f971b33c4e", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_code_gson_gson", "actual": "@com_google_code_gson_gson//jar", "bind": "jar/com/google/code/gson/gson"},
# duplicates in com.google.errorprone:error_prone_annotations promoted to 2.0.19
# - com.google.guava:guava:23.5-jre wanted version 2.0.18
# - com.google.truth:truth:0.36 wanted version 2.0.19
# - io.grpc:grpc-core:1.8.0 wanted version 2.0.19
    {"artifact": "com.google.errorprone:error_prone_annotations:2.0.19", "lang": "java", "sha1": "c3754a0bdd545b00ddc26884f9e7624f8b6a14de", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_errorprone_error_prone_annotations", "actual": "@com_google_errorprone_error_prone_annotations//jar", "bind": "jar/com/google/errorprone/error_prone_annotations"},
# duplicates in com.google.guava:guava fixed to 23.5-jre
# - com.github.pcj:google-options:1.0.0 wanted version 19.0
# - com.google.jimfs:jimfs:1.1 wanted version 18.0
# - com.google.protobuf:protobuf-java-util:3.5.0 wanted version 19.0
# - com.google.truth:truth:0.36 wanted version 22.0-android
# - io.grpc:grpc-core:1.8.0 wanted version 19.0
    {"artifact": "com.google.guava:guava:23.5-jre", "lang": "java", "sha1": "e9ce4989adf6092a3dab6152860e93d989e8cf88", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_guava_guava", "actual": "@com_google_guava_guava//jar", "bind": "jar/com/google/guava/guava"},
    {"artifact": "com.google.instrumentation:instrumentation-api:0.4.3", "lang": "java", "sha1": "41614af3429573dc02645d541638929d877945a2", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_instrumentation_instrumentation_api", "actual": "@com_google_instrumentation_instrumentation_api//jar", "bind": "jar/com/google/instrumentation/instrumentation_api"},
    {"artifact": "com.google.j2objc:j2objc-annotations:1.1", "lang": "java", "sha1": "ed28ded51a8b1c6b112568def5f4b455e6809019", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_j2objc_j2objc_annotations", "actual": "@com_google_j2objc_j2objc_annotations//jar", "bind": "jar/com/google/j2objc/j2objc_annotations"},
    {"artifact": "com.google.jimfs:jimfs:1.1", "lang": "java", "sha1": "8fbd0579dc68aba6186935cc1bee21d2f3e7ec1c", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_jimfs_jimfs", "actual": "@com_google_jimfs_jimfs//jar", "bind": "jar/com/google/jimfs/jimfs"},
    {"artifact": "com.google.protobuf.nano:protobuf-javanano:3.0.0-alpha-5", "lang": "java", "sha1": "357e60f95cebb87c72151e49ba1f570d899734f8", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_protobuf_nano_protobuf_javanano", "actual": "@com_google_protobuf_nano_protobuf_javanano//jar", "bind": "jar/com/google/protobuf/nano/protobuf_javanano"},
    {"artifact": "com.google.protobuf:protobuf-java-util:3.5.0", "lang": "java", "sha1": "0b332ab1a40876d1ee062ea96256b77d248c9fb4", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_protobuf_protobuf_java_util", "actual": "@com_google_protobuf_protobuf_java_util//jar", "bind": "jar/com/google/protobuf/protobuf_java_util"},
# duplicates in com.google.protobuf:protobuf-java fixed to 3.5.0
# - com.google.protobuf:protobuf-java-util:3.5.0 wanted version 3.5.0
# - io.grpc:grpc-protobuf:1.8.0 wanted version 3.4.0
# - io.netty:netty-codec:4.1.17.Final wanted version 2.6.1
    {"artifact": "com.google.protobuf:protobuf-java:3.5.0", "lang": "java", "sha1": "200fb936907fbab5e521d148026f6033d4aa539e", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_protobuf_protobuf_java", "actual": "@com_google_protobuf_protobuf_java//jar", "bind": "jar/com/google/protobuf/protobuf_java"},
    {"artifact": "com.google.truth:truth:0.36", "lang": "java", "sha1": "7485219d2c1d341097a19382c02bde07e69ff5d2", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_google_truth_truth", "actual": "@com_google_truth_truth//jar", "bind": "jar/com/google/truth/truth"},
    {"artifact": "com.jcraft:jzlib:1.1.3", "lang": "java", "sha1": "c01428efa717624f7aabf4df319939dda9646b2d", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_jcraft_jzlib", "actual": "@com_jcraft_jzlib//jar", "bind": "jar/com/jcraft/jzlib"},
    {"artifact": "com.ning:compress-lzf:1.0.3", "lang": "java", "sha1": "3e1495b0c532ebe58f1c8b1c5d9b3bdcc6c1504c", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_ning_compress_lzf", "actual": "@com_ning_compress_lzf//jar", "bind": "jar/com/ning/compress_lzf"},
    {"artifact": "com.squareup.okhttp:okhttp:2.5.0", "lang": "java", "sha1": "4de2b4ed3445c37ec1720a7d214712e845a24636", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_squareup_okhttp_okhttp", "actual": "@com_squareup_okhttp_okhttp//jar", "bind": "jar/com/squareup/okhttp/okhttp"},
    {"artifact": "com.squareup.okio:okio:1.6.0", "lang": "java", "sha1": "98476622f10715998eacf9240d6b479f12c66143", "repository": "https://repo.maven.apache.org/maven2/", "name": "com_squareup_okio_okio", "actual": "@com_squareup_okio_okio//jar", "bind": "jar/com/squareup/okio/okio"},
    {"artifact": "commons-logging:commons-logging:1.2", "lang": "java", "sha1": "4bfc12adfe4842bf07b657f0369c4cb522955686", "repository": "https://repo.maven.apache.org/maven2/", "name": "commons_logging_commons_logging", "actual": "@commons_logging_commons_logging//jar", "bind": "jar/commons_logging/commons_logging"},
    {"artifact": "io.grpc:grpc-all:1.8.0", "lang": "java", "sha1": "088fdbdc68a3bcd06d47a77ecb9a771c22ba1de3", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_all", "actual": "@io_grpc_grpc_all//jar", "bind": "jar/io/grpc/grpc_all"},
    {"artifact": "io.grpc:grpc-auth:1.8.0", "lang": "java", "sha1": "5ae916c5000fed6eaa87faa6a1a684b2634b8600", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_auth", "actual": "@io_grpc_grpc_auth//jar", "bind": "jar/io/grpc/grpc_auth"},
    {"artifact": "io.grpc:grpc-context:1.8.0", "lang": "java", "sha1": "7fe8214b8d1141afadbe0bcad751df2b8fe2e078", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_context", "actual": "@io_grpc_grpc_context//jar", "bind": "jar/io/grpc/grpc_context"},
    {"artifact": "io.grpc:grpc-core:1.8.0", "lang": "java", "sha1": "2e9753ad0cd44942937bd5c260a0f1e80ce7a463", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_core", "actual": "@io_grpc_grpc_core//jar", "bind": "jar/io/grpc/grpc_core"},
    {"artifact": "io.grpc:grpc-netty:1.8.0", "lang": "java", "sha1": "085334a9da3902c15d87e8d879c147f9ee424145", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_netty", "actual": "@io_grpc_grpc_netty//jar", "bind": "jar/io/grpc/grpc_netty"},
    {"artifact": "io.grpc:grpc-okhttp:1.8.0", "lang": "java", "sha1": "eb42f934d9682164ab7295135149d4001fc97372", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_okhttp", "actual": "@io_grpc_grpc_okhttp//jar", "bind": "jar/io/grpc/grpc_okhttp"},
    {"artifact": "io.grpc:grpc-protobuf-lite:1.8.0", "lang": "java", "sha1": "3c40cd351e4206fad95f8dd612e0b94be4d1d1dd", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_protobuf_lite", "actual": "@io_grpc_grpc_protobuf_lite//jar", "bind": "jar/io/grpc/grpc_protobuf_lite"},
    {"artifact": "io.grpc:grpc-protobuf-nano:1.8.0", "lang": "java", "sha1": "dc6738dffa4c806e35d98a806d1fc8629794a0f2", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_protobuf_nano", "actual": "@io_grpc_grpc_protobuf_nano//jar", "bind": "jar/io/grpc/grpc_protobuf_nano"},
    {"artifact": "io.grpc:grpc-protobuf:1.8.0", "lang": "java", "sha1": "749848c287ef01b110a8fe464965e5cff730a7ac", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_protobuf", "actual": "@io_grpc_grpc_protobuf//jar", "bind": "jar/io/grpc/grpc_protobuf"},
    {"artifact": "io.grpc:grpc-stub:1.8.0", "lang": "java", "sha1": "a9a213b2b23f0015d6820f715b51c4bdf9f45939", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_grpc_grpc_stub", "actual": "@io_grpc_grpc_stub//jar", "bind": "jar/io/grpc/grpc_stub"},
    {"artifact": "io.netty:netty-buffer:4.1.17.Final", "lang": "java", "sha1": "fdd68fb3defd7059a7392b9395ee941ef9bacc25", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_buffer", "actual": "@io_netty_netty_buffer//jar", "bind": "jar/io/netty/netty_buffer"},
    {"artifact": "io.netty:netty-codec-http2:4.1.17.Final", "lang": "java", "sha1": "f9844005869c6d9049f4b677228a89fee4c6eab3", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_codec_http2", "actual": "@io_netty_netty_codec_http2//jar", "bind": "jar/io/netty/netty_codec_http2"},
    {"artifact": "io.netty:netty-codec-http:4.1.17.Final", "lang": "java", "sha1": "251d7edcb897122b9b23f24ff793cd0739056b9e", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_codec_http", "actual": "@io_netty_netty_codec_http//jar", "bind": "jar/io/netty/netty_codec_http"},
    {"artifact": "io.netty:netty-codec-socks:4.1.17.Final", "lang": "java", "sha1": "a159bf1f3d5019e0d561c92fbbec8400967471fa", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_codec_socks", "actual": "@io_netty_netty_codec_socks//jar", "bind": "jar/io/netty/netty_codec_socks"},
    {"artifact": "io.netty:netty-codec:4.1.17.Final", "lang": "java", "sha1": "1d00f56dc9e55203a4bde5aae3d0828fdeb818e7", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_codec", "actual": "@io_netty_netty_codec//jar", "bind": "jar/io/netty/netty_codec"},
    {"artifact": "io.netty:netty-common:4.1.17.Final", "lang": "java", "sha1": "581c8ee239e4dc0976c2405d155f475538325098", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_common", "actual": "@io_netty_netty_common//jar", "bind": "jar/io/netty/netty_common"},
    {"artifact": "io.netty:netty-handler-proxy:4.1.17.Final", "lang": "java", "sha1": "9330ee60c4e48ca60aac89b7bc5ec2567e84f28e", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_handler_proxy", "actual": "@io_netty_netty_handler_proxy//jar", "bind": "jar/io/netty/netty_handler_proxy"},
    {"artifact": "io.netty:netty-handler:4.1.17.Final", "lang": "java", "sha1": "18c40ffb61a1d1979eca024087070762fdc4664a", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_handler", "actual": "@io_netty_netty_handler//jar", "bind": "jar/io/netty/netty_handler"},
    {"artifact": "io.netty:netty-resolver:4.1.17.Final", "lang": "java", "sha1": "8f386c80821e200f542da282ae1d3cde5cad8368", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_resolver", "actual": "@io_netty_netty_resolver//jar", "bind": "jar/io/netty/netty_resolver"},
    {"artifact": "io.netty:netty-transport:4.1.17.Final", "lang": "java", "sha1": "9585776b0a8153182412b5d5366061ff486914c1", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_netty_netty_transport", "actual": "@io_netty_netty_transport//jar", "bind": "jar/io/netty/netty_transport"},
    {"artifact": "io.opencensus:opencensus-api:0.8.0", "lang": "java", "sha1": "f921cd399ff9a3084370969dca74ccea510ff91f", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_opencensus_opencensus_api", "actual": "@io_opencensus_opencensus_api//jar", "bind": "jar/io/opencensus/opencensus_api"},
    {"artifact": "io.opencensus:opencensus-contrib-grpc-metrics:0.8.0", "lang": "java", "sha1": "5e54d0e6dd946fe097e63ad68243e0006fbb1fbc", "repository": "https://repo.maven.apache.org/maven2/", "name": "io_opencensus_opencensus_contrib_grpc_metrics", "actual": "@io_opencensus_opencensus_contrib_grpc_metrics//jar", "bind": "jar/io/opencensus/opencensus_contrib_grpc_metrics"},
    {"artifact": "junit:junit:4.12", "lang": "java", "sha1": "2973d150c0dc1fefe998f834810d68f278ea58ec", "repository": "https://repo.maven.apache.org/maven2/", "name": "junit_junit", "actual": "@junit_junit//jar", "bind": "jar/junit/junit"},
    {"artifact": "net.bytebuddy:byte-buddy-agent:1.7.9", "lang": "java", "sha1": "a6c65f9da7f467ee1f02ff2841ffd3155aee2fc9", "repository": "https://repo.maven.apache.org/maven2/", "name": "net_bytebuddy_byte_buddy_agent", "actual": "@net_bytebuddy_byte_buddy_agent//jar", "bind": "jar/net/bytebuddy/byte_buddy_agent"},
    {"artifact": "net.bytebuddy:byte-buddy:1.7.9", "lang": "java", "sha1": "51218a01a882c04d0aba8c028179cce488bbcb58", "repository": "https://repo.maven.apache.org/maven2/", "name": "net_bytebuddy_byte_buddy", "actual": "@net_bytebuddy_byte_buddy//jar", "bind": "jar/net/bytebuddy/byte_buddy"},
    {"artifact": "net.jpountz.lz4:lz4:1.3.0", "lang": "java", "sha1": "c708bb2590c0652a642236ef45d9f99ff842a2ce", "repository": "https://repo.maven.apache.org/maven2/", "name": "net_jpountz_lz4_lz4", "actual": "@net_jpountz_lz4_lz4//jar", "bind": "jar/net/jpountz/lz4/lz4"},
    {"artifact": "org.apache.logging.log4j:log4j-api:2.6.2", "lang": "java", "sha1": "bd1b74a5d170686362091c7cf596bbc3adf5c09b", "repository": "https://repo.maven.apache.org/maven2/", "name": "org_apache_logging_log4j_log4j_api", "actual": "@org_apache_logging_log4j_log4j_api//jar", "bind": "jar/org/apache/logging/log4j/log4j_api"},
    {"artifact": "org.checkerframework:checker-qual:2.0.0", "lang": "java", "sha1": "518929596ee3249127502a8573b2e008e2d51ed3", "repository": "https://repo.maven.apache.org/maven2/", "name": "org_checkerframework_checker_qual", "actual": "@org_checkerframework_checker_qual//jar", "bind": "jar/org/checkerframework/checker_qual"},
    {"artifact": "org.codehaus.mojo:animal-sniffer-annotations:1.14", "lang": "java", "sha1": "775b7e22fb10026eed3f86e8dc556dfafe35f2d5", "repository": "https://repo.maven.apache.org/maven2/", "name": "org_codehaus_mojo_animal_sniffer_annotations", "actual": "@org_codehaus_mojo_animal_sniffer_annotations//jar", "bind": "jar/org/codehaus/mojo/animal_sniffer_annotations"},
    {"artifact": "org.hamcrest:hamcrest-core:1.3", "lang": "java", "sha1": "42a25dc3219429f0e5d060061f71acb49bf010a0", "repository": "https://repo.maven.apache.org/maven2/", "name": "org_hamcrest_hamcrest_core", "actual": "@org_hamcrest_hamcrest_core//jar", "bind": "jar/org/hamcrest/hamcrest_core"},
    {"artifact": "org.mockito:mockito-core:2.15.0", "lang": "java", "sha1": "b84bfbbc29cd22c9529409627af6ea2897f4fa85", "repository": "https://repo.maven.apache.org/maven2/", "name": "org_mockito_mockito_core", "actual": "@org_mockito_mockito_core//jar", "bind": "jar/org/mockito/mockito_core"},
    {"artifact": "org.objenesis:objenesis:2.6", "lang": "java", "sha1": "639033469776fd37c08358c6b92a4761feb2af4b", "repository": "https://repo.maven.apache.org/maven2/", "name": "org_objenesis_objenesis", "actual": "@org_objenesis_objenesis//jar", "bind": "jar/org/objenesis/objenesis"},
    {"artifact": "org.slf4j:slf4j-api:1.7.21", "lang": "java", "sha1": "139535a69a4239db087de9bab0bee568bf8e0b70", "repository": "https://repo.maven.apache.org/maven2/", "name": "org_slf4j_slf4j_api", "actual": "@org_slf4j_slf4j_api//jar", "bind": "jar/org/slf4j/slf4j_api"},
    ]

def maven_dependencies(callback = declare_maven):
    for hash in list_dependencies():
        callback(hash)
