.class public Lcom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method static bridge synthetic -$$Nest$fgetx(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgety(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputx(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputy(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 574
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
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

    .line 580
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->matrix:Landroid/graphics/Matrix;

    .line 581
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 582
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 583
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 584
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 585
    return-void
.end method
