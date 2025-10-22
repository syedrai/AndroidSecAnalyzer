.class public Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;
.super Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.source "Mul_GF2x.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mul17"
.end annotation


# instance fields
.field private AA:[J

.field private BB:[J

.field private Buffer1:[J

.field private Buffer2:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;-><init>()V

    .line 130
    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->AA:[J

    .line 131
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->BB:[J

    .line 132
    const/16 v0, 0x11

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->Buffer1:[J

    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->Buffer2:[J

    .line 134
    return-void
.end method


# virtual methods
.method public mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 8
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

    .line 138
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->AA:[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->BB:[J

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->Buffer1:[J

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smmul544_no_simd_gf2x([J[JI[JI[J[J[J)V

    .line 139
    return-void
.end method

.method public mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 9
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

    .line 150
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->AA:[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->BB:[J

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->Buffer1:[J

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;->Buffer2:[J

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smmul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V

    .line 151
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

    .line 143
    add-int/lit8 v0, p3, 0x8

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR32_NO_SIMD_GF2X(J)J

    move-result-wide v0

    const/16 v2, 0x10

    aput-wide v0, p1, v2

    .line 144
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR256_NO_SIMD_GF2X([JI[JI)V

    .line 145
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->-$$Nest$smSQR256_NO_SIMD_GF2X([JI[JI)V

    .line 146
    return-void
.end method
