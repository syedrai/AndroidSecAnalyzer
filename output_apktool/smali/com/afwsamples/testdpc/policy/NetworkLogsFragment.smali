.class public Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;
.super Landroid/app/ListFragment;
.source "NetworkLogsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkLogsFragment"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    return-void
.end method

.method private determineBatchToken(Ljava/lang/String;)J
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 127
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "fileNameArr":[Ljava/lang/String;
    array-length v1, v0

    const-string v2, "Failed parsing the batch from file: "

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 133
    :try_start_0
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .local v1, "batchToken":J
    nop

    .line 137
    return-wide v1

    .line 134
    .end local v1    # "batchToken":J
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fetchEvents()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->findLastBatch()Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, "logsFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 71
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->determineBatchToken(Ljava/lang/String;)J

    move-result-wide v2

    .line 72
    .local v2, "batchToken":J
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$string;->on_network_logs_available_success:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 73
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v4, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 77
    const-string v5, "NetworkLogsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :cond_1
    nop

    .line 85
    nop

    .line 86
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    goto :goto_1

    .line 88
    :catch_0
    move-exception v5

    .line 80
    :goto_1
    return-object v4

    .line 84
    .end local v2    # "batchToken":J
    .end local v4    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 81
    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget v4, Lcom/afwsamples/testdpc/R$string;->on_network_logs_available_failure:I

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 86
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 88
    :catch_3
    move-exception v2

    .line 91
    goto :goto_4

    .line 90
    :cond_2
    :goto_3
    nop

    .line 92
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 85
    :goto_5
    if-eqz v1, :cond_3

    .line 86
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 88
    :catch_4
    move-exception v3

    goto :goto_7

    .line 90
    :cond_3
    :goto_6
    nop

    .line 91
    :goto_7
    throw v2
.end method

.method private findLastBatch()Ljava/io/File;
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_0

    .line 110
    return-object v1

    .line 112
    :cond_0
    new-instance v2, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$ExternalSyntheticLambda0;-><init>()V

    .line 113
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 114
    .local v2, "networkLogsFiles":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    nop

    .line 121
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 119
    invoke-static {v1, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    return-object v1

    .line 115
    :cond_2
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$findLastBatch$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;

    .line 113
    const-string v0, "network_logs_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findLastBatch$1(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method private showEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "NetworkLogsFragment"

    if-nez p1, :cond_0

    .line 97
    const-string v1, "logs == null, are you polling too early?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lcom/afwsamples/testdpc/R$string;->on_network_logs_available_failure:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming logs size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 103
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 105
    .end local v0    # "listView":Landroid/widget/ListView;
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->fetchEvents()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->showEvents(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 53
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020014

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    const v4, 0x1090003

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 54
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method
