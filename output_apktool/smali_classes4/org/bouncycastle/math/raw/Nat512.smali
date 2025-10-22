.class public abstract Lorg/bouncycastle/math/raw/Nat512;
.super Ljava/lang/Object;
.source "Nat512.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mul([I[I[I)V
    .locals 17
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "zz"
        }
    .end annotation

    .line 8
    invoke-static/range {p0 .. p2}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 9
    const/16 v3, 0x8

    const/16 v5, 0x10

    const/16 v1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat256;->mul([II[II[II)V

    .line 11
    move-object v12, v4

    const/16 v13, 0x8

    const/16 v14, 0x10

    invoke-static {v12, v13, v12, v14}, Lorg/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v0

    .line 12
    .local v0, "c24":I
    const/4 v15, 0x0

    invoke-static {v12, v15, v12, v13, v15}, Lorg/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    .local v1, "c16":I
    const/16 v2, 0x18

    invoke-static {v12, v2, v12, v14, v1}, Lorg/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v3

    add-int v16, v0, v3

    .line 15
    .end local v0    # "c24":I
    .local v16, "c24":I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .local v10, "dx":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 16
    .local v4, "dy":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object/from16 v8, p0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v0, v1

    .end local v1    # "c16":I
    .local v0, "c16":I
    const/16 v1, 0x8

    const/16 v6, 0x18

    move-object/from16 v2, p1

    move v6, v0

    const/16 v8, 0x18

    move-object/from16 v0, p1

    .end local v0    # "c16":I
    .local v6, "c16":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v1

    if-eq v7, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    .local v0, "neg":Z
    :goto_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v1

    .line 19
    .local v1, "tt":[I
    invoke-static {v10, v4, v1}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 21
    if-eqz v0, :cond_1

    invoke-static {v14, v1, v15, v12, v13}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v14, v1, v15, v12, v13}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v2

    :goto_1
    add-int v2, v16, v2

    .line 22
    .end local v16    # "c24":I
    .local v2, "c24":I
    const/16 v3, 0x20

    invoke-static {v3, v2, v12, v8}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 23
    return-void
.end method

.method public static square([I[I)V
    .locals 12
    .param p0, "x"    # [I
    .param p1, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "zz"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 28
    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->square([II[II)V

    .line 30
    invoke-static {p1, v0, p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v2

    .line 31
    .local v2, "c24":I
    const/4 v3, 0x0

    invoke-static {p1, v3, p1, v0, v3}, Lorg/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    .line 32
    .local v4, "c16":I
    const/16 v5, 0x18

    invoke-static {p1, v5, p1, v1, v4}, Lorg/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v6

    add-int/2addr v2, v6

    .line 34
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 35
    .local v10, "dx":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object v8, p0

    move-object v6, p0

    .end local p0    # "x":[I
    .local v6, "x":[I
    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    .line 37
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object p0

    .line 38
    .local p0, "tt":[I
    invoke-static {v10, p0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 40
    invoke-static {v1, p0, v3, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v2, v0

    .line 41
    const/16 v0, 0x20

    invoke-static {v0, v2, p1, v5}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 42
    return-void
.end method
