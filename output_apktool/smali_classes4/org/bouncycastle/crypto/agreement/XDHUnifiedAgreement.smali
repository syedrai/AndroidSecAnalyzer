.class public Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;
.super Ljava/lang/Object;
.source "XDHUnifiedAgreement.java"

# interfaces
.implements Lorg/bouncycastle/crypto/RawAgreement;


# instance fields
.field private privParams:Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;

.field private final xAgreement:Lorg/bouncycastle/crypto/RawAgreement;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/RawAgreement;)V
    .locals 0
    .param p1, "xAgreement"    # Lorg/bouncycastle/crypto/RawAgreement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xAgreement"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    .line 18
    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .locals 4
    .param p1, "publicKey"    # Lorg/bouncycastle/crypto/CipherParameters;
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

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/XDHUPublicParameters;

    .line 37
    .local v0, "pubParams":Lorg/bouncycastle/crypto/params/XDHUPublicParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 39
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/XDHUPublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 41
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 43
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/XDHUPublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v3

    add-int/2addr v3, p3

    invoke-interface {v1, v2, p2, v3}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 44
    return-void
.end method

.method public getAgreementSize()I
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

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

    .line 23
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->xAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;->privParams:Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 26
    return-void
.end method
