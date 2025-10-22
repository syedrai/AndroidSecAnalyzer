.class public Lorg/bouncycastle/math/ec/ECCurve$F2m;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private infinity:Lorg/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I


# direct methods
.method static bridge synthetic -$$Nest$fgetm(Lorg/bouncycastle/math/ec/ECCurve$F2m;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return p0
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;
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
            "m",
            "k1",
            "k2",
            "k3",
            "a",
            "b"
        }
    .end annotation

    .line 1216
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "m":I
    .end local p2    # "k1":I
    .end local p3    # "k2":I
    .end local p4    # "k3":I
    .end local p5    # "a":Ljava/math/BigInteger;
    .end local p6    # "b":Ljava/math/BigInteger;
    .local v1, "m":I
    .local v2, "k1":I
    .local v3, "k2":I
    .local v4, "k3":I
    .local v5, "a":Ljava/math/BigInteger;
    .local v6, "b":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1217
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "k1",
            "k2",
            "k3",
            "a",
            "b",
            "order",
            "cofactor"
        }
    .end annotation

    .line 1252
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1254
    iput p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1255
    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1256
    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1257
    iput p4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1258
    iput-object p7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 1259
    iput-object p8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 1261
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lorg/bouncycastle/math/ec/ECPoint$F2m;

    .line 1262
    invoke-virtual {p0, p5}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1263
    invoke-virtual {p0, p6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1264
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 1265
    return-void
.end method

.method protected constructor <init>(IIIILorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p6, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "k1",
            "k2",
            "k3",
            "a",
            "b",
            "order",
            "cofactor"
        }
    .end annotation

    .line 1269
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1271
    iput p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1272
    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1273
    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1274
    iput p4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1275
    iput-object p7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 1276
    iput-object p8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 1278
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lorg/bouncycastle/math/ec/ECPoint$F2m;

    .line 1279
    iput-object p5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1280
    iput-object p6, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1281
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 1282
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "k",
            "a",
            "b"
        }
    .end annotation

    .line 1156
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "m":I
    .end local p2    # "k":I
    .end local p3    # "a":Ljava/math/BigInteger;
    .end local p4    # "b":Ljava/math/BigInteger;
    .local v1, "m":I
    .local v2, "k":I
    .local v5, "a":Ljava/math/BigInteger;
    .local v6, "b":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1157
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;
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
            "m",
            "k",
            "a",
            "b",
            "order",
            "cofactor"
        }
    .end annotation

    .line 1184
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "m":I
    .end local p2    # "k":I
    .end local p3    # "a":Ljava/math/BigInteger;
    .end local p4    # "b":Ljava/math/BigInteger;
    .end local p5    # "order":Ljava/math/BigInteger;
    .end local p6    # "cofactor":Ljava/math/BigInteger;
    .local v1, "m":I
    .local v2, "k":I
    .local v5, "a":Ljava/math/BigInteger;
    .local v6, "b":Ljava/math/BigInteger;
    .local v7, "order":Ljava/math/BigInteger;
    .local v8, "cofactor":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1185
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 9

    .line 1286
    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
    .locals 7
    .param p1, "points"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "points",
            "off",
            "len"
        }
    .end annotation

    .line 1378
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    .line 1379
    .local v4, "FE_LONGS":I
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v3, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v5, v0, v2

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    aput v2, v0, v3

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    aput v2, v0, v1

    :goto_0
    move-object v6, v0

    .line 1381
    .local v6, "ks":[I
    mul-int v0, p3, v4

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [J

    .line 1383
    .local v5, "table":[J
    const/4 v0, 0x0

    .line 1384
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 1386
    add-int v2, p2, v1

    aget-object v2, p1, v2

    .line 1387
    .local v2, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v3, v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, v5, v0}, Lorg/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v0, v4

    .line 1388
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v3, v3, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, v5, v0}, Lorg/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v0, v4

    .line 1384
    .end local v2    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1392
    .end local v0    # "pos":I
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;

    move-object v2, p0

    move v3, p3

    .end local p3    # "len":I
    .local v3, "len":I
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;-><init>(Lorg/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V

    return-object v1
.end method

.method protected createDefaultMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 1304
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    new-instance v0, Lorg/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0

    .line 1309
    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->createDefaultMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1333
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "zs"
        }
    .end annotation

    .line 1338
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 4
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1319
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    if-gt v0, v1, :cond_1

    .line 1324
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    or-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1325
    new-array v0, v1, [I

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v1, v0, v2

    goto :goto_0

    .line 1326
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v3, v0, v2

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    aput v2, v0, v1

    :goto_0
    nop

    .line 1328
    .local v0, "ks":[I
    new-instance v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    new-instance v3, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p1}, Lorg/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    return-object v1

    .line 1321
    .end local v0    # "ks":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid in F2m field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 1314
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1343
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lorg/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    .line 1363
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    .line 1368
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    .line 1373
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 1348
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .line 1358
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coord"
        }
    .end annotation

    .line 1291
    sparse-switch p1, :sswitch_data_0

    .line 1298
    const/4 v0, 0x0

    return v0

    .line 1296
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
