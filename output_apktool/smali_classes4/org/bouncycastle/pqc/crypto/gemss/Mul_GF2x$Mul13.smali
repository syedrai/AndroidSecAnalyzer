.class public Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;
.super Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.source "Mul_GF2x.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mul13"
.end annotation


# instance fields
.field private Buffer:[J

.field private Buffer2:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;-><init>()V

    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;->Buffer:[J

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;->Buffer2:[J

    .line 103
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

    .line 107
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;->Buffer:[J

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smmul416_no_simd_gf2x([J[JI[JI[J)V

    .line 108
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

    .line 119
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;->Buffer:[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;->Buffer2:[J

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smmul416_no_simd_gf2x_xor([J[JI[JI[J[J)V

    .line 120
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

    .line 112
    add-int/lit8 v0, p3, 0x6

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR32_NO_SIMD_GF2X(J)J

    move-result-wide v0

    const/16 v2, 0xc

    aput-wide v0, p1, v2

    .line 113
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR128_NO_SIMD_GF2X([JI[JI)V

    .line 114
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR256_NO_SIMD_GF2X([JI[JI)V

    .line 115
    return-void
.end method
