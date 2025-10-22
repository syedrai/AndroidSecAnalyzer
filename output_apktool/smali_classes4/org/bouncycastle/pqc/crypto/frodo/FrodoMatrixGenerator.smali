.class abstract Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.super Ljava/lang/Object;
.source "FrodoMatrixGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;,
        Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
    }
.end annotation


# instance fields
.field n:I

.field q:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "q"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->n:I

    .line 18
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->q:I

    .line 19
    return-void
.end method


# virtual methods
.method abstract genMatrix([B)[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seedA"
        }
    .end annotation
.end method
