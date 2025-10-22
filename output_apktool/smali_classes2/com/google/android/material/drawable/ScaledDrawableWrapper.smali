.class public Lcom/google/android/material/drawable/ScaledDrawableWrapper;
.super Landroid/support/v7/graphics/drawable/DrawableWrapperCompat;
.source "ScaledDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;
    }
.end annotation


# instance fields
.field private mutated:Z

.field private state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "width",
            "height"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 38
    new-instance v0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-direct {p0, p1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V

    iput-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 39
    return-void
.end method

.method private getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-virtual {v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->-$$Nest$fgetheight(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->-$$Nest$fgetwidth(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 75
    iget-boolean v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->mutated:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v7/graphics/drawable/DrawableWrapperCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    new-instance v1, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 82
    invoke-direct {p0, v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v3}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->-$$Nest$fgetwidth(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v4}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->-$$Nest$fgetheight(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V

    iput-object v1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->mutated:Z

    .line 86
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapperCompat;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-direct {p0, p1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->-$$Nest$fputwrappedDrawableState(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->mutated:Z

    .line 64
    :cond_0
    return-void
.end method
