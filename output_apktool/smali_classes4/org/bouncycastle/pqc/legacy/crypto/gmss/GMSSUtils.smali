.class Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;
.super Ljava/lang/Object;
.source "GMSSUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 5
    .param p0, "data"    # [Ljava/util/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 112
    if-nez p0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/util/Vector;

    .line 118
    .local v0, "copy":[Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    .line 120
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v0, v1

    .line 121
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    aget-object v3, v0, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    .end local v2    # "en":Ljava/util/Enumeration;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .locals 3
    .param p0, "data"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 v0, 0x0

    return-object v0

    .line 16
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 18
    .local v0, "copy":[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .locals 3
    .param p0, "data"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 25
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    .line 31
    .local v0, "copy":[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
    .locals 3
    .param p0, "data"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 38
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    .line 44
    .local v0, "copy":[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .locals 3
    .param p0, "data"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 83
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 89
    .local v0, "copy":[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-object v0
.end method

.method static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 51
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[B

    .line 57
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 59
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static clone([[Ljava/util/Vector;)[[Ljava/util/Vector;
    .locals 3
    .param p0, "data"    # [[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 132
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[Ljava/util/Vector;

    .line 138
    .local v0, "copy":[[Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 140
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static clone([[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .locals 3
    .param p0, "data"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 96
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 102
    .local v0, "copy":[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 104
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static clone([[[B)[[[B
    .locals 3
    .param p0, "data"    # [[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 67
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[[B

    .line 73
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 75
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
