.class public Lorg/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private key:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 15
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "keyOff"    # I
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "keyOff",
            "keyLen"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    return-void
.end method


# virtual methods
.method public copyTo([BII)V
    .locals 2
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

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v0, v0

    if-ne v0, p3, :cond_0

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "len"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v0, v0

    return v0
.end method

.method public reverse()Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 3

    .line 52
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    .line 53
    .local v0, "reversed":Lorg/bouncycastle/crypto/params/KeyParameter;
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/params/KeyParameter;->key:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->reverse([B[B)V

    .line 54
    return-object v0
.end method
