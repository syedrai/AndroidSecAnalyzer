.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.source "GF2nONBElement.java"


# static fields
.field private static final MAXLONG:I = 0x40

.field private static final mBitmask:[J

.field private static final mIBY64:[I

.field private static final mMaxmask:[J


# instance fields
.field private mBit:I

.field private mLength:I

.field private mPol:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const/16 v0, 0x40

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    .line 48
    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    .line 75
    const/16 v0, 0x180

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    return-void

    :array_0
    .array-data 8
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff
        0x7fffffff
        0xffffffffL
        0x1ffffffffL
        0x3ffffffffL
        0x7ffffffffL
        0xfffffffffL
        0x1fffffffffL
        0x3fffffffffL
        0x7fffffffffL
        0xffffffffffL
        0x1ffffffffffL
        0x3ffffffffffL
        0x7ffffffffffL
        0xfffffffffffL
        0x1fffffffffffL
        0x3fffffffffffL
        0x7fffffffffffL
        0xffffffffffffL
        0x1ffffffffffffL
        0x3ffffffffffffL    # 5.562684646268E-309
        0x7ffffffffffffL
        0xfffffffffffffL
        0x1fffffffffffffL
        0x3fffffffffffffL
        0x7fffffffffffffL
        0xffffffffffffffL
        0x1ffffffffffffffL    # 4.77830972673648E-299
        0x3ffffffffffffffL
        0x7ffffffffffffffL
        0xfffffffffffffffL
        0x1fffffffffffffffL
        0x3fffffffffffffffL    # 1.9999999999999998
        0x7fffffffffffffffL
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V
    .locals 1
    .param p1, "gf2n"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gf2n"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 215
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 216
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    .line 218
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 219
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 220
    invoke-direct {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    .line 221
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "gf2n"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;
    .param p2, "val"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gf2n",
            "val"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 179
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    .line 181
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    .line 182
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 183
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 184
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign(Ljava/math/BigInteger;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V
    .locals 7
    .param p1, "gf2n"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;
    .param p2, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gf2n",
            "rand"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    .line 135
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    .line 136
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 137
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 138
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 140
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "j":I
    :cond_0
    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 145
    .local v2, "last":J
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v4, v1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v1, v1, 0x40

    ushr-long v5, v2, v1

    aput-wide v5, v0, v4

    .line 146
    .end local v2    # "last":J
    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v1, v3

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v1, v1, 0x40

    ushr-long v1, v4, v1

    aput-wide v1, v0, v3

    .line 152
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[B)V
    .locals 1
    .param p1, "gf2n"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;
    .param p2, "e"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gf2n",
            "e"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 162
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    .line 164
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    .line 165
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 166
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 167
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([B)V

    .line 168
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V
    .locals 1
    .param p1, "gf2n"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;
    .param p2, "val"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gf2n",
            "val"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 196
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 197
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    .line 198
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    .line 199
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 200
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 201
    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    .locals 6
    .param p0, "gf2n"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gf2n"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    .line 254
    .local v0, "mLength":I
    new-array v1, v0, [J

    .line 257
    .local v1, "polynomial":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 259
    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v3, v4

    aput-wide v4, v1, v2

    .line 263
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v2
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    .locals 2
    .param p0, "gf2n"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gf2n"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v0, v0, [J

    .line 242
    .local v0, "polynomial":[J
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v1
.end method

.method private assign(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "val"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([B)V

    .line 299
    return-void
.end method

.method private assign([B)V
    .locals 9
    .param p1, "val"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 322
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 323
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, v0, 0x3

    aget-wide v3, v1, v2

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget-byte v5, p1, v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    and-int/lit8 v7, v0, 0x7

    shl-int/lit8 v7, v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method private assign([J)V
    .locals 3
    .param p1, "val"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-void
.end method

.method private getElement()[J
    .locals 4

    .line 452
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v0, v0, [J

    .line 453
    .local v0, "result":[J
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    return-object v0
.end method

.method private getElementReverseOrder()[J
    .locals 8

    .line 466
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v0, v0, [J

    .line 467
    .local v0, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-ge v1, v2, :cond_1

    .line 469
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    ushr-int/lit8 v2, v1, 0x6

    aget-wide v3, v0, v2

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v6, v1, 0x3f

    aget-wide v6, v5, v6

    or-long/2addr v3, v6

    aput-wide v3, v0, v2

    .line 467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .param p1, "addend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 499
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    .line 500
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 501
    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .locals 7
    .param p1, "addend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 512
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v0, v1, :cond_0

    .line 523
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v1, v0

    move-object v4, p1

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v4, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v5, v4, v0

    xor-long/2addr v2, v5

    aput-wide v2, v1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 518
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 514
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method assignOne()V
    .locals 5

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    aput-wide v3, v0, v1

    .line 289
    return-void
.end method

.method assignZero()V
    .locals 1

    .line 275
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 276
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 230
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-nez v1, :cond_0

    goto :goto_1

    .line 390
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    .line 392
    .local v1, "otherElem":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v2, v3, :cond_2

    .line 394
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v3, v2

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 396
    return v0

    .line 392
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 387
    .end local v1    # "otherElem":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    :cond_3
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    .line 534
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    .line 535
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->increaseThis()V

    .line 536
    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 545
    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 817
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    .line 818
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->invertThis()V

    .line 819
    return-object v0
.end method

.method public invertThis()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_5

    .line 835
    const/16 v0, 0x1f

    .line 838
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "found":Z
    :goto_0
    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    if-ltz v0, :cond_1

    .line 841
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v7, v6, v0

    and-long/2addr v4, v7

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 843
    const/4 v1, 0x1

    .line 838
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 846
    .end local v1    # "found":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 848
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v1

    .line 849
    .local v1, "m":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    .line 851
    .local v4, "n":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    const/4 v5, 0x1

    .line 853
    .local v5, "k":I
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 855
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 856
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_2
    if-gt v7, v5, :cond_2

    .line 858
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->squareThis()V

    .line 856
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 861
    .end local v7    # "j":I
    :cond_2
    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 863
    shl-int/lit8 v5, v5, 0x1

    .line 864
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v7, v7, -0x1

    int-to-long v7, v7

    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v9, v6

    and-long/2addr v7, v10

    cmp-long v9, v7, v2

    if-eqz v9, :cond_3

    .line 866
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->squareThis()V

    .line 868
    invoke-virtual {v4, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 870
    add-int/lit8 v5, v5, 0x1

    .line 853
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 873
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->squareThis()V

    .line 874
    return-void

    .line 833
    .end local v0    # "r":I
    .end local v1    # "m":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v4    # "n":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v5    # "k":I
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public isOne()Z
    .locals 9

    .line 359
    const/4 v0, 0x1

    .line 361
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 363
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v5, v2, v1

    const-wide/16 v7, -0x1

    and-long/2addr v5, v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_3

    .line 369
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v2, v3

    aget-wide v5, v1, v2

    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v2, v3

    aget-wide v7, v1, v2

    and-long v1, v5, v7

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v6, v3

    aget-wide v6, v5, v6

    cmp-long v5, v1, v6

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    move v0, v3

    .line 373
    :cond_3
    return v0
.end method

.method public isZero()Z
    .locals 7

    .line 341
    const/4 v0, 0x1

    .line 343
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 345
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, -0x1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .param p1, "factor"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 556
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    .line 557
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 558
    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .locals 28
    .param p1, "factor"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_17

    .line 575
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v3, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 580
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    goto/16 :goto_c

    .line 587
    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 588
    .local v2, "a":[J
    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v3, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 589
    .local v3, "b":[J
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v4, v4, [J

    .line 591
    .local v4, "c":[J
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    .line 594
    .local v5, "m":[[I
    iget v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 595
    .local v6, "degf":I
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v8, v7

    .line 596
    .local v8, "degb":I
    const/4 v9, 0x0

    .line 598
    .local v9, "s":I
    sget-object v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v11, 0x3f

    aget-wide v12, v10, v11

    .line 599
    .local v12, "TWOTOMAXLONGM1":J
    sget-object v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v10, v8

    .line 608
    .local v14, "TWOTODEGB":J
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_0
    const/16 v16, 0x3f

    iget v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-ge v10, v11, :cond_15

    .line 611
    const/4 v9, 0x0

    .line 613
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v17, 0x1

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    if-ge v11, v7, :cond_4

    .line 618
    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v7, v7, v11

    .line 622
    .local v7, "fielda":I
    and-int/lit8 v21, v11, 0x3f

    .line 626
    .local v21, "bita":I
    sget-object v22, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget-object v23, v5, v11

    aget v23, v23, v20

    aget v22, v22, v23

    .line 630
    .local v22, "fieldb":I
    aget-object v23, v5, v11

    aget v20, v23, v20

    and-int/lit8 v20, v20, 0x3f

    .line 632
    .local v20, "bitb":I
    aget-wide v23, v2, v7

    sget-object v25, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v26, v25, v21

    and-long v23, v23, v26

    cmp-long v25, v23, v18

    if-eqz v25, :cond_2

    .line 635
    aget-wide v23, v3, v22

    sget-object v25, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v26, v25, v20

    and-long v23, v23, v26

    cmp-long v25, v23, v18

    if-eqz v25, :cond_1

    .line 637
    xor-int/lit8 v9, v9, 0x1

    .line 640
    :cond_1
    aget-object v23, v5, v11

    aget v1, v23, v17

    move-object/from16 v23, v2

    .end local v2    # "a":[J
    .local v23, "a":[J
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 645
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget-object v2, v5, v11

    aget v2, v2, v17

    aget v22, v1, v2

    .line 649
    aget-object v1, v5, v11

    aget v1, v1, v17

    and-int/lit8 v20, v1, 0x3f

    .line 651
    aget-wide v1, v3, v22

    sget-object v24, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v25, v24, v20

    and-long v1, v1, v25

    cmp-long v24, v1, v18

    if-eqz v24, :cond_3

    .line 653
    xor-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 632
    .end local v23    # "a":[J
    .restart local v2    # "a":[J
    :cond_2
    move-object/from16 v23, v2

    .line 613
    .end local v2    # "a":[J
    .restart local v23    # "a":[J
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    const/4 v7, 0x1

    goto :goto_1

    .end local v7    # "fielda":I
    .end local v20    # "bitb":I
    .end local v21    # "bita":I
    .end local v22    # "fieldb":I
    .end local v23    # "a":[J
    .restart local v2    # "a":[J
    :cond_4
    move-object/from16 v23, v2

    .line 659
    .end local v2    # "a":[J
    .end local v11    # "i":I
    .restart local v23    # "a":[J
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v1, v1, v10

    .line 660
    .local v1, "fielda":I
    and-int/lit8 v2, v10, 0x3f

    .line 662
    .local v2, "bita":I
    if-eqz v9, :cond_5

    .line 664
    aget-wide v21, v4, v1

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v24, v7, v2

    xor-long v21, v21, v24

    aput-wide v21, v4, v1

    .line 670
    :cond_5
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const-wide/16 v21, 0x1

    const/4 v11, 0x1

    if-le v7, v11, :cond_10

    .line 675
    aget-wide v24, v23, v6

    and-long v24, v24, v21

    cmp-long v7, v24, v21

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 677
    .local v7, "old":Z
    :goto_3
    add-int/lit8 v11, v6, -0x1

    .restart local v11    # "i":I
    :goto_4
    if-ltz v11, :cond_9

    .line 679
    aget-wide v24, v23, v11

    and-long v24, v24, v21

    cmp-long v26, v24, v18

    if-eqz v26, :cond_7

    const/16 v24, 0x1

    goto :goto_5

    :cond_7
    const/16 v24, 0x0

    .line 681
    .local v24, "now":Z
    :goto_5
    aget-wide v25, v23, v11

    const/16 v17, 0x1

    ushr-long v25, v25, v17

    aput-wide v25, v23, v11

    .line 683
    if-eqz v7, :cond_8

    .line 685
    aget-wide v25, v23, v11

    xor-long v25, v25, v12

    aput-wide v25, v23, v11

    .line 688
    :cond_8
    move/from16 v7, v24

    .line 677
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 690
    .end local v11    # "i":I
    .end local v24    # "now":Z
    :cond_9
    aget-wide v24, v23, v6

    const/16 v17, 0x1

    ushr-long v24, v24, v17

    aput-wide v24, v23, v6

    .line 692
    if-eqz v7, :cond_a

    .line 694
    aget-wide v24, v23, v6

    xor-long v24, v24, v14

    aput-wide v24, v23, v6

    .line 699
    :cond_a
    aget-wide v24, v3, v6

    and-long v24, v24, v21

    cmp-long v11, v24, v21

    if-nez v11, :cond_b

    const/4 v11, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    .line 701
    .end local v7    # "old":Z
    .local v11, "old":Z
    :goto_6
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_7
    if-ltz v7, :cond_e

    .line 703
    aget-wide v24, v3, v7

    and-long v24, v24, v21

    cmp-long v26, v24, v18

    if-eqz v26, :cond_c

    const/16 v24, 0x1

    goto :goto_8

    :cond_c
    const/16 v24, 0x0

    .line 705
    .restart local v24    # "now":Z
    :goto_8
    aget-wide v25, v3, v7

    const/16 v17, 0x1

    ushr-long v25, v25, v17

    aput-wide v25, v3, v7

    .line 707
    if-eqz v11, :cond_d

    .line 709
    aget-wide v25, v3, v7

    xor-long v25, v25, v12

    aput-wide v25, v3, v7

    .line 712
    :cond_d
    move/from16 v11, v24

    .line 701
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 715
    .end local v7    # "i":I
    .end local v24    # "now":Z
    :cond_e
    aget-wide v18, v3, v6

    const/16 v17, 0x1

    ushr-long v18, v18, v17

    aput-wide v18, v3, v6

    .line 717
    if-eqz v11, :cond_f

    .line 719
    aget-wide v18, v3, v6

    xor-long v18, v18, v14

    aput-wide v18, v3, v6

    .line 608
    :cond_f
    const/16 v17, 0x1

    goto :goto_b

    .line 724
    .end local v11    # "old":Z
    :cond_10
    aget-wide v18, v23, v20

    and-long v18, v18, v21

    cmp-long v7, v18, v21

    if-nez v7, :cond_11

    const/4 v7, 0x1

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    .line 725
    .local v7, "old":Z
    :goto_9
    aget-wide v18, v23, v20

    const/16 v17, 0x1

    ushr-long v18, v18, v17

    aput-wide v18, v23, v20

    .line 727
    if-eqz v7, :cond_12

    .line 729
    aget-wide v18, v23, v20

    xor-long v18, v18, v14

    aput-wide v18, v23, v20

    .line 732
    :cond_12
    aget-wide v18, v3, v20

    and-long v18, v18, v21

    cmp-long v11, v18, v21

    if-nez v11, :cond_13

    const/4 v11, 0x1

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    .line 733
    .end local v7    # "old":Z
    .restart local v11    # "old":Z
    :goto_a
    aget-wide v18, v3, v20

    const/16 v17, 0x1

    ushr-long v18, v18, v17

    aput-wide v18, v3, v20

    .line 735
    if-eqz v11, :cond_14

    .line 737
    aget-wide v18, v3, v20

    xor-long v18, v18, v14

    aput-wide v18, v3, v20

    .line 608
    :cond_14
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    const/4 v7, 0x1

    const/16 v11, 0x3f

    goto/16 :goto_0

    .end local v1    # "fielda":I
    .end local v11    # "old":Z
    .end local v23    # "a":[J
    .local v2, "a":[J
    :cond_15
    move-object/from16 v23, v2

    .line 741
    .end local v2    # "a":[J
    .end local v10    # "k":I
    .restart local v23    # "a":[J
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    .line 743
    .end local v3    # "b":[J
    .end local v4    # "c":[J
    .end local v5    # "m":[[I
    .end local v6    # "degf":I
    .end local v8    # "degb":I
    .end local v9    # "s":I
    .end local v12    # "TWOTOMAXLONGM1":J
    .end local v14    # "TWOTODEGB":J
    .end local v23    # "a":[J
    :goto_c
    return-void

    .line 577
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 572
    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The elements have different representation: not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method reverseOrder()V
    .locals 1

    .line 483
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElementReverseOrder()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    .line 484
    return-void
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 978
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->trace()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    .line 983
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v3, 0x3f

    aget-wide v4, v1, v3

    .line 984
    .local v4, "TWOTOMAXLONGM1":J
    const-wide/16 v6, 0x0

    .line 985
    .local v6, "ZERO":J
    const-wide/16 v8, 0x1

    .line 987
    .local v8, "ONE":J
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v1, v1, [J

    .line 988
    .local v1, "p":[J
    const-wide/16 v10, 0x0

    .line 989
    .local v10, "z":J
    const/4 v12, 0x1

    .line 990
    .local v12, "j":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v14, v2

    if-ge v13, v14, :cond_7

    .line 993
    const/4 v12, 0x1

    :goto_1
    const/16 v14, 0x40

    if-ge v12, v14, :cond_3

    .line 997
    sget-object v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v15, v14, v12

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v17, v14, v13

    and-long v15, v15, v17

    cmp-long v14, v15, v6

    if-eqz v14, :cond_0

    sget-object v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v15, v12, -0x1

    aget-wide v15, v14, v15

    and-long/2addr v15, v10

    cmp-long v14, v15, v6

    if-nez v14, :cond_2

    :cond_0
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v15, v14, v13

    sget-object v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v17, v14, v12

    and-long v15, v15, v17

    cmp-long v14, v15, v6

    if-nez v14, :cond_1

    sget-object v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v15, v12, -0x1

    aget-wide v15, v14, v15

    and-long/2addr v15, v10

    cmp-long v14, v15, v6

    if-eqz v14, :cond_2

    .line 999
    :cond_1
    sget-object v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v15, v14, v12

    xor-long/2addr v10, v15

    .line 993
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1002
    :cond_3
    aput-wide v10, v1, v13

    .line 1004
    and-long v14, v4, v10

    cmp-long v16, v14, v6

    if-eqz v16, :cond_4

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v15, v13, 0x1

    aget-wide v15, v14, v15

    and-long/2addr v15, v8

    cmp-long v14, v15, v8

    if-eqz v14, :cond_5

    :cond_4
    and-long v14, v4, v10

    cmp-long v16, v14, v6

    if-nez v16, :cond_6

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v15, v13, 0x1

    aget-wide v15, v14, v15

    and-long/2addr v15, v8

    cmp-long v14, v15, v6

    if-nez v14, :cond_6

    .line 1007
    :cond_5
    move-wide v10, v6

    goto :goto_2

    .line 1011
    :cond_6
    move-wide v10, v8

    .line 990
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1015
    .end local v13    # "i":I
    :cond_7
    iget v13, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    and-int/2addr v3, v13

    .line 1017
    .local v3, "b":I
    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v14, v2

    aget-wide v14, v13, v14

    .line 1019
    .local v14, "LASTLONG":J
    const/4 v12, 0x1

    :goto_3
    if-ge v12, v3, :cond_b

    .line 1021
    sget-object v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v16, v13, v12

    and-long v16, v16, v14

    cmp-long v13, v16, v6

    if-eqz v13, :cond_8

    sget-object v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v16, v12, -0x1

    aget-wide v16, v13, v16

    and-long v16, v16, v10

    cmp-long v13, v16, v6

    if-nez v13, :cond_a

    :cond_8
    sget-object v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v16, v13, v12

    and-long v16, v16, v14

    cmp-long v13, v16, v6

    if-nez v13, :cond_9

    sget-object v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v16, v12, -0x1

    aget-wide v16, v13, v16

    and-long v16, v16, v10

    cmp-long v13, v16, v6

    if-eqz v13, :cond_a

    .line 1023
    :cond_9
    sget-object v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v16, v13, v12

    xor-long v10, v10, v16

    .line 1019
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1026
    :cond_b
    iget v13, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v13, v2

    aput-wide v10, v1, v13

    .line 1027
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-direct {v2, v13, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v2

    .line 980
    .end local v1    # "p":[J
    .end local v3    # "b":I
    .end local v4    # "TWOTOMAXLONGM1":J
    .end local v6    # "ZERO":J
    .end local v8    # "ONE":J
    .end local v10    # "z":J
    .end local v12    # "j":I
    .end local v14    # "LASTLONG":J
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    .line 752
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    .line 753
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    .line 754
    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    .line 883
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    .line 884
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareRootThis()V

    .line 885
    return-object v0
.end method

.method public squareRootThis()V
    .locals 20

    .line 894
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    .line 896
    .local v1, "pol":[J
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 897
    .local v2, "f":I
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v4, v3

    .line 901
    .local v4, "b":I
    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v6, 0x3f

    aget-wide v6, v5, v6

    .line 904
    .local v6, "TWOTOMAXLONGM1":J
    const/4 v5, 0x0

    aget-wide v8, v1, v5

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-eqz v14, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 906
    .local v8, "old":Z
    :goto_0
    move v9, v2

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_4

    .line 908
    aget-wide v14, v1, v9

    and-long/2addr v14, v10

    cmp-long v16, v14, v12

    if-eqz v16, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 909
    .local v14, "now":Z
    :goto_2
    aget-wide v15, v1, v9

    ushr-long/2addr v15, v3

    aput-wide v15, v1, v9

    .line 911
    if-eqz v8, :cond_3

    .line 913
    if-ne v9, v2, :cond_2

    .line 915
    aget-wide v15, v1, v9

    sget-object v17, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v18, v17, v4

    xor-long v15, v15, v18

    aput-wide v15, v1, v9

    goto :goto_3

    .line 919
    :cond_2
    aget-wide v15, v1, v9

    xor-long/2addr v15, v6

    aput-wide v15, v1, v9

    .line 922
    :cond_3
    :goto_3
    move v8, v14

    .line 906
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 924
    .end local v9    # "i":I
    .end local v14    # "now":Z
    :cond_4
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    .line 925
    return-void
.end method

.method public squareThis()V
    .locals 18

    .line 763
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    .line 765
    .local v1, "pol":[J
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 766
    .local v2, "f":I
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v4, v3

    .line 770
    .local v4, "b":I
    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v6, 0x3f

    aget-wide v6, v5, v6

    .line 773
    .local v6, "TWOTOMAXLONGM1":J
    aget-wide v8, v1, v2

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v5, v4

    and-long/2addr v8, v10

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 775
    .local v8, "old":Z
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const-wide/16 v12, 0x1

    if-ge v9, v2, :cond_3

    .line 778
    aget-wide v14, v1, v9

    and-long/2addr v14, v6

    cmp-long v16, v14, v10

    if-eqz v16, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 780
    .local v14, "now":Z
    :goto_2
    aget-wide v15, v1, v9

    shl-long/2addr v15, v3

    aput-wide v15, v1, v9

    .line 782
    if-eqz v8, :cond_2

    .line 784
    aget-wide v15, v1, v9

    xor-long/2addr v12, v15

    aput-wide v12, v1, v9

    .line 787
    :cond_2
    move v8, v14

    .line 775
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 789
    .end local v9    # "i":I
    .end local v14    # "now":Z
    :cond_3
    aget-wide v14, v1, v2

    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v16, v9, v4

    and-long v14, v14, v16

    cmp-long v9, v14, v10

    if-eqz v9, :cond_4

    const/4 v5, 0x1

    .line 791
    .local v5, "now":Z
    :cond_4
    aget-wide v9, v1, v2

    shl-long/2addr v9, v3

    aput-wide v9, v1, v2

    .line 793
    if-eqz v8, :cond_5

    .line 795
    aget-wide v9, v1, v2

    xor-long/2addr v9, v12

    aput-wide v9, v1, v2

    .line 800
    :cond_5
    if-eqz v5, :cond_6

    .line 802
    aget-wide v9, v1, v2

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v11, v4, 0x1

    aget-wide v11, v3, v11

    xor-long/2addr v9, v11

    aput-wide v9, v1, v2

    .line 805
    :cond_6
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    .line 806
    return-void
.end method

.method testBit(I)Z
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 438
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, p1, 0x6

    aget-wide v2, v1, v2

    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v4, p1, 0x3f

    aget-wide v4, v1, v4

    and-long/2addr v2, v4

    .line 443
    .local v2, "test":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 440
    .end local v2    # "test":J
    :cond_2
    :goto_0
    return v0
.end method

.method public testRightmostBit()Z
    .locals 7

    .line 424
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v3, v0, v1

    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v1, v2

    aget-wide v5, v0, v1

    and-long v0, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toByteArray()[B
    .locals 9

    .line 1140
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 1141
    .local v0, "k":I
    new-array v1, v0, [B

    .line 1143
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1145
    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v5, v2, 0x3

    aget-wide v5, v4, v5

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x3

    const-wide/16 v7, 0xff

    shl-long/2addr v7, v4

    and-long/2addr v5, v7

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, v5, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    .line 1143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    :cond_0
    return-object v1
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    .line 1127
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1041
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 14
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radix"
        }
    .end annotation

    .line 1054
    const-string v0, ""

    .line 1056
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    .line 1057
    .local v1, "a":[J
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 1059
    .local v2, "b":I
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 1062
    add-int/lit8 v4, v2, -0x1

    .local v4, "j":I
    :goto_0
    const-string v5, "0"

    const-string v6, "1"

    const-wide/16 v7, 0x0

    if-ltz v4, :cond_1

    .line 1064
    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    aget-wide v9, v1, v9

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v4

    and-long/2addr v9, v11

    cmp-long v11, v9, v7

    if-nez v11, :cond_0

    .line 1066
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1070
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1074
    .end local v4    # "j":I
    :cond_1
    array-length v4, v1

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 1076
    const/16 v3, 0x3f

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_3

    .line 1078
    aget-wide v9, v1, v4

    sget-object v11, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v12, v11, v3

    and-long/2addr v9, v12

    cmp-long v11, v9, v7

    if-nez v11, :cond_2

    .line 1080
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1084
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1074
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v4    # "i":I
    :cond_4
    goto/16 :goto_6

    .line 1089
    :cond_5
    const/16 v3, 0x10

    if-ne p1, v3, :cond_6

    .line 1091
    new-array v4, v3, [C

    fill-array-data v4, :array_0

    .line 1093
    .local v4, "HEX_CHARS":[C
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_5
    if-ltz v5, :cond_6

    .line 1095
    aget-wide v6, v1, v5

    const/16 v8, 0x3c

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    aget-wide v6, v1, v5

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    aget-wide v6, v1, v5

    const/16 v8, 0x34

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    aget-wide v6, v1, v5

    const/16 v8, 0x30

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    aget-wide v6, v1, v5

    const/16 v8, 0x2c

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    aget-wide v6, v1, v5

    const/16 v8, 0x28

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    aget-wide v6, v1, v5

    const/16 v8, 0x24

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    aget-wide v6, v1, v5

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    aget-wide v6, v1, v5

    const/16 v8, 0x1c

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    aget-wide v6, v1, v5

    const/16 v8, 0x18

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    aget-wide v6, v1, v5

    const/16 v8, 0x14

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    aget-wide v6, v1, v5

    ushr-long/2addr v6, v3

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    aget-wide v6, v1, v5

    const/16 v8, 0xc

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    aget-wide v6, v1, v5

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    aget-wide v6, v1, v5

    const/4 v8, 0x4

    ushr-long/2addr v6, v8

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    aget-wide v6, v1, v5

    long-to-int v7, v6

    and-int/lit8 v6, v7, 0xf

    aget-char v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_5

    .line 1114
    .end local v4    # "HEX_CHARS":[C
    .end local v5    # "i":I
    :cond_6
    :goto_6
    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public trace()I
    .locals 11

    .line 938
    const/4 v0, 0x0

    .line 940
    .local v0, "result":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    .line 942
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-wide/16 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 945
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/16 v6, 0x40

    if-ge v5, v6, :cond_1

    .line 948
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v7, v6, v2

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v9, v6, v5

    and-long/2addr v7, v9

    cmp-long v6, v7, v3

    if-eqz v6, :cond_0

    .line 950
    xor-int/lit8 v0, v0, 0x1

    .line 945
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 942
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 957
    .local v2, "b":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v2, :cond_4

    .line 960
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v7, v6, v1

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v9, v6, v5

    and-long/2addr v7, v9

    cmp-long v6, v7, v3

    if-eqz v6, :cond_3

    .line 962
    xor-int/lit8 v0, v0, 0x1

    .line 957
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 965
    .end local v5    # "j":I
    :cond_4
    return v0
.end method
