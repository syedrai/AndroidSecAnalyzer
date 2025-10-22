.class public Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;
.super Ljava/lang/Object;
.source "KEMGenerateSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final keyAlgorithmName:Ljava/lang/String;

.field private final keySizeInBits:I

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "keyAlgorithmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "keyAlgorithmName"
        }
    .end annotation

    .line 15
    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;I)V
    .locals 0
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "keyAlgorithmName"    # Ljava/lang/String;
    .param p3, "keySizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "keyAlgorithmName",
            "keySizeInBits"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    .line 22
    iput p3, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    .line 23
    return-void
.end method


# virtual methods
.method public getKeyAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    return v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
