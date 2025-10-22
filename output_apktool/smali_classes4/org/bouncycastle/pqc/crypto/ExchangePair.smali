.class public Lorg/bouncycastle/pqc/crypto/ExchangePair;
.super Ljava/lang/Object;
.source "ExchangePair.java"


# instance fields
.field private final publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private final shared:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)V
    .locals 1
    .param p1, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "shared"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "shared"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ExchangePair;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 23
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ExchangePair;->shared:[B

    .line 24
    return-void
.end method


# virtual methods
.method public getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ExchangePair;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method

.method public getSharedValue()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ExchangePair;->shared:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
