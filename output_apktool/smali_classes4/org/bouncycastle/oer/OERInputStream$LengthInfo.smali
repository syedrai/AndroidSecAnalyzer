.class final Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
.super Ljava/lang/Object;
.source "OERInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LengthInfo"
.end annotation


# instance fields
.field private final length:Ljava/math/BigInteger;

.field private final shortForm:Z


# direct methods
.method static bridge synthetic -$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->intLength()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/math/BigInteger;Z)V
    .locals 0
    .param p1, "length"    # Ljava/math/BigInteger;
    .param p2, "shortForm"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "shortForm"
        }
    .end annotation

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p1, p0, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->length:Ljava/math/BigInteger;

    .line 994
    iput-boolean p2, p0, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->shortForm:Z

    .line 995
    return-void
.end method

.method private intLength()I
    .locals 1

    .line 999
    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->length:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method
