.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;
.source "XWingPublicKeyParameters.java"


# instance fields
.field private final kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

.field private final xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1
    .param p1, "kybPub"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "xdhPub"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kybPub",
            "xdhPub"
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;-><init>(Z)V

    .line 19
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    .line 20
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

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
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber768:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x20

    invoke-static {p1, v0, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    .line 28
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 29
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getKyberPublicKey()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    return-object v0
.end method

.method getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    return-object v0
.end method
