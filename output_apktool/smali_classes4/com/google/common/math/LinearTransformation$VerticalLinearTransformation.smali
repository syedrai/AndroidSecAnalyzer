.class final Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerticalLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final x:D


# direct methods
.method constructor <init>(D)V
    .locals 1
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 233
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 235
    return-void
.end method

.method constructor <init>(DLcom/google/common/math/LinearTransformation;)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "inverse"    # Lcom/google/common/math/LinearTransformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "inverse"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 238
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 239
    iput-object p3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 240
    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .locals 6

    .line 274
    new-instance v0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    return-object v0
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 265
    .local v0, "result":Lcom/google/common/math/LinearTransformation;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public isHorizontal()Z
    .locals 1

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public slope()D
    .locals 1

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 270
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string/jumbo v0, "x = %g"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(D)D
    .locals 1
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
