.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;
.super Ljava/lang/Object;
.source "McElieceParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field public static final DEFAULT_M:I = 0xb

.field public static final DEFAULT_T:I = 0x32


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private fieldPoly:I

.field private m:I

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(II)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "keysize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keysize"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "t"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    .line 104
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "poly"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "t",
            "poly"
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(IIILorg/bouncycastle/crypto/Digest;)V

    .line 152
    return-void
.end method

.method public constructor <init>(IIILorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "poly"    # I
    .param p4, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "t",
            "poly",
            "digest"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    .line 168
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 172
    const/16 v1, 0x20

    if-gt p1, v1, :cond_3

    .line 176
    shl-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    .line 177
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    .line 178
    if-ltz p2, :cond_2

    .line 182
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    if-gt p2, v0, :cond_1

    .line 186
    invoke-static {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 187
    invoke-static {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 196
    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 197
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IILorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "t",
            "digest"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    .line 120
    const/16 v1, 0x20

    if-gt p1, v1, :cond_2

    .line 124
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    .line 125
    shl-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    .line 126
    if-ltz p2, :cond_1

    .line 130
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    if-gt p2, v0, :cond_0

    .line 134
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    .line 135
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 136
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 137
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "keysize"    # I
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keysize",
            "digest"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    .line 81
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    .line 82
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    if-ge v1, p1, :cond_0

    .line 84
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    shl-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    .line 85
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    goto :goto_0

    .line 87
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    ushr-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    .line 88
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    .line 89
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 90
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 91
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 53
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getFieldPoly()I
    .locals 1

    .line 228
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->fieldPoly:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 204
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->m:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 212
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    .line 220
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->t:I

    return v0
.end method
