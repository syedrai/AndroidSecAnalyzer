.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManag"


# instance fields
.field private mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 51
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized get()Landroid/support/v7/widget/AppCompatDrawableManager;
    .locals 2

    const-class v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 462
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v1, :cond_0

    .line 463
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->preload()V

    .line 465
    :cond_0
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 461
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    const-class v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 503
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v7/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 503
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

.method public static declared-synchronized preload()V
    .locals 3

    const-class v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-direct {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 61
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-static {}, Landroid/support/v7/widget/ResourceManagerInternal;->get()Landroid/support/v7/widget/ResourceManagerInternal;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    .line 62
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    new-instance v2, Landroid/support/v7/widget/AppCompatDrawableManager$1;

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatDrawableManager$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ResourceManagerInternal;->setHooks(Landroid/support/v7/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_0
    monitor-exit v0

    return-void

    .line 58
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/support/v7/widget/TintInfo;
    .param p2, "state"    # [I

    .line 498
    invoke-static {p0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 499
    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 471
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    monitor-enter p0

    .line 476
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 476
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 494
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 494
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
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

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ResourceManagerInternal;->onConfigurationChanged(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 479
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/support/v7/widget/VectorEnabledTintResources;
    .param p3, "resId"    # I

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ResourceManagerInternal;->onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 485
    .end local p0    # "this":Landroid/support/v7/widget/AppCompatDrawableManager;
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

.method tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 490
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mResourceManager:Landroid/support/v7/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
