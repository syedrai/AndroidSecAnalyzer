.class public Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;
.super Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
.source "KEMParameterSpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyAlgorithmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyAlgorithmName"
        }
    .end annotation

    .line 11
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;-><init>(Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "keyAlgorithmName"    # Ljava/lang/String;
    .param p2, "keySizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyAlgorithmName",
            "keySizeInBits"
        }
    .end annotation

    .line 16
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "keyAlgorithmName":Ljava/lang/String;
    .end local p2    # "keySizeInBits":I
    .local v1, "keyAlgorithmName":Ljava/lang/String;
    .local v2, "keySizeInBits":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 17
    return-void
.end method


# virtual methods
.method public getKeySizeInBits()I
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;->getKeySize()I

    move-result v0

    return v0
.end method
