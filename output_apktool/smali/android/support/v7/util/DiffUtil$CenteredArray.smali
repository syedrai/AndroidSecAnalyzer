.class Landroid/support/v7/util/DiffUtil$CenteredArray;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CenteredArray"
.end annotation


# instance fields
.field private final mData:[I

.field private final mMid:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mData:[I

    .line 1031
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mData:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mMid:I

    .line 1032
    return-void
.end method


# virtual methods
.method backingData()[I
    .locals 1

    .line 1039
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mData:[I

    return-object v0
.end method

.method public fill(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1047
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mData:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 1048
    return-void
.end method

.method get(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1035
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mData:[I

    iget v1, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method set(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1043
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mData:[I

    iget v1, p0, Landroid/support/v7/util/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 1044
    return-void
.end method
