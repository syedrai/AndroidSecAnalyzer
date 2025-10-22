.class public Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP224K1FieldElement.java"


# static fields
.field private static final PRECOMP_POW2:[I

.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Ljava/math/BigInteger;

    .line 13
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 28
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 73
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 74
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->add([I[I[I)V

    .line 75
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 80
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 81
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 102
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 103
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 105
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 226
    if-ne p1, p0, :cond_0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    if-nez v0, :cond_1

    .line 233
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 237
    .local v0, "o":Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "SecP224K1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 68
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 242
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 125
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 126
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 94
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 95
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 96
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 110
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 111
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 16

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 150
    .local v1, "x1":[I
    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 156
    .local v2, "x2":[I
    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 157
    invoke-static {v2, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 158
    move-object v3, v2

    .line 159
    .local v3, "x3":[I
    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 160
    invoke-static {v3, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 161
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 162
    .local v4, "x4":[I
    invoke-static {v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 163
    invoke-static {v4, v1, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 164
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    .line 165
    .local v5, "x8":[I
    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 166
    invoke-static {v5, v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 167
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 168
    .local v7, "x11":[I
    const/4 v8, 0x3

    invoke-static {v5, v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 169
    invoke-static {v7, v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 170
    move-object v9, v7

    .line 171
    .local v9, "x19":[I
    const/16 v10, 0x8

    invoke-static {v7, v10, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 172
    invoke-static {v9, v5, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 173
    move-object v10, v5

    .line 174
    .local v10, "x23":[I
    invoke-static {v9, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 175
    invoke-static {v10, v4, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 176
    move-object v11, v4

    .line 177
    .local v11, "x42":[I
    const/16 v12, 0x13

    invoke-static {v10, v12, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 178
    invoke-static {v11, v9, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 179
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    .line 180
    .local v12, "x84":[I
    const/16 v13, 0x2a

    invoke-static {v11, v13, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 181
    invoke-static {v12, v11, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 182
    move-object v13, v11

    .line 183
    .local v13, "x107":[I
    const/16 v14, 0x17

    invoke-static {v12, v14, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 184
    invoke-static {v13, v10, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 185
    move-object v14, v10

    .line 186
    .local v14, "x191":[I
    const/16 v15, 0x54

    invoke-static {v13, v15, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 187
    invoke-static {v14, v12, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 189
    move-object v15, v14

    .line 190
    .local v15, "t1":[I
    const/16 v6, 0x14

    invoke-static {v15, v6, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 191
    invoke-static {v15, v9, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 192
    invoke-static {v15, v8, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 193
    invoke-static {v15, v1, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 194
    const/4 v6, 0x2

    invoke-static {v15, v6, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 195
    invoke-static {v15, v1, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 196
    const/4 v6, 0x4

    invoke-static {v15, v6, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 197
    invoke-static {v15, v3, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 198
    invoke-static {v15, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 200
    move-object v6, v12

    .line 201
    .local v6, "t2":[I
    invoke-static {v15, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 203
    invoke-static {v1, v6}, Lorg/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    .line 212
    :cond_1
    sget-object v8, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    invoke-static {v15, v8, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 214
    invoke-static {v15, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 216
    invoke-static {v1, v6}, Lorg/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 218
    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    .line 221
    :cond_2
    const/4 v8, 0x0

    return-object v8

    .line 152
    .end local v2    # "x2":[I
    .end local v3    # "x3":[I
    .end local v4    # "x4":[I
    .end local v5    # "x8":[I
    .end local v6    # "t2":[I
    .end local v7    # "x11":[I
    .end local v9    # "x19":[I
    .end local v10    # "x23":[I
    .end local v11    # "x42":[I
    .end local v12    # "x84":[I
    .end local v13    # "x107":[I
    .end local v14    # "x191":[I
    .end local v15    # "t1":[I
    :cond_3
    :goto_0
    return-object v0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 117
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 118
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 119
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 87
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 88
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 89
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat224;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
