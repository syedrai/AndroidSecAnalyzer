.class public final Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;
.super Ljava/lang/Object;
.source "KDFFeedbackParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# static fields
.field private static final UNUSED_R:I = -0x1


# instance fields
.field private final fixedInputData:[B

.field private final iv:[B

.field private final ki:[B

.field private final r:I

.field private final useCounter:Z


# direct methods
.method private constructor <init>([B[B[BIZ)V
    .locals 2
    .param p1, "ki"    # [B
    .param p2, "iv"    # [B
    .param p3, "fixedInputData"    # [B
    .param p4, "r"    # I
    .param p5, "useCounter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ki",
            "iv",
            "fixedInputData",
            "r",
            "useCounter"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_2

    .line 30
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->ki:[B

    .line 32
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 34
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->fixedInputData:[B

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->fixedInputData:[B

    .line 41
    :goto_0
    iput p4, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->r:I

    .line 43
    if-nez p2, :cond_1

    .line 45
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    goto :goto_1

    .line 49
    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    .line 52
    :goto_1
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter:Z

    .line 53
    return-void

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A KDF requires Ki (a seed) as input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithCounter([B[B[BI)Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;
    .locals 8
    .param p0, "ki"    # [B
    .param p1, "iv"    # [B
    .param p2, "fixedInputData"    # [B
    .param p3, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "ki",
            "iv",
            "fixedInputData",
            "r"
        }
    .end annotation

    .line 58
    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x18

    if-eq p3, v0, :cond_1

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .end local p0    # "ki":[B
    .end local p1    # "iv":[B
    .end local p2    # "fixedInputData":[B
    .end local p3    # "r":I
    .local v3, "ki":[B
    .local v4, "iv":[B
    .local v5, "fixedInputData":[B
    .local v6, "r":I
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;-><init>([B[B[BIZ)V

    return-object v2
.end method

.method public static createWithoutCounter([B[B[B)Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;
    .locals 6
    .param p0, "ki"    # [B
    .param p1, "iv"    # [B
    .param p2, "fixedInputData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "ki",
            "iv",
            "fixedInputData"
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p0    # "ki":[B
    .end local p1    # "iv":[B
    .end local p2    # "fixedInputData":[B
    .local v1, "ki":[B
    .local v2, "iv":[B
    .local v3, "fixedInputData":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;-><init>([B[B[BIZ)V

    return-object v0
.end method


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->fixedInputData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->r:I

    return v0
.end method

.method public useCounter()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter:Z

    return v0
.end method
