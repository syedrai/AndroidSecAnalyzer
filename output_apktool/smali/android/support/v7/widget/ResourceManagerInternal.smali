.class public final Landroid/support/v7/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ResourceManagerInternal$VdcInflateDelegate;,
        Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;,
        Landroid/support/v7/widget/ResourceManagerInternal$AvdcInflateDelegate;,
        Landroid/support/v7/widget/ResourceManagerInternal$AsldcInflateDelegate;,
        Landroid/support/v7/widget/ResourceManagerInternal$DrawableDelegate;,
        Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;,
        Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/ResourceManagerInternal; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "ResourceManagerInternal"


# instance fields
.field private mDelegates:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

.field private mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 114
    new-instance v0, Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;

    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method private declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 337
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_1

    .line 338
    iget-object v1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    .line 339
    .local v1, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v1, :cond_0

    .line 340
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object v1, v2

    .line 341
    iget-object v2, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 346
    .end local v1    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 335
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "key":J
    .end local p4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;

    .line 402
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 405
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 406
    .local v0, "themeTints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 407
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v0, v1

    .line 408
    iget-object v1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 411
    return-void
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 491
    iget-boolean v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_0

    .line 493
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 498
    sget v0, Landroid/support/v7/resources/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 499
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v7/widget/ResourceManagerInternal;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    return-void

    .line 500
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 501
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 4
    .param p0, "tv"    # Landroid/util/TypedValue;

    .line 169
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 178
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 179
    invoke-static {v0}, Landroid/support/v7/widget/ResourceManagerInternal;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v1

    .line 181
    .local v1, "key":J
    invoke-direct {p0, p1, v1, v2}, Landroid/support/v7/widget/ResourceManagerInternal;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 182
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 184
    return-object v3

    .line 188
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 189
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    invoke-interface {v4, p0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;->createDrawableFor(Landroid/support/v7/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    nop

    .line 191
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 192
    iget v3, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 194
    invoke-direct {p0, p1, v1, v2, v4}, Landroid/support/v7/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 197
    :cond_3
    return-object v4
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .line 469
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 473
    .local v0, "color":I
    invoke-static {v0, p1}, Landroid/support/v7/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    return-object v1

    .line 470
    .end local v0    # "color":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized get()Landroid/support/v7/widget/ResourceManagerInternal;
    .locals 2

    const-class v0, Landroid/support/v7/widget/ResourceManagerInternal;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/ResourceManagerInternal;->INSTANCE:Landroid/support/v7/widget/ResourceManagerInternal;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-direct {v1}, Landroid/support/v7/widget/ResourceManagerInternal;-><init>()V

    sput-object v1, Landroid/support/v7/widget/ResourceManagerInternal;->INSTANCE:Landroid/support/v7/widget/ResourceManagerInternal;

    .line 97
    sget-object v1, Landroid/support/v7/widget/ResourceManagerInternal;->INSTANCE:Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-static {v1}, Landroid/support/v7/widget/ResourceManagerInternal;->installDefaultInflateDelegates(Landroid/support/v7/widget/ResourceManagerInternal;)V

    .line 99
    :cond_0
    sget-object v1, Landroid/support/v7/widget/ResourceManagerInternal;->INSTANCE:Landroid/support/v7/widget/ResourceManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .local v0, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 317
    monitor-exit p0

    return-object v1

    .line 320
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 321
    .local v2, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v2, :cond_2

    .line 323
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 324
    .local v3, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 328
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    .end local v3    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 314
    .end local v0    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "key":J
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    const-class v0, Landroid/support/v7/widget/ResourceManagerInternal;

    monitor-enter v0

    .line 479
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 481
    .local v1, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v1, :cond_0

    .line 483
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v1, v2

    .line 484
    sget-object v2, Landroid/support/v7/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;

    invoke-virtual {v2, p0, p1, v1}, Landroid/support/v7/widget/ResourceManagerInternal$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_0
    monitor-exit v0

    return-object v1

    .line 478
    .end local v1    # "filter":Landroid/graphics/PorterDuffColorFilter;
    .end local p0    # "color":I
    .end local p1    # "mode":Landroid/graphics/PorterDuff$Mode;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 395
    .local v0, "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v1

    .line 397
    .end local v0    # "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :cond_1
    return-object v1
.end method

.method private static installDefaultInflateDelegates(Landroid/support/v7/widget/ResourceManagerInternal;)V
    .locals 2
    .param p0, "manager"    # Landroid/support/v7/widget/ResourceManagerInternal;

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 107
    new-instance v0, Landroid/support/v7/widget/ResourceManagerInternal$VdcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/ResourceManagerInternal$VdcInflateDelegate;-><init>()V

    const-string/jumbo v1, "vector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 108
    new-instance v0, Landroid/support/v7/widget/ResourceManagerInternal$AvdcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/ResourceManagerInternal$AvdcInflateDelegate;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 109
    new-instance v0, Landroid/support/v7/widget/ResourceManagerInternal$AsldcInflateDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/ResourceManagerInternal$AsldcInflateDelegate;-><init>()V

    const-string v1, "animated-selector"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 110
    new-instance v0, Landroid/support/v7/widget/ResourceManagerInternal$DrawableDelegate;

    invoke-direct {v0}, Landroid/support/v7/widget/ResourceManagerInternal$DrawableDelegate;-><init>()V

    const-string v1, "drawable"

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 112
    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .line 507
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_1

    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 507
    :goto_1
    return v0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 229
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 230
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, "cachedTagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 233
    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 242
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 240
    .restart local v0    # "cachedTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 244
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    .line 247
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 248
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 250
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 251
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 252
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 254
    invoke-static {v0}, Landroid/support/v7/widget/ResourceManagerInternal;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 256
    .local v4, "key":J
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/ResourceManagerInternal;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 257
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 263
    return-object v6

    .line 266
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 269
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 270
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 272
    .local v8, "attrs":Landroid/util/AttributeSet;
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    if-eq v10, v3, :cond_5

    goto :goto_2

    .line 276
    :cond_5
    if-ne v10, v11, :cond_8

    .line 280
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "tagName":Ljava/lang/String;
    iget-object v9, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v9, p2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 285
    iget-object v9, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v9, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;

    .line 286
    .local v9, "delegate":Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;
    if-eqz v9, :cond_6

    .line 287
    nop

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    .line 287
    invoke-interface {v9, p1, v7, v8, v11}, Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v6, v11

    .line 290
    :cond_6
    if-eqz v6, :cond_7

    .line 292
    iget v11, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 293
    invoke-direct {p0, p1, v4, v5, v6}, Landroid/support/v7/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 300
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "delegate":Landroid/support/v7/widget/ResourceManagerInternal$InflateDelegate;
    .end local v10    # "type":I
    :cond_7
    goto :goto_3

    .line 277
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "type":I
    :cond_8
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v3, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "type":I
    .restart local v0    # "tv":Landroid/util/TypedValue;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v4    # "key":J
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resId":I
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "ResourceManagerInternal"

    const-string v8, "Exception while inflating drawable"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_3
    if-nez v6, :cond_a

    .line 305
    iget-object v3, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, p2, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 307
    :cond_a
    return-object v6

    .line 310
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_b
    return-object v1
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 203
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 206
    invoke-static {p4}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 207
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 210
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 211
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_0

    .line 212
    invoke-static {p4, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 214
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    invoke-interface {v1, p1, p2, p4}, Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v7/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 219
    .local v1, "tinted":Z
    if-nez v1, :cond_3

    if-eqz p3, :cond_3

    .line 222
    const/4 p4, 0x0

    .line 225
    .end local v1    # "tinted":Z
    :cond_3
    :goto_1
    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/support/v7/widget/TintInfo;
    .param p2, "state"    # [I

    .line 436
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 438
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 439
    .local v1, "mutated":Z
    :goto_0
    if-nez v1, :cond_1

    .line 440
    const-string v2, "ResourceManagerInternal"

    const-string v3, "Mutated drawable is not the same instance as the input."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 445
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 448
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 451
    :cond_2
    iget-boolean v2, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v2, :cond_4

    iget-boolean v2, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 457
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    .line 452
    :cond_4
    :goto_1
    nop

    .line 453
    iget-boolean v2, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 454
    :goto_2
    iget-boolean v3, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    :cond_6
    sget-object v3, Landroid/support/v7/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 452
    :goto_3
    invoke-static {v2, v3, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 460
    :goto_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v2, v3, :cond_7

    .line 463
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 465
    :cond_7
    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 134
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 134
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ResourceManagerInternal;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 145
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    :cond_0
    if-nez v0, :cond_1

    .line 146
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 149
    :cond_1
    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 153
    :cond_2
    if-eqz v0, :cond_3

    .line 155
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_3
    monitor-exit p0

    return-object v0

    .line 138
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    .end local p3    # "failIfNotKnown":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 381
    .local v0, "tint":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_1

    .line 383
    iget-object v1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    invoke-interface {v1, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 378
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "resId"    # I

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintModeForDrawableRes(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 162
    .local v0, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    .end local v0    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/support/v7/widget/VectorEnabledTintResources;
    .param p3, "resId"    # I

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/VectorEnabledTintResources;->getDrawableCanonical(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 355
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    :cond_0
    if-eqz v0, :cond_1

    .line 356
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/ResourceManagerInternal;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 358
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 350
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resources":Landroid/support/v7/widget/VectorEnabledTintResources;
    .end local p3    # "resId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHooks(Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    .locals 0
    .param p1, "hooks"    # Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    monitor-enter p0

    .line 130
    :try_start_0
    iput-object p1, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Landroid/support/v7/widget/ResourceManagerInternal;
    .end local p1    # "hooks":Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ResourceManagerInternal;->mHooks:Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
