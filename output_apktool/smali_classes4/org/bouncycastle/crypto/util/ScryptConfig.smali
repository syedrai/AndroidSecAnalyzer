.class public Lorg/bouncycastle/crypto/util/ScryptConfig;
.super Lorg/bouncycastle/crypto/util/PBKDFConfig;
.source "ScryptConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final costParameter:I

.field private final parallelizationParameter:I

.field private final saltLength:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 70
    sget-object v0, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PBKDFConfig;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 72
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->-$$Nest$fgetcostParameter(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->costParameter:I

    .line 73
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->-$$Nest$fgetblockSize(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->blockSize:I

    .line 74
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->-$$Nest$fgetparallelizationParameter(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->parallelizationParameter:I

    .line 75
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->-$$Nest$fgetsaltLength(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->saltLength:I

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;Lorg/bouncycastle/crypto/util/ScryptConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/ScryptConfig;-><init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->blockSize:I

    return v0
.end method

.method public getCostParameter()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->costParameter:I

    return v0
.end method

.method public getParallelizationParameter()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->parallelizationParameter:I

    return v0
.end method

.method public getSaltLength()I
    .locals 1

    .line 95
    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->saltLength:I

    return v0
.end method
