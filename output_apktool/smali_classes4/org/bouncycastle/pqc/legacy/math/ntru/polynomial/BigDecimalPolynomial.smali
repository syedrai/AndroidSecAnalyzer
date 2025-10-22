.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
.super Ljava/lang/Object;
.source "BigDecimalPolynomial.java"


# static fields
.field private static final ONE_HALF:Ljava/math/BigDecimal;

.field private static final ZERO:Ljava/math/BigDecimal;


# instance fields
.field coeffs:[Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    .line 13
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.5"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->ONE_HALF:Ljava/math/BigDecimal;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "N"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "N"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p1, [Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 27
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    aput-object v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V
    .locals 5
    .param p1, "p"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    array-length v0, v0

    .line 49
    .local v0, "N":I
    new-array v1, v0, [Ljava/math/BigDecimal;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 52
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    aput-object v3, v2, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method constructor <init>([Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "coeffs"    # [Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coeffs"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 39
    return-void
.end method

.method private copyOf([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;
    .locals 3
    .param p1, "a"    # [Ljava/math/BigDecimal;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "length"
        }
    .end annotation

    .line 232
    new-array v0, p2, [Ljava/math/BigDecimal;

    .line 234
    .local v0, "tmp":[Ljava/math/BigDecimal;
    array-length v1, p1

    if-ge v1, p2, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-object v0
.end method

.method private copyOfRange([Ljava/math/BigDecimal;II)[Ljava/math/BigDecimal;
    .locals 4
    .param p1, "a"    # [Ljava/math/BigDecimal;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "from",
            "to"
        }
    .end annotation

    .line 241
    sub-int v0, p3, p2

    .line 242
    .local v0, "newLength":I
    sub-int v1, p3, p2

    new-array v1, v1, [Ljava/math/BigDecimal;

    .line 244
    .local v1, "tmp":[Ljava/math/BigDecimal;
    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, v0, :cond_0

    array-length v2, p1

    sub-int/2addr v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    return-object v1
.end method

.method private multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .locals 19
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 113
    .local v2, "a":[Ljava/math/BigDecimal;
    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 115
    .local v3, "b":[Ljava/math/BigDecimal;
    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v4, v4

    .line 116
    .local v4, "n":I
    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 118
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    invoke-virtual {v5}, [Ljava/math/BigDecimal;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/math/BigDecimal;

    .line 119
    .local v5, "c":[Ljava/math/BigDecimal;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 121
    aget-object v7, v5, v6

    iget-object v8, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    aput-object v7, v5, v6

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v6    # "i":I
    :cond_0
    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v6, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    return-object v6

    .line 127
    .end local v5    # "c":[Ljava/math/BigDecimal;
    :cond_1
    div-int/lit8 v6, v4, 0x2

    .line 129
    .local v6, "n1":I
    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->copyOf([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 130
    .local v7, "a1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v0, v2, v6, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->copyOfRange([Ljava/math/BigDecimal;II)[Ljava/math/BigDecimal;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 131
    .local v8, "a2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    new-instance v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v0, v3, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->copyOf([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 132
    .local v9, "b1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    new-instance v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v0, v3, v6, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->copyOfRange([Ljava/math/BigDecimal;II)[Ljava/math/BigDecimal;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    .line 134
    .local v10, "b2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    .line 135
    .local v11, "A":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-virtual {v11, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 136
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    .line 137
    .local v12, "B":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-virtual {v12, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 139
    invoke-direct {v7, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v13

    .line 140
    .local v13, "c1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-direct {v8, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v14

    .line 141
    .local v14, "c2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-direct {v11, v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v15

    .line 142
    .local v15, "c3":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-virtual {v15, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 143
    invoke-virtual {v15, v14}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 145
    const/16 v16, 0x1

    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    mul-int/lit8 v17, v4, 0x2

    add-int/lit8 v0, v17, -0x1

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>(I)V

    .line 146
    .local v5, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, v13, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 148
    iget-object v1, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    iget-object v0, v13, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v0, v0, v16

    aput-object v0, v1, v16

    .line 146
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    :cond_2
    move/from16 v16, v0

    .line 150
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, v15, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 152
    iget-object v1, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    add-int v16, v6, v0

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    iget-object v0, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    add-int v18, v6, v17

    aget-object v0, v0, v18

    move-object/from16 v18, v1

    iget-object v1, v15, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v1, v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v18, v16

    .line 150
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    :cond_3
    move/from16 v17, v0

    .line 154
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 156
    iget-object v1, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    mul-int/lit8 v16, v6, 0x2

    add-int v16, v16, v0

    move/from16 v17, v0

    .end local v0    # "i":I
    .restart local v17    # "i":I
    iget-object v0, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    mul-int/lit8 v18, v6, 0x2

    add-int v18, v18, v17

    aget-object v0, v0, v18

    move-object/from16 v18, v1

    iget-object v1, v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v1, v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v18, v16

    .line 154
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .line 158
    .end local v0    # "i":I
    :cond_4
    return-object v5
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V
    .locals 4
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 169
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v0, v0

    .line 172
    .local v0, "N":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->copyOf([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 173
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    aput-object v3, v2, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 227
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    invoke-virtual {v1}, [Ljava/math/BigDecimal;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>([Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public getCoeffs()[Ljava/math/BigDecimal;
    .locals 4

    .line 251
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v0, v0

    new-array v0, v0, [Ljava/math/BigDecimal;

    .line 253
    .local v0, "tmp":[Ljava/math/BigDecimal;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-object v0
.end method

.method public halve()V
    .locals 4

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v2, v2, v0

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->ONE_HALF:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .locals 7
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v0, v0

    .line 89
    .local v0, "N":I
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ne v1, v0, :cond_2

    .line 94
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v1

    .line 96
    .local v1, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v2, v2

    if-le v2, v0, :cond_1

    .line 98
    move v2, v0

    .local v2, "k":I
    :goto_0
    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 100
    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    sub-int v4, v2, v0

    iget-object v5, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    sub-int v6, v2, v0

    aget-object v5, v5, v6

    iget-object v6, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    aput-object v5, v3, v4

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "k":I
    :cond_0
    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->copyOf([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 104
    :cond_1
    return-object v1

    .line 91
    .end local v1    # "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of coefficients must be the same"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .locals 1
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public round()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .locals 7

    .line 213
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v0, v0

    .line 214
    .local v0, "N":I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;-><init>(I)V

    .line 215
    .local v1, "p":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V
    .locals 4
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 191
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v0, v0

    .line 194
    .local v0, "N":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->copyOf([Ljava/math/BigDecimal;I)[Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    .line 195
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 197
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->ZERO:Ljava/math/BigDecimal;

    aput-object v3, v2, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->coeffs:[Ljava/math/BigDecimal;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
