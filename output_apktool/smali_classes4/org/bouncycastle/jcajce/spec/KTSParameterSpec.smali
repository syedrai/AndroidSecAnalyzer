.class public Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
.super Ljava/lang/Object;
.source "KTSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;
    }
.end annotation


# instance fields
.field private final kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final keySizeInBits:I

.field private otherInfo:[B

.field private final parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final wrappingKeyAlgorithm:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0
    .param p1, "wrappingKeyAlgorithm"    # Ljava/lang/String;
    .param p2, "keySizeInBits"    # I
    .param p3, "parameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "kdfAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "otherInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrappingKeyAlgorithm",
            "keySizeInBits",
            "parameterSpec",
            "kdfAlgorithm",
            "otherInfo"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->wrappingKeyAlgorithm:Ljava/lang/String;

    .line 115
    iput p2, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->keySizeInBits:I

    .line 116
    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 117
    iput-object p4, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 118
    iput-object p5, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->otherInfo:[B

    .line 119
    return-void
.end method


# virtual methods
.method public getKdfAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKeyAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->wrappingKeyAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->keySizeInBits:I

    return v0
.end method

.method public getOtherInfo()[B
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->otherInfo:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method
