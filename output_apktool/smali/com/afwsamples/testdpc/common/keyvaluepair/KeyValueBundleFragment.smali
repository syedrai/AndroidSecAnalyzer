.class public Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "KeyValueBundleFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/ManageAppFragment;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_CODE_EDIT_DIALOG:I = 0x1

.field private static final SUPPORTED_TYPE:[I


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

.field private mAppName:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mEditingKey:Ljava/lang/String;

.field private mInitialBundle:Landroid/os/Bundle;

.field private mKey:Ljava/lang/String;

.field mKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->SUPPORTED_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "bundle",
            "appName"
        }
    .end annotation

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "initial_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;-><init>()V

    .line 81
    .local v1, "fragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v1
.end method

.method private showEditDialog(Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "type":I
    const/4 v1, 0x0

    .line 147
    .local v1, "value":Ljava/lang/Object;
    if-eqz p1, :cond_6

    .line 148
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 150
    const/4 v0, 0x0

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 151
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 152
    const/4 v0, 0x1

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 153
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 154
    const/4 v0, 0x2

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 155
    :cond_2
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 156
    const/4 v0, 0x3

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 157
    :cond_3
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 158
    const/4 v0, 0x4

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 159
    :cond_4
    instance-of v2, v1, [Landroid/os/Bundle;

    if-eqz v2, :cond_5

    .line 160
    const/4 v0, 0x5

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 159
    :cond_5
    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 147
    :cond_6
    move v2, v0

    move-object v5, v1

    .line 163
    .end local v0    # "type":I
    .end local v1    # "value":Ljava/lang/Object;
    .local v2, "type":I
    .local v5, "value":Ljava/lang/Object;
    :goto_0
    sget-object v6, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->SUPPORTED_TYPE:[I

    iget-object v7, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAppName:Ljava/lang/String;

    .line 164
    const/4 v3, 0x1

    move-object v4, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    move-result-object p1

    .line 165
    .local p1, "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 166
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "key",
            "intent"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    packed-switch p1, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 234
    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    goto :goto_0

    .line 221
    :pswitch_4
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    goto :goto_0

    .line 218
    :pswitch_5
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    nop

    .line 238
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addNewRow()V
    .locals 1

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->showEditDialog(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .line 112
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKeyList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    .line 113
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    return-object v0
.end method

.method protected loadDefault()V
    .locals 0

    .line 141
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "result"
        }
    .end annotation

    .line 181
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "type":I
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v0, v1, p3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V

    .line 189
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {v2, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    .line 193
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->notifyDataSetChanged()V

    .line 194
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    .line 197
    .end local v0    # "type":I
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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

    .line 87
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAppName:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKey:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    .line 91
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    .line 94
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mInitialBundle:Landroid/os/Bundle;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKeyList:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKeyList:Ljava/util/List;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutInflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mHeaderView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->app_restrictions_info:I

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAppName:Ljava/lang/String;

    iget-object v6, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKey:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    const/4 v2, 0x1

    aput-object v6, v7, v2

    invoke-virtual {v3, v4, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-object v0
.end method

.method public bridge synthetic onDeleteButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->onDeleteButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleteButtonClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->onEditButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onEditButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->showEditDialog(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appInfo"
        }
    .end annotation

    .line 117
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "appInfo"
        }
    .end annotation

    .line 45
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->clear()V

    .line 122
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mInitialBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 123
    return-void
.end method

.method protected saveConfig()V
    .locals 4

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key"

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 133
    return-void
.end method
