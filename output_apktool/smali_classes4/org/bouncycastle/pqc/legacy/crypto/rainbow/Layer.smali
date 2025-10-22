.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field private coeff_alpha:[[[S

.field private coeff_beta:[[[S

.field private coeff_eta:[S

.field private coeff_gamma:[[S

.field private oi:I

.field private vi:I

.field private viNext:I


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 2
    .param p1, "vi"    # B
    .param p2, "viNext"    # B
    .param p3, "coeffAlpha"    # [[[S
    .param p4, "coeffBeta"    # [[[S
    .param p5, "coeffGamma"    # [[S
    .param p6, "coeffEta"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vi",
            "viNext",
            "coeffAlpha",
            "coeffBeta",
            "coeffGamma",
            "coeffEta"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    .line 56
    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    .line 57
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    .line 60
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    .line 61
    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    .line 62
    iput-object p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    .line 63
    iput-object p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    .line 64
    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 7
    .param p1, "vi"    # I
    .param p2, "viNext"    # I
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vi",
            "viNext",
            "sr"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    .line 75
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    .line 76
    sub-int v0, p2, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    .line 79
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    const/4 v3, 0x3

    new-array v4, v3, [I

    const/4 v5, 0x2

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v1, v4, v2

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    .line 80
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    new-array v3, v3, [I

    aput v6, v3, v5

    aput v4, v3, v2

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    .line 81
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    new-array v4, v5, [I

    aput v3, v4, v2

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    .line 82
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    .line 84
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    .line 87
    .local v0, "numOfPoly":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 89
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v2, v3, :cond_1

    .line 91
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v3, v4, :cond_0

    .line 93
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 89
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "k":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 100
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v2, v3, :cond_4

    .line 102
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v3, v4, :cond_3

    .line 104
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 100
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 98
    .end local v2    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 109
    .end local v1    # "k":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_6
    if-ge v1, v0, :cond_7

    .line 111
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    if-ge v2, v3, :cond_6

    .line 113
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v3, v3, v1

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 109
    .end local v2    # "i":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 117
    .end local v1    # "k":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_8
    if-ge v1, v0, :cond_8

    .line 119
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 121
    .end local v1    # "k":I
    :cond_8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    if-nez v1, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    .line 301
    .local v1, "otherLayer":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getVi()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    .line 302
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getViNext()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    .line 303
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getOi()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    .line 304
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    .line 305
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    .line 306
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    .line 307
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 301
    :goto_0
    return v0

    .line 297
    .end local v1    # "otherLayer":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    :cond_2
    :goto_1
    return v0
.end method

.method public getCoeffAlpha()[[[S
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    return-object v0
.end method

.method public getCoeffBeta()[[[S
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    return-object v0
.end method

.method public getCoeffEta()[S
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    return-object v0
.end method

.method public getCoeffGamma()[[S
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    return-object v0
.end method

.method public getOi()I
    .locals 1

    .line 243
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    return v0
.end method

.method public getVi()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    return v0
.end method

.method public getViNext()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 312
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    .line 313
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    add-int/2addr v1, v2

    .line 314
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x25

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    add-int/2addr v0, v2

    .line 315
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v2

    add-int/2addr v1, v2

    .line 316
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v2

    add-int/2addr v1, v2

    .line 318
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v2

    add-int/2addr v0, v2

    .line 320
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public plugInVinegars([S)[[S
    .locals 10
    .param p1, "x"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "tmpMult":S
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v3

    const/4 v2, 0x0

    aput v1, v4, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    .line 142
    .local v1, "coeff":[[S
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    new-array v2, v2, [S

    .line 148
    .local v2, "sum":[S
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_2

    .line 150
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v4, v5, :cond_1

    .line 152
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v5, v6, :cond_0

    .line 155
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 157
    aget-short v6, p1, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 159
    aget-short v6, v2, v3

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v2, v3

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 150
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 148
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "k":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_5

    .line 167
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v4, v5, :cond_4

    .line 169
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v5, v6, :cond_3

    .line 172
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 174
    aget-object v6, v1, v3

    aget-object v7, v1, v3

    aget-short v7, v7, v4

    invoke-static {v7, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v6, v4

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 167
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 165
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 179
    .end local v3    # "k":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_6
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_7

    .line 181
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    if-ge v4, v5, :cond_6

    .line 184
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v5, v5, v3

    aget-short v5, v5, v4

    aget-short v6, p1, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 187
    aget-short v5, v2, v3

    invoke-static {v5, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v2, v3

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 179
    .end local v4    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 191
    .end local v3    # "k":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_8
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_9

    .line 193
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    .restart local v4    # "i":I
    :goto_9
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->viNext:I

    if-ge v4, v5, :cond_8

    .line 197
    aget-object v5, v1, v3

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    sub-int v6, v4, v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v7, v7, v3

    aget-short v7, v7, v4

    aget-object v8, v1, v3

    iget v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->vi:I

    sub-int v9, v4, v9

    aget-short v8, v8, v9

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v5, v6

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 191
    .end local v4    # "i":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 202
    .end local v3    # "k":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_a
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_a

    .line 205
    aget-short v4, v2, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->coeff_eta:[S

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v2, v3

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 209
    .end local v3    # "k":I
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_b
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_b

    .line 211
    aget-object v4, v1, v3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->oi:I

    aget-short v6, v2, v3

    aput-short v6, v4, v5

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 213
    .end local v3    # "k":I
    :cond_b
    return-object v1
.end method
