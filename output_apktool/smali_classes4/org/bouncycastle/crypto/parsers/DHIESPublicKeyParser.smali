.class public Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;
.super Ljava/lang/Object;
.source "DHIESPublicKeyParser.java"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyParser;


# instance fields
.field private dhParams:Lorg/bouncycastle/crypto/params/DHParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 0
    .param p1, "dhParams"    # Lorg/bouncycastle/crypto/params/DHParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dhParams"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    .line 21
    return-void
.end method


# virtual methods
.method public readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 28
    .local v0, "V":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    .line 30
    new-instance v1, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/parsers/DHIESPublicKeyParser;->dhParams:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v1
.end method
