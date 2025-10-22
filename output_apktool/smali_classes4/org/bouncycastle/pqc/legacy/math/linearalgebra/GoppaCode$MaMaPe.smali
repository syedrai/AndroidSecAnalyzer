.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;
.super Ljava/lang/Object;
.source "GoppaCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaMaPe"
.end annotation


# instance fields
.field private h:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

.field private p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

.field private s:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)V
    .locals 0
    .param p1, "s"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .param p2, "h"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .param p3, "p"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "h",
            "p"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->s:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 50
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->h:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 51
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    .line 52
    return-void
.end method


# virtual methods
.method public getFirstMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->s:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getPermutation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getSecondMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->h:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    return-object v0
.end method
