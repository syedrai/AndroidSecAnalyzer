.class final Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;
.super Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;
.source "LTreeAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;
    }
.end annotation


# static fields
.field private static final TYPE:I = 0x1


# instance fields
.field private final lTreeAddress:I

.field private final treeHeight:I

.field private final treeIndex:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;)V

    .line 21
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->-$$Nest$fgetlTreeAddress(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    .line 22
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->-$$Nest$fgettreeHeight(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeHeight:I

    .line 23
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->-$$Nest$fgettreeIndex(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    return-void
.end method


# virtual methods
.method protected getLTreeAddress()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    return v0
.end method

.method protected getTreeHeight()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeHeight:I

    return v0
.end method

.method protected getTreeIndex()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    return v0
.end method

.method protected toByteArray()[B
    .locals 3

    .line 74
    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v0

    .line 75
    .local v0, "byteRepresentation":[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 76
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeHeight:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 77
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 78
    return-object v0
.end method
