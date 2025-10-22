.class public Lorg/bouncycastle/crypto/MaxBytesExceededException;
.super Lorg/bouncycastle/crypto/RuntimeCryptoException;
.source "MaxBytesExceededException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/crypto/RuntimeCryptoException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
