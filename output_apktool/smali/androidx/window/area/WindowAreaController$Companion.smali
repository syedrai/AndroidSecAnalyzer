.class public final Landroidx/window/area/WindowAreaController$Companion;
.super Ljava/lang/Object;
.source "WindowAreaController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/area/WindowAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0007J\u0008\u0010\r\u001a\u00020\u000bH\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/window/area/WindowAreaController$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "decorator",
        "Landroidx/window/area/WindowAreaControllerDecorator;",
        "getOrCreate",
        "Landroidx/window/area/WindowAreaController;",
        "overrideDecorator",
        "",
        "overridingDecorator",
        "reset",
        "window_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/area/WindowAreaController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrCreate()Landroidx/window/area/WindowAreaController;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 139
    nop

    .line 140
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "it":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 141
    .local v2, "$i$a$-let-WindowAreaController$Companion$getOrCreate$windowAreaComponentExtensions$1":I
    new-instance v3, Landroidx/window/area/SafeWindowAreaComponentProvider;

    invoke-direct {v3, v1}, Landroidx/window/area/SafeWindowAreaComponentProvider;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3}, Landroidx/window/area/SafeWindowAreaComponentProvider;->getWindowAreaComponent()Landroidx/window/extensions/area/WindowAreaComponent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v1    # "it":Ljava/lang/ClassLoader;
    .end local v2    # "$i$a$-let-WindowAreaController$Companion$getOrCreate$windowAreaComponentExtensions$1":I
    :cond_0
    goto :goto_0

    .line 143
    :catchall_0
    move-exception v1

    .line 144
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {v2}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object v2

    sget-object v3, Landroidx/window/core/VerificationMode;->LOG:Landroidx/window/core/VerificationMode;

    if-ne v2, v3, :cond_1

    .line 145
    invoke-static {}, Landroidx/window/area/WindowAreaController;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to load WindowExtensions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    nop

    .line 139
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 138
    nop

    .line 151
    .local v0, "windowAreaComponentExtensions":Landroidx/window/extensions/area/WindowAreaComponent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_2

    .line 152
    if-eqz v0, :cond_2

    .line 153
    sget-object v1, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v1}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 150
    :goto_1
    nop

    .line 156
    .local v1, "deviceSupported":Z
    if-eqz v1, :cond_3

    .line 157
    new-instance v2, Landroidx/window/area/WindowAreaControllerImpl;

    .line 158
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    invoke-direct {v2, v0}, Landroidx/window/area/WindowAreaControllerImpl;-><init>(Landroidx/window/extensions/area/WindowAreaComponent;)V

    check-cast v2, Landroidx/window/area/WindowAreaController;

    goto :goto_2

    .line 161
    :cond_3
    new-instance v2, Landroidx/window/area/EmptyWindowAreaControllerImpl;

    invoke-direct {v2}, Landroidx/window/area/EmptyWindowAreaControllerImpl;-><init>()V

    check-cast v2, Landroidx/window/area/WindowAreaController;

    .line 156
    :goto_2
    nop

    .line 155
    nop

    .line 163
    .local v2, "controller":Landroidx/window/area/WindowAreaController;
    invoke-static {}, Landroidx/window/area/WindowAreaController;->access$getDecorator$cp()Landroidx/window/area/WindowAreaControllerDecorator;

    move-result-object v3

    invoke-interface {v3, v2}, Landroidx/window/area/WindowAreaControllerDecorator;->decorate(Landroidx/window/area/WindowAreaController;)Landroidx/window/area/WindowAreaController;

    move-result-object v3

    return-object v3
.end method

.method public final overrideDecorator(Landroidx/window/area/WindowAreaControllerDecorator;)V
    .locals 1
    .param p1, "overridingDecorator"    # Landroidx/window/area/WindowAreaControllerDecorator;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "overridingDecorator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Landroidx/window/area/WindowAreaController;->access$setDecorator$cp(Landroidx/window/area/WindowAreaControllerDecorator;)V

    .line 170
    return-void
.end method

.method public final reset()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 175
    sget-object v0, Landroidx/window/area/EmptyDecorator;->INSTANCE:Landroidx/window/area/EmptyDecorator;

    check-cast v0, Landroidx/window/area/WindowAreaControllerDecorator;

    invoke-static {v0}, Landroidx/window/area/WindowAreaController;->access$setDecorator$cp(Landroidx/window/area/WindowAreaControllerDecorator;)V

    .line 176
    return-void
.end method
