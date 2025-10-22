.class Landroid/support/v7/widget/TintTypedArray$Api21Impl;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/TintTypedArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method static getChangingConfigurations(Landroid/content/res/TypedArray;)I
    .locals 1
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;

    .line 270
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method static getType(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .line 266
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    return v0
.end method
