.class Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source "GenericPolynomialExtensionField.java"

# interfaces
.implements Lorg/bouncycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

.field protected final subfield:Lorg/bouncycastle/math/field/FiniteField;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/field/FiniteField;Lorg/bouncycastle/math/field/Polynomial;)V
    .locals 0
    .param p1, "subfield"    # Lorg/bouncycastle/math/field/FiniteField;
    .param p2, "polynomial"    # Lorg/bouncycastle/math/field/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subfield",
            "polynomial"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 45
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 51
    return v2

    .line 53
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;

    .line 54
    .local v1, "other":Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;
    iget-object v3, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    iget-object v4, v1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    iget-object v4, v1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDegree()I
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    invoke-interface {v0}, Lorg/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v0

    return v0
.end method

.method public getDimension()I
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    invoke-interface {v1}, Lorg/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    return-object v0
.end method

.method public getSubfield()Lorg/bouncycastle/math/field/FiniteField;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 59
    return v0
.end method
