.class Landroid/support/v7/util/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/util/DiffUtil$Diagonal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/util/DiffUtil$Diagonal;Landroid/support/v7/util/DiffUtil$Diagonal;)I
    .locals 2
    .param p1, "o1"    # Landroid/support/v7/util/DiffUtil$Diagonal;
    .param p2, "o2"    # Landroid/support/v7/util/DiffUtil$Diagonal;

    .line 91
    iget v0, p1, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    iget v1, p2, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 88
    check-cast p1, Landroid/support/v7/util/DiffUtil$Diagonal;

    check-cast p2, Landroid/support/v7/util/DiffUtil$Diagonal;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$1;->compare(Landroid/support/v7/util/DiffUtil$Diagonal;Landroid/support/v7/util/DiffUtil$Diagonal;)I

    move-result p1

    return p1
.end method
