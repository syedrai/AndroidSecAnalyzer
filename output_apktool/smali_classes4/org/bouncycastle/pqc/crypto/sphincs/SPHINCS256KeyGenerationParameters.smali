.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "SPHINCS256KeyGenerationParameters.java"


# instance fields
.field private final treeDigest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "treeDigest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "treeDigest"
        }
    .end annotation

    .line 15
    const/16 v0, 0x2100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    .line 17
    return-void
.end method


# virtual methods
.method public getTreeDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;->treeDigest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
