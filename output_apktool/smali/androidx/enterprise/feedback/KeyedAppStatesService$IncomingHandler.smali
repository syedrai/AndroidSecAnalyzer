.class Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;
.super Landroid/os/Handler;
.source "KeyedAppStatesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/KeyedAppStatesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/KeyedAppStatesService;)V
    .locals 0
    .param p1, "keyedAppStatesService"    # Landroidx/enterprise/feedback/KeyedAppStatesService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyedAppStatesService"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    iput-object p1, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    .line 99
    return-void
.end method

.method private static deduplicateStates(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyedAppStates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;"
        }
    .end annotation

    .line 175
    .local p0, "keyedAppStates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "mappedStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    .line 177
    .local v2, "state":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    invoke-virtual {v2}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v2    # "state":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method private static extractReceivedKeyedAppStates(Landroid/os/Message;Ljava/lang/String;J)Ljava/util/Collection;
    .locals 7
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "packageName",
            "timestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;"
        }
    .end annotation

    .line 143
    const-string v0, "Could not extract state bundles from message"

    const-string v1, "KeyedAppStatesService"

    :try_start_0
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v2, "bundle":Landroid/os/Bundle;
    nop

    .line 149
    if-nez v2, :cond_0

    .line 150
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    const-string v3, "androidx.enterprise.feedback.APP_STATES"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 156
    .local v3, "stateBundles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Bundle;>;"
    if-nez v3, :cond_1

    .line 157
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 163
    .local v5, "stateBundle":Landroid/os/Bundle;
    invoke-static {v5}, Landroidx/enterprise/feedback/KeyedAppState;->isValid(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 164
    const-string v6, "Invalid KeyedAppState in bundle"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v5, p1, p2, p3}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->fromBundle(Landroid/os/Bundle;Ljava/lang/String;J)Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v5    # "stateBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 170
    :cond_3
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 144
    .end local v0    # "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "stateBundles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private handleStateMessage(Landroid/os/Message;Z)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "requestSync"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "requestSync"
        }
    .end annotation

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    .local v0, "timestamp":J
    iget-object v2, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    .line 121
    invoke-virtual {v2}, Landroidx/enterprise/feedback/KeyedAppStatesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->sendingUid:I

    .line 123
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "packageName":Ljava/lang/String;
    nop

    .line 126
    invoke-static {p1, v2, v0, v1}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->extractReceivedKeyedAppStates(Landroid/os/Message;Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v3

    .line 127
    .local v3, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    new-instance v4, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;

    iget-object v5, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    .line 133
    invoke-static {v3}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->deduplicateStates(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v4, v5, v6, p2}, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;-><init>(Landroidx/enterprise/feedback/KeyedAppStatesService;Ljava/util/Collection;Z)V

    .line 135
    .local v4, "asyncTask":Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 108
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->handleStateMessage(Landroid/os/Message;Z)V

    .line 109
    goto :goto_0

    .line 105
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->handleStateMessage(Landroid/os/Message;Z)V

    .line 106
    nop

    .line 113
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
