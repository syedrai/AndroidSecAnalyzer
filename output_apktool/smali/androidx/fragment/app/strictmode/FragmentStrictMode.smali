.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode;
.super Ljava/lang/Object;
.source "FragmentStrictMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;,
        Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;,
        Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003234B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0005H\u0007J\u001a\u0010\u0012\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J \u0010\u0015\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J \u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0018H\u0007J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010#\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\'H\u0007J\u0010\u0010(\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\'H\u0002J0\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u00072\u000e\u0010+\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0,2\u000e\u0010-\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\'0,H\u0002J\u0018\u0010.\u001a\u00020\u00102\u0006\u0010*\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\'H\u0002J\u0018\u0010/\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u00100\u001a\u000201H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u00065"
    }
    d2 = {
        "Landroidx/fragment/app/strictmode/FragmentStrictMode;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "defaultPolicy",
        "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;",
        "getDefaultPolicy",
        "()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;",
        "setDefaultPolicy",
        "(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)V",
        "getNearestPolicy",
        "fragment",
        "Landroid/support/v4/app/Fragment;",
        "onFragmentReuse",
        "",
        "previousFragmentId",
        "onFragmentTagUsage",
        "container",
        "Landroid/view/ViewGroup;",
        "onWrongNestedHierarchy",
        "expectedParentFragment",
        "containerId",
        "",
        "onSetRetainInstanceUsage",
        "onGetRetainInstanceUsage",
        "onSetUserVisibleHint",
        "isVisibleToUser",
        "",
        "onSetTargetFragmentUsage",
        "violatingFragment",
        "targetFragment",
        "requestCode",
        "onGetTargetFragmentUsage",
        "onGetTargetFragmentRequestCodeUsage",
        "onWrongFragmentContainer",
        "onPolicyViolation",
        "violation",
        "Landroidx/fragment/app/strictmode/Violation;",
        "logIfDebuggingEnabled",
        "shouldHandlePolicyViolation",
        "policy",
        "fragmentClass",
        "Ljava/lang/Class;",
        "violationClass",
        "handlePolicyViolation",
        "runOnHostThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "Flag",
        "OnViolationListener",
        "Policy",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

.field private static final TAG:Ljava/lang/String; = "FragmentStrictMode"

.field private static defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;


# direct methods
.method public static synthetic $r8$lambda$PDCNFUghAteLvNvpDrl3sNFUfNE(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation$lambda$1(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$euel0xqBXq2AV6jcWsq0SrkGBrs(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation$lambda$0(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;-><init>()V

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    .line 43
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->LAX:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 46
    move-object v0, p1

    .line 47
    .local v0, "declaringFragment":Landroid/support/v4/app/Fragment;
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getStrictModePolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getStrictModePolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v2

    .line 54
    .end local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-object v1
.end method

.method private final handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 5
    .param p1, "policy"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .param p2, "violation"    # Landroidx/fragment/app/strictmode/Violation;

    .line 259
    invoke-virtual {p2}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 260
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "fragmentName":Ljava/lang/String;
    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy violation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "FragmentStrictMode"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getListener$fragment_release()Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 265
    new-instance v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->runOnHostThread(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    .line 267
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    new-instance v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->runOnHostThread(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    .line 273
    :cond_2
    return-void
.end method

.method private static final handlePolicyViolation$lambda$0(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 1
    .param p0, "$policy"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .param p1, "$violation"    # Landroidx/fragment/app/strictmode/Violation;

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getListener$fragment_release()Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;->onViolation(Landroidx/fragment/app/strictmode/Violation;)V

    return-void
.end method

.method private static final handlePolicyViolation$lambda$1(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 3
    .param p0, "$fragmentName"    # Ljava/lang/String;
    .param p1, "$violation"    # Landroidx/fragment/app/strictmode/Violation;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy violation with PENALTY_DEATH in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "FragmentStrictMode"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    throw p1
.end method

.method private final logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V
    .locals 3
    .param p1, "violation"    # Landroidx/fragment/app/strictmode/Violation;

    .line 234
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    nop

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode violation in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    .line 235
    const-string v2, "FragmentManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_0
    return-void
.end method

.method public static final onFragmentReuse(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "previousFragmentId"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousFragmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/FragmentReuseViolation;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 64
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 65
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 66
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 67
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static final onFragmentTagUsage(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 79
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 80
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 81
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 82
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static final onGetRetainInstanceUsage(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetRetainInstanceUsageViolation;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 129
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 130
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 131
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 132
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 137
    :cond_0
    return-void
.end method

.method public static final onGetTargetFragmentRequestCodeUsage(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentRequestCodeUsageViolation;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 198
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 199
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 200
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 201
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 206
    :cond_0
    return-void
.end method

.method public static final onGetTargetFragmentUsage(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 183
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 184
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 185
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 186
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 191
    :cond_0
    return-void
.end method

.method public static final onSetRetainInstanceUsage(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;

    invoke-direct {v0, p0}, Landroidx/fragment/app/strictmode/SetRetainInstanceUsageViolation;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 114
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 115
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 116
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 117
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 122
    :cond_0
    return-void
.end method

.method public static final onSetTargetFragmentUsage(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;I)V
    .locals 5
    .param p0, "violatingFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "violatingFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;

    invoke-direct {v0, p0, p1, p2}, Landroidx/fragment/app/strictmode/SetTargetFragmentUsageViolation;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;I)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 162
    nop

    .line 164
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 165
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 166
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 167
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    .line 169
    nop

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 168
    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static final onSetUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isVisibleToUser"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;-><init>(Landroid/support/v4/app/Fragment;Z)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 144
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 145
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 146
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 147
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_SET_USER_VISIBLE_HINT:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 152
    :cond_0
    return-void
.end method

.method public static final onWrongFragmentContainer(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 213
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 214
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 215
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 216
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 221
    :cond_0
    return-void
.end method

.method public static final onWrongNestedHierarchy(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;I)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "expectedParentFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "containerId"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedParentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroidx/fragment/app/strictmode/WrongNestedHierarchyViolation;

    invoke-direct {v0, p0, p1, p2}, Landroidx/fragment/app/strictmode/WrongNestedHierarchyViolation;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;I)V

    check-cast v0, Landroidx/fragment/app/strictmode/Violation;

    .line 97
    nop

    .line 99
    .local v0, "violation":Landroidx/fragment/app/strictmode/Violation;
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 100
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v1, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 101
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    nop

    .line 102
    invoke-virtual {v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getFlags$fragment_release()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_NESTED_HIERARCHY:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->INSTANCE:Landroidx/fragment/app/strictmode/FragmentStrictMode;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 107
    :cond_0
    return-void
.end method

.method private final runOnHostThread(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 276
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 278
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 284
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 286
    :goto_0
    return-void
.end method

.method private final shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5
    .param p1, "policy"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .param p2, "fragmentClass"    # Ljava/lang/Class;
    .param p3, "violationClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;)Z"
        }
    .end annotation

    .line 248
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "fragmentClassString":Ljava/lang/String;
    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getMAllowedViolations$fragment_release()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 250
    .local v1, "violationsToBypass":Ljava/util/Set;
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroidx/fragment/app/strictmode/Violation;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    const/4 v2, 0x0

    return v2

    .line 255
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public final getDefaultPolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 1

    .line 43
    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-object v0
.end method

.method public final onPolicyViolation(Landroidx/fragment/app/strictmode/Violation;)V
    .locals 4
    .param p1, "violation"    # Landroidx/fragment/app/strictmode/Violation;

    const-string/jumbo v0, "violation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 226
    invoke-virtual {p1}, Landroidx/fragment/app/strictmode/Violation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 227
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {p0, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroid/support/v4/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    move-result-object v1

    .line 228
    .local v1, "policy":Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->shouldHandlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-direct {p0, v1, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 231
    :cond_0
    return-void
.end method

.method public final setDefaultPolicy(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sput-object p1, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-void
.end method
