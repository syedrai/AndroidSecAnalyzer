.class Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "NetworkUsageStatsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final image:Landroid/widget/ImageView;

.field public final state:Landroid/widget/TextView;

.field public final summary:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "summary"    # Landroid/widget/TextView;
    .param p3, "state"    # Landroid/widget/TextView;
    .param p4, "image"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "title",
            "summary",
            "state",
            "image"
        }
    .end annotation

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 490
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->summary:Landroid/widget/TextView;

    .line 491
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->state:Landroid/widget/TextView;

    .line 492
    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->image:Landroid/widget/ImageView;

    .line 493
    return-void
.end method
