.class Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;
.super Ljava/lang/Object;
.source "OWCPAKeyPair.java"


# instance fields
.field public final privateKey:[B

.field public final publicKey:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "publicKey"    # [B
    .param p2, "privateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKey"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;->publicKey:[B

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;->privateKey:[B

    .line 15
    return-void
.end method
