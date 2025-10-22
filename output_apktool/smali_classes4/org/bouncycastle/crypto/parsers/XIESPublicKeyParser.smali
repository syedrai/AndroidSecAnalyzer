.class public Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;
.super Ljava/lang/Object;
.source "XIESPublicKeyParser.java"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyParser;


# instance fields
.field private final isX25519:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isX25519"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isX25519"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;->isX25519:Z

    .line 20
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

    .line 25
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;->isX25519:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    .line 26
    .local v0, "size":I
    :goto_0
    new-array v1, v0, [B

    .line 28
    .local v1, "V":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    .line 31
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;->isX25519:Z

    if-eqz v2, :cond_1

    new-instance v2, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([BI)V

    :goto_1
    return-object v2
.end method
