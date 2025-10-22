.class public Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP160R1FieldElement.java"


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
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

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

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

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

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 24
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    .line 25
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP160R1FieldElement"

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
    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

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
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->add([I[I[I)V

    .line 71
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 76
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 77
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->addOne([I[I)V

    .line 78
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

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

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->inv([I[I)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 101
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

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

    .line 185
    if-ne p1, p0, :cond_0

    .line 187
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    if-nez v0, :cond_1

    .line 192
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    .line 196
    .local v0, "o":Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Nat160;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "SecP160R1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 64
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 201
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

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
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->inv([I[I)V

    .line 123
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

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
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 92
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 106
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 107
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->negate([I[I)V

    .line 108
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 12

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    .line 144
    .local v0, "x1":[I
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v1

    .line 150
    .local v1, "x2":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 151
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 152
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v2

    .line 153
    .local v2, "x4":[I
    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 154
    invoke-static {v2, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 155
    move-object v3, v1

    .line 156
    .local v3, "x8":[I
    const/4 v4, 0x4

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 157
    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 158
    move-object v4, v2

    .line 159
    .local v4, "x16":[I
    const/16 v5, 0x8

    invoke-static {v3, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 160
    invoke-static {v4, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 161
    move-object v5, v3

    .line 162
    .local v5, "x32":[I
    const/16 v6, 0x10

    invoke-static {v4, v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 163
    invoke-static {v5, v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 164
    move-object v6, v4

    .line 165
    .local v6, "x64":[I
    const/16 v7, 0x20

    invoke-static {v5, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 166
    invoke-static {v6, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 167
    move-object v7, v5

    .line 168
    .local v7, "x128":[I
    const/16 v8, 0x40

    invoke-static {v6, v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 169
    invoke-static {v7, v6, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 170
    move-object v8, v6

    .line 171
    .local v8, "x129":[I
    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 172
    invoke-static {v8, v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 174
    move-object v9, v8

    .line 175
    .local v9, "t1":[I
    const/16 v10, 0x1d

    invoke-static {v9, v10, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 177
    move-object v10, v7

    .line 178
    .local v10, "t2":[I
    invoke-static {v9, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 180
    invoke-static {v0, v10}, Lorg/bouncycastle/math/raw/Nat160;->eq([I[I)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v11, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    return-object v11

    .line 146
    .end local v1    # "x2":[I
    .end local v2    # "x4":[I
    .end local v3    # "x8":[I
    .end local v4    # "x16":[I
    .end local v5    # "x32":[I
    .end local v6    # "x64":[I
    .end local v7    # "x128":[I
    .end local v8    # "x129":[I
    .end local v9    # "t1":[I
    .end local v10    # "t2":[I
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
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 115
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

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
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    .line 85
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

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
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
