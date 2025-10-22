.class Lorg/bouncycastle/pqc/crypto/newhope/ChaCha20;
.super Ljava/lang/Object;
.source "ChaCha20.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static process([B[B[BII)V
    .locals 8
    .param p0, "key"    # [B
    .param p1, "nonce"    # [B
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "nonce",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    move-object v2, v0

    .line 12
    .local v2, "e":Lorg/bouncycastle/crypto/engines/ChaChaEngine;
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 13
    move-object v6, p2

    move v7, p3

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "buf":[B
    .end local p3    # "off":I
    .end local p4    # "len":I
    .local v3, "buf":[B
    .local v4, "off":I
    .local v5, "len":I
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->processBytes([BII[BI)I

    .line 14
    return-void
.end method
