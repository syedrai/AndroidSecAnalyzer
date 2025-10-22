.class public Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP160R2FieldElement.java"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Ljava/math/BigInteger;

    .line 13
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 29
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    .line 30
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

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 24
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    .line 25
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP160R2FieldElement"

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

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    .line 35
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

    .line 69
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 70
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->add([I[I[I)V

    .line 71
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 76
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 77
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->addOne([I[I)V

    .line 78
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

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

    .line 98
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 99
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->inv([I[I)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 101
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

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

    .line 200
    if-ne p1, p0, :cond_0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    if-nez v0, :cond_1

    .line 207
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .line 211
    .local v0, "o":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Nat160;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "SecP160R2Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 64
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 216
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 121
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 122
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->inv([I[I)V

    .line 123
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

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

    .line 90
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 91
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 92
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 106
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 107
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->negate([I[I)V

    .line 108
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 14

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    .line 144
    .local v0, "x1":[I
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 149
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v1

    .line 150
    .local v1, "x2":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 151
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 152
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v2

    .line 153
    .local v2, "x3":[I
    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 154
    invoke-static {v2, v0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 155
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v3

    .line 156
    .local v3, "x4":[I
    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 157
    invoke-static {v3, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 158
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v4

    .line 159
    .local v4, "x7":[I
    const/4 v5, 0x3

    invoke-static {v3, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 160
    invoke-static {v4, v2, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 161
    move-object v6, v3

    .line 162
    .local v6, "x14":[I
    const/4 v7, 0x7

    invoke-static {v4, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 163
    invoke-static {v6, v4, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 164
    move-object v7, v4

    .line 165
    .local v7, "x17":[I
    invoke-static {v6, v5, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 166
    invoke-static {v7, v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 167
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v8

    .line 168
    .local v8, "x31":[I
    const/16 v9, 0xe

    invoke-static {v7, v9, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 169
    invoke-static {v8, v6, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 170
    move-object v9, v6

    .line 171
    .local v9, "x62":[I
    const/16 v10, 0x1f

    invoke-static {v8, v10, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 172
    invoke-static {v9, v8, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 173
    move-object v10, v8

    .line 174
    .local v10, "x124":[I
    const/16 v11, 0x3e

    invoke-static {v9, v11, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 175
    invoke-static {v10, v9, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 176
    move-object v11, v9

    .line 177
    .local v11, "x127":[I
    invoke-static {v10, v5, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 178
    invoke-static {v11, v2, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 180
    move-object v12, v11

    .line 181
    .local v12, "t1":[I
    const/16 v13, 0x12

    invoke-static {v12, v13, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 182
    invoke-static {v12, v7, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 183
    const/4 v13, 0x2

    invoke-static {v12, v13, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 184
    invoke-static {v12, v0, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 185
    invoke-static {v12, v5, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 186
    invoke-static {v12, v1, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 187
    const/4 v5, 0x6

    invoke-static {v12, v5, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 188
    invoke-static {v12, v2, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 189
    invoke-static {v12, v13, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    .line 190
    invoke-static {v12, v0, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 192
    move-object v5, v1

    .line 193
    .local v5, "t2":[I
    invoke-static {v12, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 195
    invoke-static {v0, v5}, Lorg/bouncycastle/math/raw/Nat160;->eq([I[I)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v13, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    return-object v13

    .line 146
    .end local v1    # "x2":[I
    .end local v2    # "x3":[I
    .end local v3    # "x4":[I
    .end local v4    # "x7":[I
    .end local v5    # "t2":[I
    .end local v6    # "x14":[I
    .end local v7    # "x17":[I
    .end local v8    # "x31":[I
    .end local v9    # "x62":[I
    .end local v10    # "x124":[I
    .end local v11    # "x127":[I
    .end local v12    # "t1":[I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 113
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 114
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 115
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

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

    .line 83
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 84
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 85
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat160;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
