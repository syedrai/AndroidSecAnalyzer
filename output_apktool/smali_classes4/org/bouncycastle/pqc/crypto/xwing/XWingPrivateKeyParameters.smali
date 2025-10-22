.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;
.source "XWingPrivateKeyParameters.java"


# instance fields
.field private final kybPriv:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

.field private final xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1
    .param p1, "kybPriv"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "xdhPriv"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kybPriv",
            "xdhPriv"
        }
    .end annotation

    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;-><init>(Z)V

    .line 19
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    .line 20
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;-><init>(Z)V

    .line 27
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber768:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x20

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    .line 28
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    .line 29
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getKyberPrivateKey()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->kybPriv:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    return-object v0
.end method

.method getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->xdhPriv:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    return-object v0
.end method
