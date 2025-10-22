.class public final Lorg/bouncycastle/cms/InputStreamWithMAC;
.super Ljava/io/InputStream;
.source "InputStreamWithMAC.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private final base:Ljava/io/InputStream;

.field private baseFinished:Z

.field private index:I

.field private mac:[B

.field private macProvider:Lorg/bouncycastle/cms/MACProvider;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/cms/MACProvider;)V
    .locals 1
    .param p1, "base"    # Ljava/io/InputStream;
    .param p2, "macProvider"    # Lorg/bouncycastle/cms/MACProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "macProvider"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    .line 20
    iput-object p2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    .line 23
    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .param p1, "base"    # Ljava/io/InputStream;
    .param p2, "mac"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "mac"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    .line 29
    iput-object p2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    .line 31
    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    .line 32
    return-void
.end method


# virtual methods
.method public getMAC()[B
    .locals 2

    .line 66
    iget-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input stream not fully processed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    if-nez v0, :cond_2

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    .local v0, "ch":I
    if-gez v0, :cond_1

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    .line 45
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v1}, Lorg/bouncycastle/cms/MACProvider;->init()V

    .line 48
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v1}, Lorg/bouncycastle/cms/MACProvider;->getMAC()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    .line 50
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 61
    :cond_1
    return v0

    .line 55
    .end local v0    # "ch":I
    :cond_2
    iget v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 57
    const/4 v0, -0x1

    return v0

    .line 59
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    if-eqz p1, :cond_7

    .line 81
    if-ltz p2, :cond_6

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_6

    .line 86
    iget-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 89
    .local v0, "ch":I
    if-gez v0, :cond_2

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    .line 92
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v1}, Lorg/bouncycastle/cms/MACProvider;->init()V

    .line 95
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v1}, Lorg/bouncycastle/cms/MACProvider;->getMAC()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-lt p3, v1, :cond_1

    .line 99
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget-object v3, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v3, v3

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    return v1

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    .line 107
    return p3

    .line 110
    :cond_2
    return v0

    .line 112
    .end local v0    # "ch":I
    :cond_3
    iget v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_4

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    iget-object v2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    sub-int/2addr v0, v1

    .line 118
    .local v0, "tmp":I
    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    .line 119
    return v0

    .line 123
    .end local v0    # "tmp":I
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    .line 125
    return p3

    .line 128
    :cond_5
    const/4 v0, -0x1

    return v0

    .line 83
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid off("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
