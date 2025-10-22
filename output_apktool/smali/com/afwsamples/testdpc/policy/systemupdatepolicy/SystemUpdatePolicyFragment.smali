.class public Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;
.super Landroid/app/Fragment;
.source "SystemUpdatePolicyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;,
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;,
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;,
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    }
.end annotation


# instance fields
.field private mCurrentSystemUpdatePolicy:Landroid/widget/EditText;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

.field private mFreezePeriodList:Landroid/widget/ListView;

.field private mFreezePeriodPanel:Landroid/widget/LinearLayout;

.field private mFreezePeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceEnd:I

.field private mMaintenanceStart:I

.field private mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

.field private mSetMaintenanceWindowEnd:Landroid/widget/Button;

.field private mSetMaintenanceWindowStart:Landroid/widget/Button;

.field private mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;


# direct methods
.method public static synthetic $r8$lambda$3Rip6LiNXP1AjKqMB7ENh9jkAiM(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Lj$/time/LocalDate;Lj$/time/LocalDate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$onClick$0(Lj$/time/LocalDate;Lj$/time/LocalDate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4fWfQo_Qdoue-cRBV741NIwseM4(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;ZLandroid/widget/TimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$selectTime$0(ZLandroid/widget/TimePicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$81c0w76EXPBK8Et3dYAKvc_CVbI(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Lj$/time/LocalDate;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$promptToSetFreezePeriod$0(Lj$/time/LocalDate;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFreezePeriodAdapter(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;)Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpromptToSetFreezePeriod(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;Lj$/time/LocalDate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->promptToSetFreezePeriod(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;Lj$/time/LocalDate;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    return-void
.end method

.method private formatMinutes(I)Ljava/lang/String;
    .locals 5
    .param p1, "minutes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minutes"
        }
    .end annotation

    .line 333
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    div-int/lit8 v1, p1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    rem-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "%02d:%02d"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onClick$0(Lj$/time/LocalDate;Lj$/time/LocalDate;)V
    .locals 2
    .param p1, "startDate"    # Lj$/time/LocalDate;
    .param p2, "endDate"    # Lj$/time/LocalDate;

    .line 244
    new-instance v0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;-><init>()V

    .line 245
    .local v0, "period":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    invoke-virtual {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->set(Lj$/time/LocalDate;Lj$/time/LocalDate;)V

    .line 246
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method

.method private synthetic lambda$promptToSetFreezePeriod$0(Lj$/time/LocalDate;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;)V
    .locals 3
    .param p1, "endDate"    # Lj$/time/LocalDate;
    .param p2, "callback"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;
    .param p3, "pickedStartDate"    # Lj$/time/LocalDate;

    .line 285
    move-object v0, p1

    .line 286
    .local v0, "proposedEndDate":Lj$/time/LocalDate;
    invoke-virtual {v0, p3}, Lj$/time/LocalDate;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v1

    if-gez v1, :cond_0

    .line 287
    move-object v0, p3

    .line 289
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->system_update_policy_pick_end_free_period_title:I

    new-instance v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda6;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->showDatePicker(Lj$/time/LocalDate;ILcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V

    .line 293
    return-void
.end method

.method static synthetic lambda$promptToSetFreezePeriod$1(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;Lj$/time/LocalDate;)V
    .locals 0
    .param p0, "callback"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;
    .param p1, "pickedStartDate"    # Lj$/time/LocalDate;
    .param p2, "pickedEndDate"    # Lj$/time/LocalDate;

    .line 292
    invoke-interface {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;->onResult(Lj$/time/LocalDate;Lj$/time/LocalDate;)V

    return-void
.end method

.method private synthetic lambda$selectTime$0(ZLandroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "isWindowStart"    # Z
    .param p2, "picker"    # Landroid/widget/TimePicker;
    .param p3, "hour"    # I
    .param p4, "minutes"    # I

    .line 215
    if-eqz p1, :cond_0

    .line 216
    mul-int/lit8 v0, p3, 0x3c

    add-int/2addr v0, p4

    iput v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    goto :goto_0

    .line 218
    :cond_0
    mul-int/lit8 v0, p3, 0x3c

    add-int/2addr v0, p4

    iput v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    .line 220
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->updateMaintenanceWindowDisplay()V

    .line 221
    return-void
.end method

.method static synthetic lambda$showDatePicker$0(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;Landroid/widget/DatePicker;III)V
    .locals 1
    .param p0, "resultCallback"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;
    .param p1, "pickerObj"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .line 268
    add-int/lit8 v0, p3, 0x1

    invoke-static {p2, v0, p4}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    .line 269
    .local v0, "pickedDate":Lj$/time/LocalDate;
    invoke-interface {p0, v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;->onResult(Lj$/time/LocalDate;)V

    .line 270
    return-void
.end method

.method private promptToSetFreezePeriod(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;Lj$/time/LocalDate;)V
    .locals 2
    .param p1, "callback"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;
    .param p2, "startDate"    # Lj$/time/LocalDate;
    .param p3, "endDate"    # Lj$/time/LocalDate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "callback",
            "startDate",
            "endDate"
        }
    .end annotation

    .line 281
    sget v0, Lcom/afwsamples/testdpc/R$string;->system_update_policy_pick_start_free_period_title:I

    new-instance v1, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3, p1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Lj$/time/LocalDate;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->showDatePicker(Lj$/time/LocalDate;ILcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V

    .line 294
    return-void
.end method

.method private reloadSystemUpdatePolicy()V
    .locals 9

    .line 343
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    .line 344
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const-string v1, "Unknown"

    .line 346
    .local v1, "policyDescription":Ljava/lang/String;
    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 347
    const-string v1, "None"

    .line 348
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    sget v4, Lcom/afwsamples/testdpc/R$id;->system_update_policy_none:I

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 349
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 352
    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy;->getPolicyType()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    const-string v1, "Postpone"

    .line 376
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    sget v5, Lcom/afwsamples/testdpc/R$id;->system_update_policy_postpone:I

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 377
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy;->getInstallWindowStart()I

    move-result v2

    iput v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    .line 361
    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy;->getInstallWindowEnd()I

    move-result v2

    iput v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    .line 364
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    .line 366
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    .line 367
    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 363
    const-string v3, "Windowed: %s-%s"

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->updateMaintenanceWindowDisplay()V

    .line 370
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    sget v3, Lcom/afwsamples/testdpc/R$id;->system_update_policy_Windowed:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 371
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    goto :goto_0

    .line 354
    :pswitch_2
    const-string v1, "Automatic"

    .line 355
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    sget v5, Lcom/afwsamples/testdpc/R$id;->system_update_policy_automatic:I

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 356
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    nop

    .line 380
    :goto_0
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    .line 381
    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy;->getFreezePeriods()Ljava/util/List;

    move-result-object v2

    .line 382
    .local v2, "freezePeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 383
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/FreezePeriod;

    .line 384
    .local v5, "period":Landroid/app/admin/FreezePeriod;
    new-instance v6, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    invoke-static {v5}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticAPIConversion0;->m(Landroid/app/admin/FreezePeriod;)Lj$/time/MonthDay;

    move-result-object v7

    invoke-static {v5}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticAPIConversion1;->m(Landroid/app/admin/FreezePeriod;)Lj$/time/MonthDay;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;-><init>(Lj$/time/MonthDay;Lj$/time/MonthDay;)V

    .line 385
    .local v6, "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v5    # "period":Landroid/app/admin/FreezePeriod;
    .end local v6    # "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    goto :goto_1

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->notifyDataSetChanged()V

    .line 388
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    .end local v2    # "freezePeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mCurrentSystemUpdatePolicy:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private selectTime(Z)V
    .locals 7
    .param p1, "isWindowStart"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isWindowStart"
        }
    .end annotation

    .line 210
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    .line 211
    .local v0, "defaultMinutes":I
    :goto_0
    new-instance v1, Landroid/app/TimePickerDialog;

    .line 213
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda4;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Z)V

    div-int/lit8 v4, v0, 0x3c

    rem-int/lit8 v5, v0, 0x3c

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 225
    .local v1, "timePicker":Landroid/app/TimePickerDialog;
    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V

    .line 226
    return-void
.end method

.method private setSystemUpdatePolicy()Z
    .locals 8

    .line 299
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 300
    .local v0, "checkedRadioButtonId":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->system_update_policy_automatic:I

    if-ne v0, v1, :cond_0

    .line 301
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy;->createAutomaticInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v1

    .local v1, "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_0

    .line 302
    .end local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->system_update_policy_Windowed:I

    if-ne v0, v1, :cond_1

    .line 303
    iget v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    iget v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    .line 304
    invoke-static {v1, v2}, Landroid/app/admin/SystemUpdatePolicy;->createWindowedInstallPolicy(II)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v1

    .restart local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_0

    .line 305
    .end local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->system_update_policy_postpone:I

    if-ne v0, v1, :cond_2

    .line 306
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy;->createPostponeInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v1

    .restart local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_0

    .line 308
    .end local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :cond_2
    const/4 v1, 0x0

    .line 312
    .restart local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v3, "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    .line 315
    .local v5, "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    invoke-virtual {v5}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->toFreezePeriod()Landroid/app/admin/FreezePeriod;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    nop

    .end local v5    # "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    goto :goto_1

    .line 317
    :cond_3
    invoke-virtual {v1, v3}, Landroid/app/admin/SystemUpdatePolicy;->setFreezePeriods(Ljava/util/List;)Landroid/app/admin/SystemUpdatePolicy;

    .line 319
    .end local v3    # "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    :cond_4
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/admin/DevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 320
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Policy set successfully"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return v2

    .line 322
    :catch_0
    move-exception v3

    .line 323
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 324
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 325
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set system update policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 329
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    return v2
.end method

.method private showDatePicker(Lj$/time/LocalDate;ILcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V
    .locals 6
    .param p1, "hint"    # Lj$/time/LocalDate;
    .param p2, "titleResId"    # I
    .param p3, "resultCallback"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hint",
            "titleResId",
            "resultCallback"
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 266
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V

    .line 271
    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result v3

    .line 272
    invoke-virtual {p1}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/Month;->getValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 273
    invoke-virtual {p1}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 274
    .local v0, "picker":Landroid/app/DatePickerDialog;
    invoke-virtual {p0, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 276
    return-void
.end method

.method private updateMaintenanceWindowDisplay()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowStart:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowEnd:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "checkedId"
        }
    .end annotation

    .line 396
    sget v0, Lcom/afwsamples/testdpc/R$id;->system_update_policy_Windowed:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->updateMaintenanceWindowDisplay()V

    .line 398
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    :goto_0
    sget v0, Lcom/afwsamples/testdpc/R$id;->system_update_policy_none:I

    if-eq p2, v0, :cond_2

    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    goto :goto_1

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 403
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 233
    .local v0, "id":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->system_update_policy_window_start:I

    if-ne v0, v1, :cond_0

    .line 234
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->selectTime(Z)V

    goto :goto_0

    .line 235
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->system_update_policy_window_end:I

    if-ne v0, v1, :cond_1

    .line 236
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->selectTime(Z)V

    goto :goto_0

    .line 237
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->system_update_policy_set:I

    if-ne v0, v1, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->setSystemUpdatePolicy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->reloadSystemUpdatePolicy()V

    goto :goto_0

    .line 241
    :cond_2
    sget v1, Lcom/afwsamples/testdpc/R$id;->system_update_policy_btn_add_period:I

    if-ne v0, v1, :cond_3

    .line 242
    new-instance v1, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda5;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;)V

    .line 249
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v2

    .line 250
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v3

    .line 242
    invoke-direct {p0, v1, v2, v3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->promptToSetFreezePeriod(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;Lj$/time/LocalDate;)V

    .line 252
    :cond_3
    :goto_0
    return-void
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

    .line 178
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 180
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 185
    sget v0, Lcom/afwsamples/testdpc/R$layout;->system_update_policy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "view":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_current:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mCurrentSystemUpdatePolicy:Landroid/widget/EditText;

    .line 188
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_selection:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    .line 189
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_windowed_details:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    .line 190
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_window_start:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowStart:Landroid/widget/Button;

    .line 191
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_window_end:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowEnd:Landroid/widget/Button;

    .line 192
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_blackout_periods:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    .line 193
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_blackout_period_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodList:Landroid/widget/ListView;

    .line 195
    new-instance v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    .line 196
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowStart:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowEnd:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_set:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    sget v2, Lcom/afwsamples/testdpc/R$id;->system_update_policy_btn_add_period:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 205
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->system_update_policy:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 131
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->reloadSystemUpdatePolicy()V

    .line 132
    return-void
.end method
