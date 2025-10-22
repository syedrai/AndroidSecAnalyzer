.class public Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;
.super Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
.source "AddCrossProfileIntentFilterFragment.java"


# static fields
.field private static final CROSS_PROFILE_INTENT_DIRECTIONS:[Ljava/lang/String;

.field private static final NEW_LINE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AddCrossProfileIFF"


# instance fields
.field private mCrossProfileDirectionSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FLAG_MANAGED_CAN_ACCESS_PARENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FLAG_PARENT_CAN_ACCESS_MANAGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->CROSS_PROFILE_INTENT_DIRECTIONS:[Ljava/lang/String;

    .line 53
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;-><init>()V

    return-void
.end method

.method private dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    .line 149
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .end local v1    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method private getAddCrossProfileIntentFilterFlag()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCrossProfileDirectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x2

    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    .line 168
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    .line 169
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    .line 170
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    return-object v1

    .line 173
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    .end local v3    # "action":Ljava/lang/String;
    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 179
    .end local v3    # "category":Ljava/lang/String;
    goto :goto_1

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    .local v3, "dataScheme":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    .end local v3    # "dataScheme":Ljava/lang/String;
    goto :goto_2

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 185
    .local v3, "dataType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 190
    .end local v3    # "dataType":Ljava/lang/String;
    goto :goto_3

    .line 186
    .restart local v3    # "dataType":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed mime type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AddCrossProfileIFF"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v1

    .line 191
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v3    # "dataType":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method private updateIntentFilterFragmentUi()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mAddDataSchemeAction:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "isClickHandled":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/afwsamples/testdpc/R$id;->btn_add:I

    if-ne v1, v2, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 88
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 90
    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 92
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    .line 93
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    .line 94
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getAddCrossProfileIntentFilterFlag()I

    move-result v6

    .line 91
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->add_cross_profile_intent_success_msg:I

    .line 97
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->clearIntentOrIntentFilter()V

    .line 102
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 104
    :cond_0
    nop

    .line 105
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->add_cross_profile_intent_failed_msg:I

    .line 106
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 110
    :goto_0
    const/4 v0, 0x1

    .line 113
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    if-nez v0, :cond_2

    .line 114
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onClick(Landroid/view/View;)V

    .line 116
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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

    .line 66
    sget v0, Lcom/afwsamples/testdpc/R$layout;->cross_profile_intent:I

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    .local v0, "crossProfileIntentFilterContainer":Landroid/widget/LinearLayout;
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "intentView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    sget v2, Lcom/afwsamples/testdpc/R$id;->cross_profile_intent_direction:I

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCrossProfileDirectionSpinner:Landroid/widget/Spinner;

    .line 74
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCrossProfileDirectionSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 76
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->CROSS_PROFILE_INTENT_DIRECTIONS:[Ljava/lang/String;

    .line 78
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v3, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->updateIntentFilterFragmentUi()V

    .line 80
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->add_cross_profile_intents_title:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 61
    return-void
.end method

.method protected updateStatusTextView()V
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    sget v1, Lcom/afwsamples/testdpc/R$string;->actions_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 125
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    sget v1, Lcom/afwsamples/testdpc/R$string;->categories_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 131
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    sget v1, Lcom/afwsamples/testdpc/R$string;->data_schemes_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 137
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 141
    sget v1, Lcom/afwsamples/testdpc/R$string;->data_types_title:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method
