.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP256R1FieldElement.java"


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
    const-string v1, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 29
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

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

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 24
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 25
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP256R1FieldElement"

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
    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 70
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->add([I[I[I)V

    .line 71
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 76
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 77
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addOne([I[I)V

    .line 78
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 99
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->inv([I[I)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 101
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

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

    .line 173
    if-ne p1, p0, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    if-nez v0, :cond_1

    .line 180
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 184
    .local v0, "o":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "SecP256R1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 64
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 189
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 121
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 122
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->inv([I[I)V

    .line 123
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 91
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 92
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 106
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 107
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->negate([I[I)V

    .line 108
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 135
    .local v0, "x1":[I
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v1

    .line 141
    .local v1, "tt0":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v2

    .line 142
    .local v2, "t1":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v3

    .line 144
    .local v3, "t2":[I
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 145
    invoke-static {v2, v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 147
    const/4 v4, 0x2

    invoke-static {v2, v4, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I[I)V

    .line 148
    invoke-static {v3, v2, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 150
    const/4 v4, 0x4

    invoke-static {v3, v4, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I[I)V

    .line 151
    invoke-static {v2, v3, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 153
    const/16 v4, 0x8

    invoke-static {v2, v4, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I[I)V

    .line 154
    invoke-static {v3, v2, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 156
    const/16 v4, 0x10

    invoke-static {v3, v4, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I[I)V

    .line 157
    invoke-static {v2, v3, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 159
    const/16 v4, 0x20

    invoke-static {v2, v4, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I[I)V

    .line 160
    invoke-static {v2, v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 162
    const/16 v4, 0x60

    invoke-static {v2, v4, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I[I)V

    .line 163
    invoke-static {v2, v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 165
    const/16 v4, 0x5e

    invoke-static {v2, v4, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I[I)V

    .line 166
    invoke-static {v2, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 168
    invoke-static {v0, v3}, Lorg/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v4, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 137
    .end local v1    # "tt0":[I
    .end local v2    # "t1":[I
    .end local v3    # "t2":[I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 113
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 114
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 115
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 84
    .local v0, "z":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 85
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->getBit([II)I

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
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
