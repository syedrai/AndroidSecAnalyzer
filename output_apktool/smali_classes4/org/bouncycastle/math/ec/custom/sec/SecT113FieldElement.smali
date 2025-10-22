.class public Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "SecT113FieldElement.java"


# instance fields
.field protected x:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 25
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .line 26
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

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x71

    if-gt v0, v1, :cond_0

    .line 20
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->fromBigInteger(Ljava/math/BigInteger;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .line 21
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecT113FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>([J)V
    .locals 0
    .param p1, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .line 31
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

    .line 70
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 71
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->add([J[J[J)V

    .line 72
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 77
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 78
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->addOne([J[J)V

    .line 79
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
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

    .line 220
    if-ne p1, p0, :cond_0

    .line 222
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    if-nez v0, :cond_1

    .line 227
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    .line 231
    .local v0, "o":Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Nat128;->eq64([J[J)Z

    move-result v1

    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "SecT113Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 65
    const/16 v0, 0x71

    return v0
.end method

.method public getK1()I
    .locals 1

    .line 205
    const/16 v0, 0x9

    return v0
.end method

.method public getK2()I
    .locals 1

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getK3()I
    .locals 1

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getM()I
    .locals 1

    .line 200
    const/16 v0, 0x71

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    .line 195
    const/4 v0, 0x2

    return v0
.end method

.method public halfTrace()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 164
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 165
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->halfTrace([J[J)V

    .line 166
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public hasFastTrace()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 236
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->hashCode([JII)I

    move-result v0

    const v1, 0x1b971

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 181
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 182
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->invert([J[J)V

    .line 183
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat128;->isOne64([J)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat128;->isZero64([J)Z

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 91
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 92
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "x",
            "y"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "x",
            "y"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .local v0, "ax":[J
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .line 103
    .local v1, "bx":[J
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .local v2, "xx":[J
    move-object v3, p3

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .line 105
    .local v3, "yx":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v4

    .line 106
    .local v4, "tt":[J
    invoke-static {v0, v1, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiplyAddToExt([J[J[J)V

    .line 107
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiplyAddToExt([J[J[J)V

    .line 109
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v5

    .line 110
    .local v5, "z":[J
    invoke-static {v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    .line 111
    new-instance v6, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v6
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    .line 121
    return-object p0
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 188
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 189
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->sqrt([J[J)V

    .line 190
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .line 126
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 127
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    .line 128
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public squareMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .line 139
    .local v0, "ax":[J
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .local v1, "xx":[J
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    .line 141
    .local v2, "yx":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v3

    .line 142
    .local v3, "tt":[J
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareAddToExt([J[J)V

    .line 143
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiplyAddToExt([J[J[J)V

    .line 145
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v4

    .line 146
    .local v4, "z":[J
    invoke-static {v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    .line 147
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v5
.end method

.method public squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "pow"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pow"
        }
    .end annotation

    .line 152
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 154
    return-object p0

    .line 157
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 158
    .local v0, "z":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    .line 159
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    return-object v1
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .locals 6

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat128;->toBigInteger64([J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public trace()I
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->trace([J)I

    move-result v0

    return v0
.end method
