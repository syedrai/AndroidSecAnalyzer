.class public final Lorg/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static append([BB)[B
    .locals 3
    .param p0, "a"    # [B
    .param p1, "b"    # B
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

    .line 813
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 815
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 818
    :cond_0
    array-length v1, p0

    .line 819
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    .line 820
    .local v2, "result":[B
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    aput-byte p1, v2, v1

    .line 822
    return-object v2
.end method

.method public static append([II)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # I
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

    .line 841
    if-nez p0, :cond_0

    .line 843
    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    .line 846
    :cond_0
    array-length v0, p0

    .line 847
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 848
    .local v1, "result":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    aput p1, v1, v0

    .line 850
    return-object v1
.end method

.method public static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
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

    .line 855
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 857
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    return-object v1

    .line 860
    :cond_0
    array-length v1, p0

    .line 861
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 862
    .local v2, "result":[Ljava/lang/String;
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    aput-object p1, v2, v1

    .line 864
    return-object v2
.end method

.method public static append([SS)[S
    .locals 3
    .param p0, "a"    # [S
    .param p1, "b"    # S
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

    .line 827
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 829
    const/4 v1, 0x1

    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 832
    :cond_0
    array-length v1, p0

    .line 833
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    .line 834
    .local v2, "result":[S
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 835
    aput-short p1, v2, v1

    .line 836
    return-object v2
.end method

.method public static areAllZeroes([BII)Z
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "bits":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 21
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    or-int/2addr v0, v2

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static areEqual([BII[BII)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [B
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
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
            "a",
            "aFromIndex",
            "aToIndex",
            "b",
            "bFromIndex",
            "bToIndex"
        }
    .end annotation

    .line 38
    sub-int v0, p2, p1

    .line 39
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 41
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 43
    return v2

    .line 46
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 48
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p4, v3

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_1

    .line 50
    return v2

    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static areEqual([B[B)Z
    .locals 1
    .param p0, "a"    # [B
    .param p1, "b"    # [B
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

    .line 33
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static areEqual([C[C)Z
    .locals 1
    .param p0, "a"    # [C
    .param p1, "b"    # [C
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

    .line 59
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public static areEqual([I[I)Z
    .locals 1
    .param p0, "a"    # [I
    .param p1, "b"    # [I
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

    .line 64
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static areEqual([J[J)Z
    .locals 1
    .param p0, "a"    # [J
    .param p1, "b"    # [J
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

    .line 69
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;
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

    .line 74
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static areEqual([S[S)Z
    .locals 1
    .param p0, "a"    # [S
    .param p1, "b"    # [S
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

    .line 79
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0
.end method

.method public static areEqual([Z[Z)Z
    .locals 1
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z
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

    .line 28
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static clear([B)V
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1198
    if-eqz p0, :cond_0

    .line 1200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1202
    :cond_0
    return-void
.end method

.method public static clear([I)V
    .locals 1
    .param p0, "data"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1206
    if-eqz p0, :cond_0

    .line 1208
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1210
    :cond_0
    return-void
.end method

.method public static clone([B)[B
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 593
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public static clone([B[B)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "existing"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "existing"
        }
    .end annotation

    .line 623
    if-nez p0, :cond_0

    .line 625
    const/4 v0, 0x0

    return-object v0

    .line 627
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 631
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    return-object p1

    .line 629
    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static clone([C)[C
    .locals 1
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 598
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    :goto_0
    return-object v0
.end method

.method public static clone([I)[I
    .locals 1
    .param p0, "data"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 603
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public static clone([J)[J
    .locals 1
    .param p0, "data"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 608
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_0
    return-object v0
.end method

.method public static clone([J[J)[J
    .locals 2
    .param p0, "data"    # [J
    .param p1, "existing"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "existing"
        }
    .end annotation

    .line 637
    if-nez p0, :cond_0

    .line 639
    const/4 v0, 0x0

    return-object v0

    .line 641
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 645
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    return-object p1

    .line 643
    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 1
    .param p0, "data"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 618
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/BigInteger;

    :goto_0
    return-object v0
.end method

.method public static clone([S)[S
    .locals 1
    .param p0, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 613
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    :goto_0
    return-object v0
.end method

.method public static clone([Z)[Z
    .locals 1
    .param p0, "data"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 588
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_0
    return-object v0
.end method

.method public static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 651
    if-nez p0, :cond_0

    .line 653
    const/4 v0, 0x0

    return-object v0

    .line 656
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[B

    .line 658
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 660
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static clone([[[B)[[[B
    .locals 3
    .param p0, "data"    # [[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 668
    if-nez p0, :cond_0

    .line 670
    const/4 v0, 0x0

    return-object v0

    .line 673
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[[B

    .line 675
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 677
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static compareUnsigned([B[B)I
    .locals 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B
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

    .line 195
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 197
    return v0

    .line 199
    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    .line 201
    return v1

    .line 203
    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 205
    return v2

    .line 207
    :cond_2
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 208
    .local v3, "minLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 210
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .local v5, "aVal":I
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    .line 211
    .local v6, "bVal":I
    if-ge v5, v6, :cond_3

    .line 213
    return v1

    .line 215
    :cond_3
    if-le v5, v6, :cond_4

    .line 217
    return v2

    .line 208
    .end local v5    # "aVal":I
    .end local v6    # "bVal":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    .end local v4    # "i":I
    :cond_5
    array-length v4, p0

    array-length v5, p1

    if-ge v4, v5, :cond_6

    .line 222
    return v1

    .line 224
    :cond_6
    array-length v1, p0

    array-length v4, p1

    if-le v1, v4, :cond_7

    .line 226
    return v2

    .line 228
    :cond_7
    return v0
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
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

    .line 869
    if-nez p0, :cond_0

    .line 872
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 874
    :cond_0
    if-nez p1, :cond_1

    .line 877
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 880
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 881
    .local v0, "r":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    return-object v0
.end method

.method public static concatenate([B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    .line 907
    if-nez p0, :cond_0

    .line 909
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 911
    :cond_0
    if-nez p1, :cond_1

    .line 913
    invoke-static {p0, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 915
    :cond_1
    if-nez p2, :cond_2

    .line 917
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 920
    :cond_2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 921
    .local v0, "r":[B
    const/4 v1, 0x0

    .line 922
    .local v1, "pos":I
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    .line 923
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    .line 924
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    return-object v0
.end method

.method public static concatenate([B[B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 930
    if-nez p0, :cond_0

    .line 932
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 934
    :cond_0
    if-nez p1, :cond_1

    .line 936
    invoke-static {p0, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 938
    :cond_1
    if-nez p2, :cond_2

    .line 940
    invoke-static {p0, p1, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 942
    :cond_2
    if-nez p3, :cond_3

    .line 944
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 947
    :cond_3
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 948
    .local v0, "r":[B
    const/4 v1, 0x0

    .line 949
    .local v1, "pos":I
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    .line 950
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    .line 951
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    add-int/2addr v1, v2

    .line 952
    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    return-object v0
.end method

.method public static concatenate([[B)[B
    .locals 7
    .param p0, "arrays"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrays"
        }
    .end annotation

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 961
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    .end local v1    # "i":I
    :cond_0
    new-array v1, v0, [B

    .line 966
    .local v1, "rv":[B
    const/4 v2, 0x0

    .line 967
    .local v2, "offSet":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p0

    if-eq v3, v4, :cond_1

    .line 969
    aget-object v4, p0, v3

    aget-object v5, p0, v3

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 970
    aget-object v4, p0, v3

    array-length v4, v4

    add-int/2addr v2, v4

    .line 967
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 973
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public static concatenate([I[I)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I
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

    .line 978
    if-nez p0, :cond_0

    .line 981
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 983
    :cond_0
    if-nez p1, :cond_1

    .line 986
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 989
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 990
    .local v0, "r":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    return-object v0
.end method

.method public static concatenate([S[S)[S
    .locals 4
    .param p0, "a"    # [S
    .param p1, "b"    # [S
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

    .line 888
    if-nez p0, :cond_0

    .line 891
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 893
    :cond_0
    if-nez p1, :cond_1

    .line 896
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 899
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 900
    .local v0, "r":[S
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    return-object v0
.end method

.method public static constantTimeAreEqual(I[BI[BI)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .param p3, "b"    # [B
    .param p4, "bOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "a",
            "aOff",
            "b",
            "bOff"
        }
    .end annotation

    .line 123
    if-eqz p1, :cond_6

    .line 127
    if-eqz p3, :cond_5

    .line 131
    if-ltz p0, :cond_4

    .line 135
    array-length v0, p1

    sub-int/2addr v0, p0

    if-gt p2, v0, :cond_3

    .line 139
    array-length v0, p3

    sub-int/2addr v0, p0

    if-gt p4, v0, :cond_2

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 147
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    add-int v3, p4, v1

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 141
    .end local v0    # "d":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'bOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'aOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'len\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'b\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'a\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 7
    .param p0, "expected"    # [B
    .param p1, "supplied"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expected",
            "supplied"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 100
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 102
    return v1

    .line 105
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_2

    array-length v2, p0

    goto :goto_0

    :cond_2
    array-length v2, p1

    .line 107
    .local v2, "len":I
    :goto_0
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    .line 109
    .local v3, "nonEqual":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-eq v4, v2, :cond_3

    .line 111
    aget-byte v5, p0, v4

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 113
    .end local v4    # "i":I
    :cond_3
    move v4, v2

    .restart local v4    # "i":I
    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 115
    aget-byte v5, p1, v4

    aget-byte v6, p1, v4

    not-int v6, v6

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 118
    .end local v4    # "i":I
    :cond_4
    if-nez v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 97
    .end local v2    # "len":I
    .end local v3    # "nonEqual":I
    :cond_6
    :goto_3
    return v0
.end method

.method public static constantTimeAreEqual([C[C)Z
    .locals 7
    .param p0, "expected"    # [C
    .param p1, "supplied"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expected",
            "supplied"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 172
    return v1

    .line 175
    :cond_1
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 177
    .local v2, "len":I
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    .line 180
    .local v3, "nonEqual":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eq v4, v2, :cond_2

    .line 182
    aget-char v5, p0, v4

    aget-char v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .end local v4    # "i":I
    :cond_2
    move v4, v2

    .restart local v4    # "i":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 187
    aget-char v5, p1, v4

    int-to-byte v5, v5

    aget-char v6, p1, v4

    not-int v6, v6

    int-to-byte v6, v6

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 190
    .end local v4    # "i":I
    :cond_3
    if-nez v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 167
    .end local v2    # "len":I
    .end local v3    # "nonEqual":I
    :cond_5
    :goto_2
    return v0
.end method

.method public static contains([BB)Z
    .locals 2
    .param p0, "a"    # [B
    .param p1, "val"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 247
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 249
    const/4 v1, 0x1

    return v1

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static contains([CC)Z
    .locals 2
    .param p0, "a"    # [C
    .param p1, "val"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 259
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 261
    const/4 v1, 0x1

    return v1

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 271
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 273
    const/4 v1, 0x1

    return v1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static contains([JJ)Z
    .locals 4
    .param p0, "a"    # [J
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 283
    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 285
    const/4 v1, 0x1

    return v1

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "a"    # [S
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 295
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 297
    const/4 v1, 0x1

    return v1

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .param p0, "a"    # [Z
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 235
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 237
    const/4 v1, 0x1

    return v1

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "original"    # [B
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newLength"
        }
    .end annotation

    .line 692
    new-array v0, p1, [B

    .line 693
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 3
    .param p0, "original"    # [C
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newLength"
        }
    .end annotation

    .line 699
    new-array v0, p1, [C

    .line 700
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "original"    # [I
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newLength"
        }
    .end annotation

    .line 706
    new-array v0, p1, [I

    .line 707
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "original"    # [J
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newLength"
        }
    .end annotation

    .line 713
    new-array v0, p1, [J

    .line 714
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    return-object v0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "original"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newLength"
        }
    .end annotation

    .line 727
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 728
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    return-object v0
.end method

.method public static copyOf([SI)[S
    .locals 3
    .param p0, "original"    # [S
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newLength"
        }
    .end annotation

    .line 720
    new-array v0, p1, [S

    .line 721
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 3
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newLength"
        }
    .end annotation

    .line 685
    new-array v0, p1, [Z

    .line 686
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 4
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "from",
            "to"
        }
    .end annotation

    .line 755
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 756
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 757
    .local v1, "copy":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    return-object v1
.end method

.method public static copyOfRange([CII)[C
    .locals 4
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "from",
            "to"
        }
    .end annotation

    .line 763
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 764
    .local v0, "newLength":I
    new-array v1, v0, [C

    .line 765
    .local v1, "copy":[C
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    return-object v1
.end method

.method public static copyOfRange([III)[I
    .locals 4
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "from",
            "to"
        }
    .end annotation

    .line 771
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 772
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 773
    .local v1, "copy":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    return-object v1
.end method

.method public static copyOfRange([JII)[J
    .locals 4
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "from",
            "to"
        }
    .end annotation

    .line 779
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 780
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 781
    .local v1, "copy":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    return-object v1
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4
    .param p0, "original"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "from",
            "to"
        }
    .end annotation

    .line 795
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 796
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 797
    .local v1, "copy":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 798
    return-object v1
.end method

.method public static copyOfRange([SII)[S
    .locals 4
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "from",
            "to"
        }
    .end annotation

    .line 787
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 788
    .local v0, "newLength":I
    new-array v1, v0, [S

    .line 789
    .local v1, "copy":[S
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    return-object v1
.end method

.method public static copyOfRange([ZII)[Z
    .locals 4
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "from",
            "to"
        }
    .end annotation

    .line 734
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 735
    .local v0, "newLength":I
    new-array v1, v0, [Z

    .line 736
    .local v1, "copy":[Z
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 737
    return-object v1
.end method

.method public static fill([BB)V
    .locals 0
    .param p0, "a"    # [B
    .param p1, "val"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 315
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 316
    return-void
.end method

.method public static fill([BIIB)V
    .locals 0
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex",
            "val"
        }
    .end annotation

    .line 320
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 321
    return-void
.end method

.method public static fill([CC)V
    .locals 0
    .param p0, "a"    # [C
    .param p1, "val"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 325
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    .line 326
    return-void
.end method

.method public static fill([CIIC)V
    .locals 0
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex",
            "val"
        }
    .end annotation

    .line 330
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 331
    return-void
.end method

.method public static fill([II)V
    .locals 0
    .param p0, "a"    # [I
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 335
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 336
    return-void
.end method

.method public static fill([IIII)V
    .locals 0
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex",
            "val"
        }
    .end annotation

    .line 340
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 341
    return-void
.end method

.method public static fill([JIIJ)V
    .locals 0
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex",
            "val"
        }
    .end annotation

    .line 350
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 351
    return-void
.end method

.method public static fill([JJ)V
    .locals 0
    .param p0, "a"    # [J
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 345
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 346
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex",
            "val"
        }
    .end annotation

    .line 360
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 361
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 355
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method public static fill([SIIS)V
    .locals 0
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex",
            "val"
        }
    .end annotation

    .line 370
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    .line 371
    return-void
.end method

.method public static fill([SS)V
    .locals 0
    .param p0, "a"    # [S
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 365
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    .line 366
    return-void
.end method

.method public static fill([ZIIZ)V
    .locals 0
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex",
            "val"
        }
    .end annotation

    .line 310
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 311
    return-void
.end method

.method public static fill([ZZ)V
    .locals 0
    .param p0, "a"    # [Z
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "val"
        }
    .end annotation

    .line 305
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 306
    return-void
.end method

.method private static getLength(II)I
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .line 803
    sub-int v0, p1, p0

    .line 804
    .local v0, "newLength":I
    if-ltz v0, :cond_0

    .line 808
    return v0

    .line 806
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hashCode([B)I
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 375
    if-nez p0, :cond_0

    .line 377
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_0
    array-length v0, p0

    .line 381
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 383
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 385
    mul-int/lit16 v1, v1, 0x101

    .line 386
    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    .line 389
    :cond_1
    return v1
.end method

.method public static hashCode([BII)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "off",
            "len"
        }
    .end annotation

    .line 394
    if-nez p0, :cond_0

    .line 396
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_0
    move v0, p2

    .line 400
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 402
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 404
    mul-int/lit16 v1, v1, 0x101

    .line 405
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_0

    .line 408
    :cond_1
    return v1
.end method

.method public static hashCode([C)I
    .locals 3
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 413
    if-nez p0, :cond_0

    .line 415
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_0
    array-length v0, p0

    .line 419
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 421
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 423
    mul-int/lit16 v1, v1, 0x101

    .line 424
    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    .line 427
    :cond_1
    return v1
.end method

.method public static hashCode([I)I
    .locals 3
    .param p0, "data"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 444
    if-nez p0, :cond_0

    .line 446
    const/4 v0, 0x0

    return v0

    .line 449
    :cond_0
    array-length v0, p0

    .line 450
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 452
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 454
    mul-int/lit16 v1, v1, 0x101

    .line 455
    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    .line 458
    :cond_1
    return v1
.end method

.method public static hashCode([III)I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "off",
            "len"
        }
    .end annotation

    .line 463
    if-nez p0, :cond_0

    .line 465
    const/4 v0, 0x0

    return v0

    .line 468
    :cond_0
    move v0, p2

    .line 469
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 471
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 473
    mul-int/lit16 v1, v1, 0x101

    .line 474
    add-int v2, p1, v0

    aget v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_0

    .line 477
    :cond_1
    return v1
.end method

.method public static hashCode([J)I
    .locals 6
    .param p0, "data"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 482
    if-nez p0, :cond_0

    .line 484
    const/4 v0, 0x0

    return v0

    .line 487
    :cond_0
    array-length v0, p0

    .line 488
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 490
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 492
    aget-wide v2, p0, v0

    .line 493
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 494
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 495
    mul-int/lit16 v1, v1, 0x101

    .line 496
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v5, v4

    xor-int/2addr v1, v5

    .line 497
    .end local v2    # "di":J
    goto :goto_0

    .line 499
    :cond_1
    return v1
.end method

.method public static hashCode([JII)I
    .locals 6
    .param p0, "data"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "off",
            "len"
        }
    .end annotation

    .line 504
    if-nez p0, :cond_0

    .line 506
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_0
    move v0, p2

    .line 510
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 512
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 514
    add-int v2, p1, v0

    aget-wide v2, p0, v2

    .line 515
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 516
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 517
    mul-int/lit16 v1, v1, 0x101

    .line 518
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v5, v4

    xor-int/2addr v1, v5

    .line 519
    .end local v2    # "di":J
    goto :goto_0

    .line 521
    :cond_1
    return v1
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3
    .param p0, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 569
    if-nez p0, :cond_0

    .line 571
    const/4 v0, 0x0

    return v0

    .line 574
    :cond_0
    array-length v0, p0

    .line 575
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 577
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 579
    mul-int/lit16 v1, v1, 0x101

    .line 580
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    .line 583
    :cond_1
    return v1
.end method

.method public static hashCode([S)I
    .locals 3
    .param p0, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 550
    if-nez p0, :cond_0

    .line 552
    const/4 v0, 0x0

    return v0

    .line 555
    :cond_0
    array-length v0, p0

    .line 556
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 558
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 560
    mul-int/lit16 v1, v1, 0x101

    .line 561
    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_0

    .line 564
    :cond_1
    return v1
.end method

.method public static hashCode([[I)I
    .locals 4
    .param p0, "ints"    # [[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ints"
        }
    .end annotation

    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 436
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static hashCode([[S)I
    .locals 4
    .param p0, "shorts"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shorts"
        }
    .end annotation

    .line 538
    const/4 v0, 0x0

    .line 540
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 542
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static hashCode([[[S)I
    .locals 4
    .param p0, "shorts"    # [[[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shorts"
        }
    .end annotation

    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 530
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static isNullOrContainsNull([Ljava/lang/Object;)Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1214
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1216
    return v0

    .line 1218
    :cond_0
    array-length v1, p0

    .line 1219
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1221
    aget-object v3, p0, v2

    if-nez v3, :cond_1

    .line 1223
    return v0

    .line 1219
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1226
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isNullOrEmpty([B)Z
    .locals 2
    .param p0, "array"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1231
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNullOrEmpty([I)Z
    .locals 2
    .param p0, "array"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1236
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1241
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static prepend([BB)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # B
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

    .line 997
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 999
    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 1002
    :cond_0
    array-length v2, p0

    .line 1003
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    .line 1004
    .local v3, "result":[B
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    aput-byte p1, v3, v0

    .line 1006
    return-object v3
.end method

.method public static prepend([II)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # I
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

    .line 1025
    if-nez p0, :cond_0

    .line 1027
    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    .line 1030
    :cond_0
    array-length v0, p0

    .line 1031
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 1032
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1033
    aput p1, v1, v2

    .line 1034
    return-object v1
.end method

.method public static prepend([SS)[S
    .locals 4
    .param p0, "a"    # [S
    .param p1, "b"    # S
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

    .line 1011
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 1013
    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 1016
    :cond_0
    array-length v2, p0

    .line 1017
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [S

    .line 1018
    .local v3, "result":[S
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    aput-short p1, v3, v0

    .line 1020
    return-object v3
.end method

.method public static reverse([B[B)V
    .locals 3
    .param p0, "input"    # [B
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 1075
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1076
    .local v0, "last":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 1078
    sub-int v2, v0, v1

    aget-byte v2, p0, v2

    aput-byte v2, p1, v1

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static reverse([B)[B
    .locals 4
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1039
    if-nez p0, :cond_0

    .line 1041
    const/4 v0, 0x0

    return-object v0

    .line 1044
    :cond_0
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1045
    .local v1, "p2":I
    new-array v2, v1, [B

    .line 1047
    .local v2, "result":[B
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1049
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget-byte v0, p0, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_0

    .line 1052
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_1
    return-object v2
.end method

.method public static reverse([I)[I
    .locals 4
    .param p0, "a"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1057
    if-nez p0, :cond_0

    .line 1059
    const/4 v0, 0x0

    return-object v0

    .line 1062
    :cond_0
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1063
    .local v1, "p2":I
    new-array v2, v1, [I

    .line 1065
    .local v2, "result":[I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1067
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget v0, p0, v0

    aput v0, v2, v1

    move v0, v3

    goto :goto_0

    .line 1070
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_1
    return-object v2
.end method

.method public static reverseInPlace([BII)V
    .locals 5
    .param p0, "a"    # [B
    .param p1, "aOff"    # I
    .param p2, "aLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "aOff",
            "aLen"
        }
    .end annotation

    .line 1102
    move v0, p1

    .local v0, "p1":I
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .line 1103
    .local v1, "p2":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1105
    aget-byte v2, p0, v0

    .local v2, "t1":B
    aget-byte v3, p0, v1

    .line 1106
    .local v3, "t2":B
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput-byte v3, p0, v0

    .line 1107
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput-byte v2, p0, v1

    .line 1108
    .end local v2    # "t1":B
    .end local v3    # "t2":B
    move v1, v0

    move v0, v4

    goto :goto_0

    .line 1109
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_0
    return-void
.end method

.method public static reverseInPlace([B)[B
    .locals 5
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1084
    if-nez p0, :cond_0

    .line 1086
    const/4 v0, 0x0

    return-object v0

    .line 1089
    :cond_0
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1090
    .local v1, "p2":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1092
    aget-byte v2, p0, v0

    .local v2, "t1":B
    aget-byte v3, p0, v1

    .line 1093
    .local v3, "t2":B
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput-byte v3, p0, v0

    .line 1094
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput-byte v2, p0, v1

    .line 1095
    .end local v2    # "t1":B
    .end local v3    # "t2":B
    move v1, v0

    move v0, v4

    goto :goto_0

    .line 1097
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_1
    return-object p0
.end method

.method public static reverseInPlace([I)[I
    .locals 5
    .param p0, "a"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1131
    if-nez p0, :cond_0

    .line 1133
    const/4 v0, 0x0

    return-object v0

    .line 1136
    :cond_0
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1137
    .local v1, "p2":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1139
    aget v2, p0, v0

    .local v2, "t1":I
    aget v3, p0, v1

    .line 1140
    .local v3, "t2":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput v3, p0, v0

    .line 1141
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput v2, p0, v1

    .line 1142
    .end local v2    # "t1":I
    .end local v3    # "t2":I
    move v1, v0

    move v0, v4

    goto :goto_0

    .line 1144
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_1
    return-object p0
.end method

.method public static reverseInPlace([S)[S
    .locals 5
    .param p0, "a"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1113
    if-nez p0, :cond_0

    .line 1115
    const/4 v0, 0x0

    return-object v0

    .line 1118
    :cond_0
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1119
    .local v1, "p2":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1121
    aget-short v2, p0, v0

    .local v2, "t1":S
    aget-short v3, p0, v1

    .line 1122
    .local v3, "t2":S
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput-short v3, p0, v0

    .line 1123
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput-short v2, p0, v1

    .line 1124
    .end local v2    # "t1":S
    .end local v3    # "t2":S
    move v1, v0

    move v0, v4

    goto :goto_0

    .line 1126
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_1
    return-object p0
.end method
