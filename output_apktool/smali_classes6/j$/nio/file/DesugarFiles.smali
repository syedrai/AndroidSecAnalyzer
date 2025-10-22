.class public final Lj$/nio/file/DesugarFiles;
.super Ljava/lang/Object;
.source "DesugarFiles.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readString(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Lj$/nio/file/DesugarFiles;->readString(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p0}, Lj$/nio/file/Files;->readAllBytes(Lj$/nio/file/Path;)[B

    move-result-object v0

    .line 169
    .local v0, "ba":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static varargs writeString(Lj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 273
    .local v0, "bytes":[B
    invoke-static {p0, v0, p3}, Lj$/nio/file/Files;->write(Lj$/nio/file/Path;[B[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;

    .line 275
    return-object p0
.end method

.method public static varargs writeString(Lj$/nio/file/Path;Ljava/lang/CharSequence;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, p1, v0, p2}, Lj$/nio/file/DesugarFiles;->writeString(Lj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
