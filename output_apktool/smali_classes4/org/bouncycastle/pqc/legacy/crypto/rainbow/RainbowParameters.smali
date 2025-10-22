.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;
.super Ljava/lang/Object;
.source "RainbowParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final DEFAULT_VI:[I

.field private vi:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x16

    const/16 v1, 0x21

    const/4 v2, 0x6

    const/16 v3, 0xc

    const/16 v4, 0x11

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    .line 36
    return-void
.end method

.method public constructor <init>([I)V
    .locals 5
    .param p1, "vi"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vi"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x16

    const/16 v1, 0x21

    const/4 v2, 0x6

    const/16 v3, 0xc

    const/16 v4, 0x11

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->checkParams()V

    .line 49
    return-void
.end method

.method private checkParams()V
    .locals 5

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 61
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "v[i] has to be smaller than v[i+1]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rainbow needs at least 1 layer, such that v1 < v2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no layers defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDocLength()I
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumOfLayers()I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getVi()[I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->vi:[I

    return-object v0
.end method
