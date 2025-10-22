.class public Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;
.super Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.source "Mul_GF2x.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mul12"
.end annotation


# instance fields
.field private Buffer:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;-><init>()V

    .line 73
    const/16 v0, 0xc

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;->Buffer:[J

    .line 74
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

    .line 78
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;->Buffer:[J

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smmul384_no_simd_gf2x([J[JI[JI[J)V

    .line 79
    return-void
.end method

.method public mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6
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

    .line 89
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;->Buffer:[J

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smmul384_no_simd_gf2x_xor([J[JI[JI[J)V

    .line 90
    return-void
.end method

.method public sqr_gf2x([J[JI)V
    .locals 2
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

    .line 83
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR128_NO_SIMD_GF2X([JI[JI)V

    .line 84
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR256_NO_SIMD_GF2X([JI[JI)V

    .line 85
    return-void
.end method
