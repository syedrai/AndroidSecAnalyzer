.class public Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
.super Ljava/lang/Object;
.source "ScryptConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/ScryptConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blockSize:I

.field private final costParameter:I

.field private final parallelizationParameter:I

.field private saltLength:I


# direct methods
.method static bridge synthetic -$$Nest$fgetblockSize(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->blockSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcostParameter(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->costParameter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparallelizationParameter(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->parallelizationParameter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaltLength(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    return p0
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "costParameter"    # I
    .param p2, "blockSize"    # I
    .param p3, "parallelizationParameter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "costParameter",
            "blockSize",
            "parallelizationParameter"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    .line 28
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput p1, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->costParameter:I

    .line 34
    iput p2, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->blockSize:I

    .line 35
    iput p3, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->parallelizationParameter:I

    .line 36
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1 and a power of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isPowerOf2(I)Z
    .locals 1
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 59
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/util/ScryptConfig;
    .locals 2

    .line 53
    new-instance v0, Lorg/bouncycastle/crypto/util/ScryptConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/util/ScryptConfig;-><init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;Lorg/bouncycastle/crypto/util/ScryptConfig-IA;)V

    return-object v0
.end method

.method public withSaltLength(I)Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
    .locals 0
    .param p1, "saltLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saltLength"
        }
    .end annotation

    .line 46
    iput p1, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    .line 48
    return-object p0
.end method
