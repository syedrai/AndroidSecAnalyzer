.class public Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;
.super Landroid/app/ListFragment;
.source "SecurityLogsFragment.java"


# static fields
.field private static final PRE_REBOOT_KEY:Ljava/lang/String; = "pre-reboot"

.field private static final TAG:Ljava/lang/String; = "ProcessLogsFragment"

.field private static sTagNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.field private mAdminName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreReboot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getTagNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->sTagNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mLogs:Ljava/util/ArrayList;

    return-void
.end method

.method private getLogs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->hasSecurityLoggingDelegation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdminName:Landroid/content/ComponentName;

    .line 118
    .local v0, "name":Landroid/content/ComponentName;
    :goto_0
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mPreReboot:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 118
    :goto_1
    return-object v1
.end method

.method public static getStringEventTagFromId(I)Ljava/lang/String;
    .locals 4
    .param p0, "eventId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->sTagNames:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getTagNames()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 155
    .local v0, "tagNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-class v1, Landroid/app/admin/SecurityLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 156
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TAG_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_0

    .line 158
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_1

    .line 159
    :catch_0
    move-exception v5

    .line 160
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ProcessLogsFragment"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-object v0
.end method

.method private hasSecurityLoggingDelegation()Z
    .locals 7

    .line 96
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 97
    return v2

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "delegations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 105
    .local v3, "securityLoggingDelegation":Ljava/lang/String;
    :try_start_0
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    const-string v5, "DELEGATION_SECURITY_LOGGING"

    .line 106
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/common/ReflectionUtil;->stringConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v4

    .line 108
    .local v4, "e":Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException;
    const-string v5, "ProcessLogsFragment"

    const-string v6, "Failed to read DevicePolicyManager.DELEGATION_SECURITY_LOGGING"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v4    # "e":Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException;
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static newInstance(Z)Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;
    .locals 3
    .param p0, "preReboot"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preReboot"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;-><init>()V

    .line 64
    .local v0, "fragment":Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "pre-reboot"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method

.method public static printData(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sb",
            "data"
        }
    .end annotation

    .line 172
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 178
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 179
    .local v3, "item":Ljava/lang/Object;
    invoke-static {p0, v3}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->printData(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 178
    .end local v3    # "item":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    return-void
.end method

.method private processEvents(Ljava/util/List;)V
    .locals 9
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
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    const-string v0, "ProcessLogsFragment"

    if-nez p1, :cond_1

    .line 126
    const-string v1, "logs == null, are you polling too early?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    nop

    .line 129
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mPreReboot:Z

    if-eqz v0, :cond_0

    .line 130
    sget v0, Lcom/afwsamples/testdpc/R$string;->failed_to_retrieve_pre_reboot_security_logs:I

    goto :goto_0

    .line 131
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->failed_to_retrieve_security_logs:I

    .line 128
    :goto_0
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 133
    .end local v0    # "message":Ljava/lang/String;
    goto/16 :goto_2

    .line 134
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incoming logs size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 137
    .local v2, "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    .line 139
    invoke-virtual {v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_2
    invoke-virtual {v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getStringEventTagFromId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 143
    invoke-virtual {v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->printData(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 146
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 147
    .end local v2    # "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 149
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 151
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :goto_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
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

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lcom/afwsamples/testdpc/R$string;->security_logs_retrieved_message:I

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getLogs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->processEvents(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ProcessLogsFragment"

    const-string v2, "Exception thrown when trying to retrieve security logs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget v2, Lcom/afwsamples/testdpc/R$string;->exception_retrieving_security_logs:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 93
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
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

    .line 72
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdminName:Landroid/content/ComponentName;

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 76
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020014

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mLogs:Ljava/util/ArrayList;

    const v4, 0x1090003

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 79
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pre-reboot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mPreReboot:Z

    .line 80
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method
