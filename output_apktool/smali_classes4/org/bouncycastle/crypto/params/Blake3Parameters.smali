.class public Lorg/bouncycastle/crypto/params/Blake3Parameters;
.super Ljava/lang/Object;
.source "Blake3Parameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final KEYLEN:I = 0x20


# instance fields
.field private theContext:[B

.field private theKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static context([B)Lorg/bouncycastle/crypto/params/Blake3Parameters;
    .locals 2
    .param p0, "pContext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pContext"
        }
    .end annotation

    .line 34
    if-eqz p0, :cond_0

    .line 38
    new-instance v0, Lorg/bouncycastle/crypto/params/Blake3Parameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/params/Blake3Parameters;-><init>()V

    .line 39
    .local v0, "myParams":Lorg/bouncycastle/crypto/params/Blake3Parameters;
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/params/Blake3Parameters;->theContext:[B

    .line 40
    return-object v0

    .line 36
    .end local v0    # "myParams":Lorg/bouncycastle/crypto/params/Blake3Parameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static key([B)Lorg/bouncycastle/crypto/params/Blake3Parameters;
    .locals 2
    .param p0, "pKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pKey"
        }
    .end annotation

    .line 50
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 54
    new-instance v0, Lorg/bouncycastle/crypto/params/Blake3Parameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/params/Blake3Parameters;-><init>()V

    .line 55
    .local v0, "myParams":Lorg/bouncycastle/crypto/params/Blake3Parameters;
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/params/Blake3Parameters;->theKey:[B

    .line 56
    return-object v0

    .line 52
    .end local v0    # "myParams":Lorg/bouncycastle/crypto/params/Blake3Parameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid keyLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearKey()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Blake3Parameters;->theKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 74
    return-void
.end method

.method public getContext()[B
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Blake3Parameters;->theContext:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Blake3Parameters;->theKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
