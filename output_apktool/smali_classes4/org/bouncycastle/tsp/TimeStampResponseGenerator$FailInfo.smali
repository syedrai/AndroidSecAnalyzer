.class Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;
.super Lorg/bouncycastle/asn1/DERBitString;
.source "TimeStampResponseGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/TimeStampResponseGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FailInfo"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "failInfoValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failInfoValue"
        }
    .end annotation

    .line 375
    invoke-static {p1}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 376
    return-void
.end method
