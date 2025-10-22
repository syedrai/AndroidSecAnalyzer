.class public abstract Lorg/bouncycastle/util/io/SimpleOutputStream;
.super Ljava/io/OutputStream;
.source "SimpleOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 10
    return-void
.end method

.method public flush()V
    .locals 0

    .line 14
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    int-to-byte v0, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 19
    .local v2, "buf":[B
    invoke-virtual {p0, v2, v3, v1}, Lorg/bouncycastle/util/io/SimpleOutputStream;->write([BII)V

    .line 20
    return-void
.end method
