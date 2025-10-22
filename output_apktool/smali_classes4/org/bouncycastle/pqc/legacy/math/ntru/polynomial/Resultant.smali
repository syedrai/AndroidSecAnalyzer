.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
.super Ljava/lang/Object;
.source "Resultant.java"


# instance fields
.field public res:Ljava/math/BigInteger;

.field public rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "rho"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .param p2, "res"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rho",
            "res"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    .line 27
    return-void
.end method
