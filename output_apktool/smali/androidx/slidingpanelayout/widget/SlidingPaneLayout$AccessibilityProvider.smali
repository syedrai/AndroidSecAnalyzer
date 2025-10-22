.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "SlidingPaneLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AccessibilityProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u0007H\u0002J\"\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0011\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;",
        "Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;",
        "<init>",
        "(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V",
        "dividerHasA11yFocus",
        "",
        "createAccessibilityNodeInfo",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "virtualViewId",
        "",
        "createNodeForHost",
        "createNodeForDivider",
        "performAction",
        "action",
        "arguments",
        "Landroid/os/Bundle;",
        "findFocus",
        "focus",
        "slidingpanelayout_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private dividerHasA11yFocus:Z

.field final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2133
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method

.method private final createNodeForDivider()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 7

    .line 2171
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 2172
    .local v0, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 2174
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 2175
    .local v1, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 2176
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 2178
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2179
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2181
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 2182
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 2183
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 2185
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getDividerContentDescription(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2187
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getDividerAtLeftEdge(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2188
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2189
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isLayoutRtl(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2190
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_0

    .line 2193
    :cond_0
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2197
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getDividerAtRightEdge(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2198
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2199
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isLayoutRtl(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2200
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_1

    .line 2203
    :cond_2
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2207
    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getOnUserResizingDividerClickListener$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2208
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2211
    :cond_4
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getTmpRect$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisualDividerPosition()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$computeDividerTargetRect(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v2

    .line 2212
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2213
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 2214
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2217
    :cond_5
    iget-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->dividerHasA11yFocus:Z

    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 2218
    iget-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->dividerHasA11yFocus:Z

    if-eqz v3, :cond_6

    .line 2219
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_2

    .line 2221
    :cond_6
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2224
    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method private final createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .line 2148
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 2150
    .local v0, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2151
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 2158
    :cond_0
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .line 2159
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2160
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v3, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2161
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v4, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isDimmed(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2163
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2164
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    .line 2159
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2167
    .end local v2    # "i":I
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 2137
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2138
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 2141
    :cond_0
    if-nez p1, :cond_1

    .line 2142
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->createNodeForDivider()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 2144
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "focus"    # I

    .line 2290
    nop

    .line 2291
    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 2292
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->dividerHasA11yFocus:Z

    if-eqz v0, :cond_0

    .line 2294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 2296
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2228
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2229
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, p2, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2231
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 2232
    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_3

    .line 2257
    :sswitch_0
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->dividerHasA11yFocus:Z

    if-nez v2, :cond_1

    return v0

    .line 2258
    :cond_1
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getUserResizeBehavior$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    move-result-object v2

    .line 2259
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2261
    const v4, 0x1020039

    if-ne p2, v4, :cond_2

    .line 2262
    goto :goto_0

    .line 2264
    :cond_2
    const/4 v0, 0x1

    .line 2258
    :goto_0
    invoke-interface {v2, v3, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;->onAccessibilityResize(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    .line 2267
    return v1

    .line 2271
    :sswitch_1
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->dividerHasA11yFocus:Z

    if-nez v2, :cond_3

    return v0

    .line 2273
    :cond_3
    nop

    .line 2274
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isLayoutRtl(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v2

    .line 2275
    const/16 v3, 0x2000

    if-ne p2, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 2274
    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 2277
    goto :goto_2

    .line 2279
    :cond_5
    const/4 v0, 0x1

    .line 2273
    :goto_2
    nop

    .line 2272
    nop

    .line 2281
    .local v0, "direction":I
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getUserResizeBehavior$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    move-result-object v2

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-interface {v2, v3, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;->onAccessibilityResize(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    .line 2282
    return v1

    .line 2244
    .end local v0    # "direction":I
    :sswitch_2
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 2245
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2246
    nop

    .line 2245
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/high16 v4, 0x10000

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V

    .line 2248
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->dividerHasA11yFocus:Z

    .line 2249
    return v1

    .line 2235
    :sswitch_3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 2236
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2237
    nop

    .line 2236
    const/4 v6, 0x6

    const/4 v7, 0x0

    const v3, 0x8000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V

    .line 2239
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->dividerHasA11yFocus:Z

    .line 2240
    return v1

    .line 2252
    :sswitch_4
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getDraggableDividerHandler$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->onDividerClicked()V

    .line 2253
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V

    .line 2286
    :cond_6
    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_4
        0x40 -> :sswitch_3
        0x80 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_0
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method
