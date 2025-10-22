.class Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;
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
    name = "DefaultProperties"
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final bitsOfSecurity:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0
    .param p1, "bitsOfSecurity"    # I
    .param p2, "algorithmName"    # Ljava/lang/String;
    .param p3, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitsOfSecurity",
            "algorithmName",
            "purpose"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    .line 73
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 75
    return-void
.end method


# virtual methods
.method public bitsOfSecurity()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    return-object v0
.end method
