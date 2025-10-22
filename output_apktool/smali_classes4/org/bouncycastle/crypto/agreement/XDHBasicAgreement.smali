.class public Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;
.super Ljava/lang/Object;
.source "XDHBasicAgreement.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private agreement:Lorg/bouncycastle/crypto/RawAgreement;

.field private fieldSize:I

.field private key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    .line 25
    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "pubKey"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .line 58
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    new-array v0, v0, [B

    .line 59
    .local v0, "Z":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 61
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public getFieldSize()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "key"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 30
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 32
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    .line 33
    new-instance v0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    goto :goto_0

    .line 35
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 37
    const/16 v0, 0x38

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->fieldSize:I

    .line 38
    new-instance v0, Lorg/bouncycastle/crypto/agreement/X448Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X448Agreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    .line 45
    :goto_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 48
    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is neither X25519 nor X448"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
