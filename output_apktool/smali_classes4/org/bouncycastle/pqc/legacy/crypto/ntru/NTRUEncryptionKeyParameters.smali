.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUEncryptionKeyParameters.java"


# instance fields
.field protected final params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 0
    .param p1, "privateKey"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "params"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    .line 14
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    return-object v0
.end method
