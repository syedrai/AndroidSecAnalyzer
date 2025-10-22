.class Lorg/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source "SimpleBigDecimal.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bigInt:Ljava/math/BigInteger;

.field private final scale:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "bigInt"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bigInt",
            "scale"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-ltz p2, :cond_0

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 54
    iput p2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 55
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V
    .locals 2
    .param p1, "b"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 59
    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v1, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne v0, v1, :cond_0

    .line 64
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/math/BigInteger;I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "scale"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 85
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public adjustScale(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "newScale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newScale"
        }
    .end annotation

    .line 68
    if-ltz p1, :cond_1

    .line 73
    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p1, v0, :cond_0

    .line 75
    return-object p0

    .line 78
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .locals 2
    .param p1, "val"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)I
    .locals 2
    .param p1, "val"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public divide(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public divide(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 4
    .param p1, "b"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 124
    .local v0, "dividend":Ljava/math/BigInteger;
    new-instance v1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 228
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 230
    return v0

    .line 233
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 235
    return v2

    .line 238
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    .line 239
    .local v1, "other":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    iget-object v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v4, v1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public floor()Ljava/math/BigInteger;
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 161
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 166
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 4
    .param p1, "b"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 112
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    .line 95
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public round()Ljava/math/BigInteger;
    .locals 3

    .line 155
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 156
    .local v0, "oneHalf":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    iget v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public shiftLeft(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 186
    iget v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    .line 193
    .local v0, "floorBigInt":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 194
    .local v1, "fract":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 196
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v4, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ne v2, v3, :cond_2

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 201
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 203
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "leftOfPoint":Ljava/lang/String;
    iget v3, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    new-array v3, v3, [C

    .line 206
    .local v3, "fractCharArr":[C
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "fractStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 208
    .local v5, "fractLen":I
    iget v6, p0, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int/2addr v6, v5

    .line 209
    .local v6, "zeroes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 211
    const/16 v8, 0x30

    aput-char v8, v3, v7

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 213
    .end local v7    # "i":I
    :cond_3
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v5, :cond_4

    .line 215
    add-int v8, v6, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v3, v8

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 217
    .end local v7    # "j":I
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    .line 219
    .local v7, "rightOfPoint":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 220
    .local v8, "sb":Ljava/lang/StringBuffer;
    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
