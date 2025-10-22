.class public final Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "X448PrivateKeyParameters.java"


# static fields
.field public static final KEY_SIZE:I = 0x38

.field public static final SECRET_SIZE:I = 0x38


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    const/16 v0, 0x38

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    .line 43
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    invoke-static {p1, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 47
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of X448 private key"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    const/16 v0, 0x38

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448;->generatePrivateKey(Ljava/security/SecureRandom;[B)V

    .line 25
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->validate([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([BI)V

    .line 30
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "off"
        }
    .end annotation

    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    const/16 v0, 0x38

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    .line 36
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    return-void
.end method

.method private static validate([B)[B
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 78
    array-length v0, p0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 82
    return-object p0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'buf\' must have length 56"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode([BI)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "off"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x38

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    return-void
.end method

.method public generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;
    .locals 3

    .line 61
    const/16 v0, 0x38

    new-array v0, v0, [B

    .line 62
    .local v0, "publicKey":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448;->generatePublicKey([BI[BI)V

    .line 63
    new-instance v1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([BI)V

    return-object v1
.end method

.method public generateSecret(Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;[BI)V
    .locals 7
    .param p1, "publicKey"    # Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "buf",
            "off"
        }
    .end annotation

    .line 68
    const/16 v0, 0x38

    new-array v3, v0, [B

    .line 69
    .local v3, "encoded":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;->encode([BI)V

    .line 70
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    move v6, p3

    .end local p2    # "buf":[B
    .end local p3    # "off":I
    .local v5, "buf":[B
    .local v6, "off":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/rfc7748/X448;->calculateAgreement([BI[BI[BI)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    return-void

    .line 72
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "X448 agreement failed"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getEncoded()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
