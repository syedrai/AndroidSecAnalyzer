.class Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
.super Ljava/lang/Object;
.source "PolynomialPair.java"


# instance fields
.field private final a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

.field private final b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 0
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .param p2, "b"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    .line 19
    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method

.method public m()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->b:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method

.method public r()Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->a:Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    return-object v0
.end method
