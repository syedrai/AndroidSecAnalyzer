.class Landroidx/preference/Preference$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Landroidx/preference/Preference$1;->this$0:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 180
    iget-object v0, p0, Landroidx/preference/Preference$1;->this$0:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    .line 181
    return-void
.end method
