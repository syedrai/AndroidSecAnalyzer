.class public final Lorg/bouncycastle/crypto/agreement/X25519Agreement;
.super Ljava/lang/Object;
.source "X25519Agreement.java"

# interfaces
.implements Lorg/bouncycastle/crypto/RawAgreement;


# instance fields
.field private privateKey:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .locals 2
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

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->privateKey:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generateSecret(Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;[BI)V

    .line 29
    return-void
.end method

.method public getAgreementSize()I
    .locals 1

    .line 23
    const/16 v0, 0x20

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 16
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->privateKey:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    .line 18
    const-string v0, "X25519"

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->privateKey:Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 19
    return-void
.end method
