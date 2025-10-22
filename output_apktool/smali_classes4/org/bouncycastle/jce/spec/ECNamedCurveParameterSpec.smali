.class public Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
.super Lorg/bouncycastle/jce/spec/ECParameterSpec;
.source "ECNamedCurveParameterSpec.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "curve",
            "G",
            "n"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "curve",
            "G",
            "n",
            "h"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "curve",
            "G",
            "n",
            "h",
            "seed"
        }
    .end annotation

    .line 50
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p2    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lorg/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .end local p5    # "h":Ljava/math/BigInteger;
    .end local p6    # "seed":[B
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .local v2, "G":Lorg/bouncycastle/math/ec/ECPoint;
    .local v3, "n":Ljava/math/BigInteger;
    .local v4, "h":Ljava/math/BigInteger;
    .local v5, "seed":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 52
    iput-object p1, v0, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
