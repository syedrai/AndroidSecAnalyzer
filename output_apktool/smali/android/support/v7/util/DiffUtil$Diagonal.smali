.class Landroid/support/v7/util/DiffUtil$Diagonal;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Diagonal"
.end annotation


# instance fields
.field public final size:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # I

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput p1, p0, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    .line 477
    iput p2, p0, Landroid/support/v7/util/DiffUtil$Diagonal;->y:I

    .line 478
    iput p3, p0, Landroid/support/v7/util/DiffUtil$Diagonal;->size:I

    .line 479
    return-void
.end method


# virtual methods
.method endX()I
    .locals 2

    .line 482
    iget v0, p0, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    iget v1, p0, Landroid/support/v7/util/DiffUtil$Diagonal;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method endY()I
    .locals 2

    .line 486
    iget v0, p0, Landroid/support/v7/util/DiffUtil$Diagonal;->y:I

    iget v1, p0, Landroid/support/v7/util/DiffUtil$Diagonal;->size:I

    add-int/2addr v0, v1

    return v0
.end method
