.class public Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;
.super Landroid/app/Fragment;
.source "PickTransferComponentFragment.java"


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$KPm83hS6kmd30UIXHA74Tpubesg(Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->lambda$onCreateView$1(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 125
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 126
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/EditText;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p0, "componentName"    # Landroid/widget/EditText;
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view1"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "__"    # J

    .line 88
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2
    .param p1, "componentName"    # Landroid/widget/EditText;
    .param p2, "result"    # Landroid/widget/EditText;
    .param p3, "view"    # Landroid/view/View;

    .line 92
    nop

    .line 93
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 94
    .local v0, "target":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->performTransfer(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_invalid_target_format:I

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(I)V

    .line 99
    :goto_0
    return-void
.end method

.method private performTransfer(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p1, "target"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 105
    nop

    .line 106
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 107
    .local v0, "source":Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transferring ownership from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to target "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 110
    .local v1, "persistableBundle":Landroid/os/PersistableBundle;
    const-string v2, "random_key"

    const-string v3, "random_value"

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 113
    const-string v2, "Success!"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 114
    .end local v1    # "persistableBundle":Landroid/os/PersistableBundle;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 116
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_0

    .line 117
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 119
    :cond_0
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
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

    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    nop

    .line 58
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 64
    sget v0, Lcom/afwsamples/testdpc/R$layout;->transfer_ownership_dialog:I

    .line 65
    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 66
    .local v0, "rootView":Landroid/view/ViewGroup;
    sget v4, Lcom/afwsamples/testdpc/R$id;->list:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 67
    .local v4, "listView":Landroid/widget/ListView;
    sget v5, Lcom/afwsamples/testdpc/R$id;->component_name:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 68
    .local v5, "componentName":Landroid/widget/EditText;
    sget v6, Lcom/afwsamples/testdpc/R$id;->result:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 69
    .local v6, "result":Landroid/widget/EditText;
    sget v7, Lcom/afwsamples/testdpc/R$id;->transfer_btn:I

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 71
    .local v7, "transferButton":Landroid/widget/Button;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v8, "intent":Landroid/content/Intent;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 74
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v10, v8, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 76
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    .local v13, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v13, :cond_0

    .line 78
    goto :goto_0

    .line 80
    :cond_0
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v0    # "rootView":Landroid/view/ViewGroup;
    .local v16, "rootView":Landroid/view/ViewGroup;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "/"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v16

    goto :goto_0

    .line 83
    .end local v16    # "rootView":Landroid/view/ViewGroup;
    .restart local v0    # "rootView":Landroid/view/ViewGroup;
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "rootView":Landroid/view/ViewGroup;
    .restart local v16    # "rootView":Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x1090003

    invoke-direct {v0, v11, v12, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v11, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v11, v5}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v4, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    new-instance v11, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$ExternalSyntheticLambda1;

    move-object/from16 v12, p0

    invoke-direct {v11, v12, v5, v6}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object v16
.end method
