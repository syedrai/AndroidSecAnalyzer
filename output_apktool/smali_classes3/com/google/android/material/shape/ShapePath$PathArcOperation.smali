.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetBottom(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLeft(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRight(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStartAngle(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSweepAngle(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTop(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetStartAngle(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setStartAngle(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSweepAngle(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setSweepAngle(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 655
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 689
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setLeft(F)V

    .line 690
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setTop(F)V

    .line 691
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setRight(F)V

    .line 692
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setBottom(F)V

    .line 693
    return-void
.end method

.method private getBottom()F
    .locals 1

    .line 718
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return v0
.end method

.method private getLeft()F
    .locals 1

    .line 706
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    return v0
.end method

.method private getRight()F
    .locals 1

    .line 714
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    return v0
.end method

.method private getStartAngle()F
    .locals 1

    .line 738
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    return v0
.end method

.method private getSweepAngle()F
    .locals 1

    .line 742
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    return v0
.end method

.method private getTop()F
    .locals 1

    .line 710
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    return v0
.end method

.method private setBottom(F)V
    .locals 0
    .param p1, "bottom"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottom"
        }
    .end annotation

    .line 734
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 735
    return-void
.end method

.method private setLeft(F)V
    .locals 0
    .param p1, "left"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "left"
        }
    .end annotation

    .line 722
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 723
    return-void
.end method

.method private setRight(F)V
    .locals 0
    .param p1, "right"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "right"
        }
    .end annotation

    .line 730
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 731
    return-void
.end method

.method private setStartAngle(F)V
    .locals 0
    .param p1, "startAngle"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startAngle"
        }
    .end annotation

    .line 746
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 747
    return-void
.end method

.method private setSweepAngle(F)V
    .locals 0
    .param p1, "sweepAngle"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sweepAngle"
        }
    .end annotation

    .line 750
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 751
    return-void
.end method

.method private setTop(F)V
    .locals 0
    .param p1, "top"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top"
        }
    .end annotation

    .line 726
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 727
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 6
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "path"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->matrix:Landroid/graphics/Matrix;

    .line 698
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 699
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 700
    sget-object v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    move-result v4

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 701
    sget-object v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 702
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 703
    return-void
.end method
