.class Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;
.super Lcom/google/common/math/ToDoubleRounder;
.source "BigIntegerMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/BigIntegerMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BigIntegerToDoubleRounder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/math/ToDoubleRounder<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    new-instance v0, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;

    invoke-direct {v0}, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;-><init>()V

    sput-object v0, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->INSTANCE:Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Lcom/google/common/math/ToDoubleRounder;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 328
    check-cast p1, Ljava/math/BigInteger;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->minus(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method minus(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "b"    # Ljava/math/BigInteger;
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

    .line 351
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic roundToDoubleArbitrarily(Ljava/lang/Number;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bigInteger"
        }
    .end annotation

    .line 328
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->roundToDoubleArbitrarily(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method roundToDoubleArbitrarily(Ljava/math/BigInteger;)D
    .locals 2
    .param p1, "bigInteger"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bigInteger"
        }
    .end annotation

    .line 336
    invoke-static {p1}, Lcom/google/common/math/DoubleUtils;->bigToDouble(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method bridge synthetic sign(Ljava/lang/Number;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bigInteger"
        }
    .end annotation

    .line 328
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->sign(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method sign(Ljava/math/BigInteger;)I
    .locals 1
    .param p1, "bigInteger"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bigInteger"
        }
    .end annotation

    .line 341
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    return v0
.end method

.method bridge synthetic toX(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "d",
            "mode"
        }
    .end annotation

    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method toX(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "d"    # D
    .param p3, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "d",
            "mode"
        }
    .end annotation

    .line 346
    invoke-static {p1, p2, p3}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
