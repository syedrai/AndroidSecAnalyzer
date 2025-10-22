.class Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;
.super Ljava/lang/Object;
.source "NetworkUsageStatsFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->pickDate(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

.field final synthetic val$calendar:Ljava/util/Calendar;

.field final synthetic val$target:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Ljava/util/Calendar;Ljava/util/Date;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$calendar",
            "val$target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 343
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$target:Ljava/util/Date;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "year",
            "monthOfYear",
            "dayOfMonth"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 347
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 348
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 349
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$target:Ljava/util/Date;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 350
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->-$$Nest$mupdateButtonsText(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)V

    .line 351
    return-void
.end method
