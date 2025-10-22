.class public Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;
.super Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.source "Mul_GF2x.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mul6"
.end annotation


# instance fields
.field private Buffer:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;-><init>()V

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;->Buffer:[J

    .line 19
    return-void
.end method


# virtual methods
.method public mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6
    .param p1, "C"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "A",
            "B"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v5, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;->mul192_no_simd_gf2x([JI[JI[JI)V

    .line 24
    return-void
.end method

.method public mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 7
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "B"
        }
    .end annotation

    .line 34
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v5, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;->Buffer:[J

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;->mul192_no_simd_gf2x_xor([JI[JI[JI[J)V

    .line 35
    return-void
.end method

.method public sqr_gf2x([J[JI)V
    .locals 3
    .param p1, "res"    # [J
    .param p2, "A"    # [J
    .param p3, "a_cp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "a_cp"
        }
    .end annotation

    .line 28
    add-int/lit8 v0, p3, 0x2

    aget-wide v0, p2, v0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR64_NO_SIMD_GF2X([JIJ)V

    .line 29
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR128_NO_SIMD_GF2X([JI[JI)V

    .line 30
    return-void
.end method
