.class public Lorg/bouncycastle/util/io/LimitedBuffer;
.super Ljava/io/OutputStream;
.source "LimitedBuffer.java"


# instance fields
.field private final buf:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 12
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->buf:[B

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    .line 14
    return-void
.end method


# virtual methods
.method public copyTo([BI)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "off"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    return v0
.end method

.method public limit()I
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->buf:[B

    array-length v0, v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    .line 30
    return-void
.end method

.method public size()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    return v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 40
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    .line 46
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->buf:[B

    iget v1, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/util/io/LimitedBuffer;->count:I

    .line 52
    return-void
.end method
