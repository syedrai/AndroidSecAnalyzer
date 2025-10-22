.class final Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;
.super Ljava/lang/Object;
.source "IntSlicer.java"


# instance fields
.field private base:I

.field private final values:[I


# direct methods
.method constructor <init>([II)V
    .locals 0
    .param p1, "values"    # [I
    .param p2, "base"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "base"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    .line 17
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    .line 18
    return-void
.end method


# virtual methods
.method final at(I)I
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method final at(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    return p2
.end method

.method final at(IJ)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr v1, p1

    long-to-int v2, p2

    aput v2, v0, v1

    return v2
.end method

.method final copy()Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;
    .locals 3

    .line 49
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;-><init>([II)V

    return-object v0
.end method

.method final from(I)Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;
    .locals 3
    .param p1, "o"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->values:[I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;-><init>([II)V

    return-object v0
.end method

.method final incBase(I)V
    .locals 1
    .param p1, "paramM"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramM"
        }
    .end annotation

    .line 43
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/IntSlicer;->base:I

    .line 45
    return-void
.end method
