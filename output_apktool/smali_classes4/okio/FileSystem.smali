.class public abstract Lokio/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileSystem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,177:1\n52#2,22:178\n52#2,22:200\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n*L\n67#1:178,22\n81#1:200,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000 72\u00060\u0001j\u0002`\u0002:\u00017B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0007\u001a\u00020\u0006H&J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H&J\u0018\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H&J \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000cH\u0016J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0006H&J$\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000cH&J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0006J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0006H&J:\u0010\u001c\u001a\u0002H\u001d\"\u0004\u0008\u0000\u0010\u001d2\u0006\u0010\u0016\u001a\u00020\u00062\u0017\u0010\u001e\u001a\u0013\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u0002H\u001d0\u001f\u00a2\u0006\u0002\u0008!H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#J\u001a\u0010$\u001a\u00020%2\u0006\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000cH&J\u000e\u0010$\u001a\u00020%2\u0006\u0010\u0016\u001a\u00020\u0006JD\u0010&\u001a\u0002H\u001d\"\u0004\u0008\u0000\u0010\u001d2\u0006\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000c2\u0017\u0010\'\u001a\u0013\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u0002H\u001d0\u001f\u00a2\u0006\u0002\u0008!H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*J\u001a\u0010+\u001a\u00020%2\u0006\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000cH&J\u000e\u0010+\u001a\u00020%2\u0006\u0010\u0016\u001a\u00020\u0006J\u001a\u0010,\u001a\u00020-2\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000cH&J\u000e\u0010,\u001a\u00020-2\u0006\u0010\u000f\u001a\u00020\u0006J\u0018\u0010.\u001a\u00020-2\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000cJ\u000e\u0010.\u001a\u00020-2\u0006\u0010\u000f\u001a\u00020\u0006J\u0018\u0010/\u001a\u00020-2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H&J\u0018\u00101\u001a\u00020-2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0016J\u001a\u00102\u001a\u00020-2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000cH&J\u000e\u00102\u001a\u00020-2\u0006\u0010\u0007\u001a\u00020\u0006J\u001a\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000cH\u0016J\u000e\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020\u0006J\u0018\u00105\u001a\u00020-2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H&J\u0008\u00106\u001a\u00020-H\u0016\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00068"
    }
    d2 = {
        "Lokio/FileSystem;",
        "Ljava/io/Closeable;",
        "Lokio/Closeable;",
        "<init>",
        "()V",
        "canonicalize",
        "Lokio/Path;",
        "path",
        "metadata",
        "Lokio/FileMetadata;",
        "metadataOrNull",
        "exists",
        "",
        "list",
        "",
        "dir",
        "listOrNull",
        "listRecursively",
        "Lkotlin/sequences/Sequence;",
        "followSymlinks",
        "openReadOnly",
        "Lokio/FileHandle;",
        "file",
        "openReadWrite",
        "mustCreate",
        "mustExist",
        "source",
        "Lokio/Source;",
        "read",
        "T",
        "readerAction",
        "Lkotlin/Function1;",
        "Lokio/BufferedSource;",
        "Lkotlin/ExtensionFunctionType;",
        "-read",
        "(Lokio/Path;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "sink",
        "Lokio/Sink;",
        "write",
        "writerAction",
        "Lokio/BufferedSink;",
        "-write",
        "(Lokio/Path;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "appendingSink",
        "createDirectory",
        "",
        "createDirectories",
        "atomicMove",
        "target",
        "copy",
        "delete",
        "deleteRecursively",
        "fileOrDirectory",
        "createSymlink",
        "close",
        "Companion",
        "third_party.java_src.okio_okio-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokio/FileSystem$Companion;

.field public static final RESOURCES:Lokio/FileSystem;

.field public static final SYSTEM:Lokio/FileSystem;

.field public static final SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;


# direct methods
.method public static synthetic -write$default(Lokio/FileSystem;Lokio/Path;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this"    # Lokio/FileSystem;
    .param p1, "file"    # Lokio/Path;
    .param p2, "mustCreate"    # Z
    .param p3, "writerAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    if-nez p5, :cond_4

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 78
    :cond_0
    const-string p4, "file"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "writerAction"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 81
    .local p4, "$i$f$-write":I
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p5

    invoke-static {p5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p5

    check-cast p5, Ljava/io/Closeable;

    .local p5, "$this$use$iv":Ljava/io/Closeable;
    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$use":I
    const/4 v1, 0x0

    .line 202
    .local v1, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 203
    :try_start_0
    move-object v2, p5

    check-cast v2, Lokio/BufferedSink;

    .local v2, "it":Lokio/BufferedSink;
    const/4 v3, 0x0

    .line 82
    .local v3, "$i$a$-use-FileSystem$write$1":I
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    .end local v2    # "it":Lokio/BufferedSink;
    .end local v3    # "$i$a$-use-FileSystem$write$1":I
    nop

    .line 208
    nop

    .line 209
    if-eqz p5, :cond_1

    :try_start_1
    invoke-interface {p5}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v2

    .line 211
    .local v2, "t$iv":Ljava/lang/Throwable;
    nop

    .line 212
    move-object v1, v2

    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    nop

    .line 217
    goto :goto_2

    .line 204
    :catchall_1
    move-exception v2

    .line 205
    .restart local v2    # "t$iv":Ljava/lang/Throwable;
    move-object v1, v2

    .line 206
    nop

    .line 208
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 209
    if-eqz p5, :cond_2

    :try_start_2
    invoke-interface {p5}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 210
    :catchall_2
    move-exception v2

    .line 211
    .restart local v2    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 214
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    nop

    .line 217
    const/4 v4, 0x0

    .line 202
    :goto_2
    nop

    .line 219
    .local v4, "result$iv":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 221
    nop

    .line 81
    .end local v0    # "$i$f$use":I
    .end local v1    # "thrown$iv":Ljava/lang/Throwable;
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local p5    # "$this$use$iv":Ljava/io/Closeable;
    return-object v4

    .line 219
    .restart local v0    # "$i$f$use":I
    .restart local v1    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v4    # "result$iv":Ljava/lang/Object;
    .restart local p5    # "$this$use$iv":Ljava/io/Closeable;
    :cond_3
    throw v1

    .line 78
    .end local v0    # "$i$f$use":I
    .end local v1    # "thrown$iv":Ljava/lang/Throwable;
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local p4    # "$i$f$-write":I
    .end local p5    # "$this$use$iv":Ljava/io/Closeable;
    :cond_4
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string p5, "Super calls with default arguments not supported in this target, function: write"

    invoke-direct {p4, p5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lokio/FileSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/FileSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    .line 138
    sget-object v2, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    .local v2, "$this$SYSTEM_u24lambda_u242":Lokio/FileSystem$Companion;
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$a$-run-FileSystem$Companion$SYSTEM$1":I
    nop

    .line 140
    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 141
    new-instance v0, Lokio/NioSystemFileSystem;

    invoke-direct {v0}, Lokio/NioSystemFileSystem;-><init>()V

    check-cast v0, Lokio/JvmSystemFileSystem;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lokio/JvmSystemFileSystem;

    invoke-direct {v4}, Lokio/JvmSystemFileSystem;-><init>()V

    move-object v0, v4

    .line 138
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "$this$SYSTEM_u24lambda_u242":Lokio/FileSystem$Companion;
    .end local v3    # "$i$a$-run-FileSystem$Companion$SYSTEM$1":I
    :goto_0
    check-cast v0, Lokio/FileSystem;

    sput-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 148
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getProperty(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/FileSystem;->SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;

    .line 161
    new-instance v1, Lokio/internal/ResourceFileSystem;

    .line 162
    const-class v0, Lokio/internal/ResourceFileSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v0, "getClassLoader(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    nop

    .line 161
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lokio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;ZLokio/FileSystem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lokio/FileSystem;

    sput-object v1, Lokio/FileSystem;->RESOURCES:Lokio/FileSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic appendingSink$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: appendingSink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createDirectories$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 98
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createDirectories"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createDirectory$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createDirectory"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic delete$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic deleteRecursively$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->deleteRecursively(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: deleteRecursively"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final get(Lj$/nio/file/FileSystem;)Lokio/FileSystem;
    .locals 1
    .param p0, "$this$get"    # Lj$/nio/file/FileSystem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$get"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    invoke-virtual {v0, p0}, Lokio/FileSystem$Companion;->get(Lj$/nio/file/FileSystem;)Lokio/FileSystem;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method public static synthetic listRecursively$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 0

    .line 46
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: listRecursively"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic openReadWrite$default(Lokio/FileSystem;Lokio/Path;ZZILjava/lang/Object;)Lokio/FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 54
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 177
    const/4 p3, 0x0

    .line 54
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openReadWrite"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic sink$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 177
    const/4 p2, 0x0

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final -read(Lokio/Path;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .param p1, "file"    # Lokio/Path;
    .param p2, "readerAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "readerAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Path;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/BufferedSource;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    .local v0, "$i$f$-read":I
    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .local v1, "$this$use$iv":Ljava/io/Closeable;
    const/4 v2, 0x0

    .line 178
    .local v2, "$i$f$use":I
    const/4 v3, 0x0

    .line 180
    .local v3, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 181
    :try_start_0
    move-object v4, v1

    check-cast v4, Lokio/BufferedSource;

    .local v4, "it":Lokio/BufferedSource;
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-use-FileSystem$read$1":I
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    .end local v4    # "it":Lokio/BufferedSource;
    .end local v5    # "$i$a$-use-FileSystem$read$1":I
    nop

    .line 186
    nop

    .line 187
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v4

    .line 189
    .local v4, "t$iv":Ljava/lang/Throwable;
    nop

    .line 190
    move-object v3, v4

    .end local v4    # "t$iv":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    nop

    .line 195
    goto :goto_2

    .line 182
    :catchall_1
    move-exception v4

    .line 183
    .restart local v4    # "t$iv":Ljava/lang/Throwable;
    move-object v3, v4

    .line 184
    nop

    .line 186
    .end local v4    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 187
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 188
    :catchall_2
    move-exception v4

    .line 189
    .restart local v4    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 192
    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v4    # "t$iv":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .line 195
    const/4 v6, 0x0

    .line 180
    :goto_2
    nop

    .line 197
    .local v6, "result$iv":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 199
    nop

    .line 67
    .end local v1    # "$this$use$iv":Ljava/io/Closeable;
    .end local v2    # "$i$f$use":I
    .end local v3    # "thrown$iv":Ljava/lang/Throwable;
    .end local v6    # "result$iv":Ljava/lang/Object;
    return-object v6

    .line 197
    .restart local v1    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v2    # "$i$f$use":I
    .restart local v3    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v6    # "result$iv":Ljava/lang/Object;
    :cond_2
    throw v3
.end method

.method public final -write(Lokio/Path;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .param p1, "file"    # Lokio/Path;
    .param p2, "mustCreate"    # Z
    .param p3, "writerAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "mustCreate",
            "writerAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Path;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/BufferedSink;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writerAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    .local v0, "$i$f$-write":I
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .local v1, "$this$use$iv":Ljava/io/Closeable;
    const/4 v2, 0x0

    .line 200
    .local v2, "$i$f$use":I
    const/4 v3, 0x0

    .line 202
    .local v3, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 203
    :try_start_0
    move-object v4, v1

    check-cast v4, Lokio/BufferedSink;

    .local v4, "it":Lokio/BufferedSink;
    const/4 v5, 0x0

    .line 82
    .local v5, "$i$a$-use-FileSystem$write$1":I
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    .end local v4    # "it":Lokio/BufferedSink;
    .end local v5    # "$i$a$-use-FileSystem$write$1":I
    nop

    .line 208
    nop

    .line 209
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v4

    .line 211
    .local v4, "t$iv":Ljava/lang/Throwable;
    nop

    .line 212
    move-object v3, v4

    .end local v4    # "t$iv":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    nop

    .line 217
    goto :goto_2

    .line 204
    :catchall_1
    move-exception v4

    .line 205
    .restart local v4    # "t$iv":Ljava/lang/Throwable;
    move-object v3, v4

    .line 206
    nop

    .line 208
    .end local v4    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 209
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 210
    :catchall_2
    move-exception v4

    .line 211
    .restart local v4    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 214
    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v4    # "t$iv":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .line 217
    const/4 v6, 0x0

    .line 202
    :goto_2
    nop

    .line 219
    .local v6, "result$iv":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 221
    nop

    .line 81
    .end local v1    # "$this$use$iv":Ljava/io/Closeable;
    .end local v2    # "$i$f$use":I
    .end local v3    # "thrown$iv":Ljava/lang/Throwable;
    .end local v6    # "result$iv":Ljava/lang/Object;
    return-object v6

    .line 219
    .restart local v1    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v2    # "$i$f$use":I
    .restart local v3    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v6    # "result$iv":Ljava/lang/Object;
    :cond_2
    throw v3
.end method

.method public final appendingSink(Lokio/Path;)Lokio/Sink;
    .locals 1
    .param p1, "file"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public abstract appendingSink(Lokio/Path;Z)Lokio/Sink;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "mustExist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract atomicMove(Lokio/Path;Lokio/Path;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract canonicalize(Lokio/Path;)Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public copy(Lokio/Path;Lokio/Path;)V
    .locals 1
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonCopy(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public final createDirectories(Lokio/Path;)V
    .locals 1
    .param p1, "dir"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    return-void
.end method

.method public final createDirectories(Lokio/Path;Z)V
    .locals 1
    .param p1, "dir"    # Lokio/Path;
    .param p2, "mustCreate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "mustCreate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonCreateDirectories(Lokio/FileSystem;Lokio/Path;Z)V

    return-void
.end method

.method public final createDirectory(Lokio/Path;)V
    .locals 1
    .param p1, "dir"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void
.end method

.method public abstract createDirectory(Lokio/Path;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "mustCreate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSymlink(Lokio/Path;Lokio/Path;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final delete(Lokio/Path;)V
    .locals 1
    .param p1, "path"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void
.end method

.method public abstract delete(Lokio/Path;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "mustExist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final deleteRecursively(Lokio/Path;)V
    .locals 1
    .param p1, "fileOrDirectory"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileOrDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->deleteRecursively(Lokio/Path;Z)V

    return-void
.end method

.method public deleteRecursively(Lokio/Path;Z)V
    .locals 1
    .param p1, "fileOrDirectory"    # Lokio/Path;
    .param p2, "mustExist"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileOrDirectory",
            "mustExist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V

    return-void
.end method

.method public final exists(Lokio/Path;)Z
    .locals 1
    .param p1, "path"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p0, p1}, Lokio/internal/-FileSystem;->commonExists(Lokio/FileSystem;Lokio/Path;)Z

    move-result v0

    return v0
.end method

.method public abstract list(Lokio/Path;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract listOrNull(Lokio/Path;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation
.end method

.method public final listRecursively(Lokio/Path;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p1, "dir"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;
    .locals 1
    .param p1, "dir"    # Lokio/Path;
    .param p2, "followSymlinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "followSymlinks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Lkotlin/sequences/Sequence<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final metadata(Lokio/Path;)Lokio/FileMetadata;
    .locals 1
    .param p1, "path"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p0, p1}, Lokio/internal/-FileSystem;->commonMetadata(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public abstract metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final openReadWrite(Lokio/Path;)Lokio/FileHandle;
    .locals 1
    .param p1, "file"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public abstract openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "mustCreate",
            "mustExist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final sink(Lokio/Path;)Lokio/Sink;
    .locals 1
    .param p1, "file"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public abstract sink(Lokio/Path;Z)Lokio/Sink;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "mustCreate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract source(Lokio/Path;)Lokio/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
