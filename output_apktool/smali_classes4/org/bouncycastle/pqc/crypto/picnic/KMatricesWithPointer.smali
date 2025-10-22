.class Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
.super Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;
.source "KMatricesWithPointer.java"


# instance fields
.field private matrixPointer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;)V
    .locals 4
    .param p1, "m"    # Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getNmatrices()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getRows()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getColumns()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getData()[I

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->matrixPointer:I

    .line 12
    return-void
.end method


# virtual methods
.method public getMatrixPointer()I
    .locals 1

    .line 15
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->matrixPointer:I

    return v0
.end method

.method public setMatrixPointer(I)V
    .locals 0
    .param p1, "matrixPointer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrixPointer"
        }
    .end annotation

    .line 20
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->matrixPointer:I

    .line 21
    return-void
.end method
