.class public abstract Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.super Landroidx/preference/PreferenceFragment;
.source "BaseSearchablePolicyPreferenceFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x1f4

.field public static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "preference_highlighted"


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

.field protected mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;)Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object p0
.end method

.method protected constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 160
    .local v0, "listView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 162
    .local v2, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_1

    .line 163
    move-object v1, v2

    check-cast v1, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {p0, v1, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->findListPositionFromKey(Landroidx/preference/PreferenceGroupAdapter;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 166
    :cond_1
    return v1
.end method

.method private findListPositionFromKey(Landroidx/preference/PreferenceGroupAdapter;Ljava/lang/String;)I
    .locals 5
    .param p1, "adapter"    # Landroidx/preference/PreferenceGroupAdapter;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "key"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    .line 171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 173
    .local v2, "preference":Landroidx/preference/Preference;
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "preferenceKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    return v1

    .line 171
    .end local v2    # "preference":Landroidx/preference/Preference;
    .end local v3    # "preferenceKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "n":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    .line 139
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 140
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;-><init>(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;I)V

    .line 141
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :cond_0
    return-void
.end method

.method private highlightPreferenceIfNeeded()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "fd",
            "pw",
            "args"
        }
    .end annotation

    .line 100
    invoke-static {p4}, Lcom/afwsamples/testdpc/common/Dumpable$-CC;->isQuietMode([Ljava/lang/String;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move-object v5, p4

    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "args":[Ljava/lang/String;
    .local v1, "prefix":Ljava/lang/String;
    .local v2, "pw":Ljava/io/PrintWriter;
    .local v3, "fd":Ljava/io/FileDescriptor;
    .local v5, "args":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Z[Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Z[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "quietModeOnly"    # Z
    .param p5, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "pw",
            "fd",
            "quietModeOnly",
            "args"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 108
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string v4, "%sno adapter\n"

    invoke-virtual {p2, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->-$$Nest$fgetmHighlightPosition(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    const-string v0, "%smHighlightPosition: %d\n"

    invoke-virtual {p2, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    const-string v0, "%smPreferenceKey: %s\n"

    invoke-virtual {p2, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 113
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v0, v1, v2

    const-string v0, "%smPreferenceHighlighted: %b\n"

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 116
    invoke-virtual {p0, p1, p2, p5}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 118
    if-eqz p4, :cond_1

    .line 119
    return-void

    .line 123
    :cond_1
    invoke-super {p0, p1, p3, p2, p5}, Landroidx/preference/PreferenceFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "writer",
            "args"
        }
    .end annotation

    .line 127
    return-void
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-string v0, "preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 57
    const-string v1, "preference_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 59
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 60
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferenceScreen"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    .line 95
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 87
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 88
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "inflater"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 66
    sget v0, Lcom/afwsamples/testdpc/R$id;->action_show_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 67
    .local v0, "showSearchItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 69
    .local v1, "isShowingSearchResult":Z
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 71
    .end local v1    # "isShowingSearchResult":Z
    :cond_1
    return-void
.end method

.method protected onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "e"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroidx/preference/PreferenceFragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 77
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    const-string v0, "preference_highlighted"

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method protected onSuccessLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method protected varargs onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method
