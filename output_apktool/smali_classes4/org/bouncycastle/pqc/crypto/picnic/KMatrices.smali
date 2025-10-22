.class Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;
.super Ljava/lang/Object;
.source "KMatrices.java"


# instance fields
.field private columns:I

.field private data:[I

.field private nmatrices:I

.field private rows:I


# direct methods
.method public constructor <init>(III[I)V
    .locals 0
    .param p1, "nmatrices"    # I
    .param p2, "rows"    # I
    .param p3, "columns"    # I
    .param p4, "data"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nmatrices",
            "rows",
            "columns",
            "data"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->nmatrices:I

    .line 13
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    .line 14
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    .line 15
    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->data:[I

    .line 16
    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    return v0
.end method

.method public getData()[I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->data:[I

    return-object v0
.end method

.method public getNmatrices()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->nmatrices:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 25
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->rows:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->columns:I

    mul-int v0, v0, v1

    return v0
.end method
