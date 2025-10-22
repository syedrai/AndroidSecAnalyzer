.class public Lorg/bouncycastle/pqc/crypto/DigestingStateAwareMessageSigner;
.super Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;
.source "DigestingStateAwareMessageSigner.java"


# instance fields
.field private final signer:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "messSigner"    # Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;
    .param p2, "messDigest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messSigner",
            "messDigest"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;-><init>(Lorg/bouncycastle/pqc/crypto/MessageSigner;Lorg/bouncycastle/crypto/Digest;)V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;

    .line 25
    return-void
.end method


# virtual methods
.method public getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;->getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
