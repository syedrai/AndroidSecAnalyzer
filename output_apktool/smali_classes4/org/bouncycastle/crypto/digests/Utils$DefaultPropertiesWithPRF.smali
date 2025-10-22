.class Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CryptoServiceProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultPropertiesWithPRF"
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final bitsOfSecurity:I

.field private final prfBitsOfSecurity:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0
    .param p1, "bitsOfSecurity"    # I
    .param p2, "prfBitsOfSecurity"    # I
    .param p3, "algorithmName"    # Ljava/lang/String;
    .param p4, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitsOfSecurity",
            "prfBitsOfSecurity",
            "algorithmName",
            "purpose"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->bitsOfSecurity:I

    .line 31
    iput p2, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->prfBitsOfSecurity:I

    .line 32
    iput-object p3, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->algorithmName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 34
    return-void
.end method


# virtual methods
.method public bitsOfSecurity()I
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    if-ne v0, v1, :cond_0

    .line 40
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->prfBitsOfSecurity:I

    return v0

    .line 43
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->bitsOfSecurity:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->algorithmName:Ljava/lang/String;

    return-object v0
.end method
