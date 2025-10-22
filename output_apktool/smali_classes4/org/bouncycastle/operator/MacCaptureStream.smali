.class public Lorg/bouncycastle/operator/MacCaptureStream;
.super Ljava/io/OutputStream;
.source "MacCaptureStream.java"


# instance fields
.field private final cOut:Ljava/io/OutputStream;

.field private final mac:[B

.field macIndex:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "cOut"    # Ljava/io/OutputStream;
    .param p2, "macLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cOut",
            "macLength"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    .line 25
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    .line 26
    return-void
.end method


# virtual methods
.method public getMac()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 6
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

    .line 50
    iget v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 53
    .local v0, "b1":B
    iget-object v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v3, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v4, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v2, v2

    sub-int/2addr v2, v5

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 55
    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 56
    .end local v0    # "b1":B
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 61
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v0, v0

    if-lt p3, v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    .line 35
    add-int v0, p2, p3

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    sub-int v1, p3, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p3, :cond_1

    .line 42
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/operator/MacCaptureStream;->write(I)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method
