.class Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
.super Lorg/bouncycastle/asn1/tsp/PartialHashtree;
.source "ERSArchiveTimeStampGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexedPartialHashtree"
.end annotation


# instance fields
.field final order:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "order"    # I
    .param p2, "partial"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "order",
            "partial"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;-><init>([B)V

    .line 220
    iput p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->order:I

    .line 221
    return-void
.end method

.method synthetic constructor <init>(I[BLorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;-><init>(I[B)V

    return-void
.end method

.method private constructor <init>(I[[B)V
    .locals 0
    .param p1, "order"    # I
    .param p2, "partial"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "order",
            "partial"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;-><init>([[B)V

    .line 226
    iput p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->order:I

    .line 227
    return-void
.end method

.method synthetic constructor <init>(I[[BLorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;-><init>(I[[B)V

    return-void
.end method
