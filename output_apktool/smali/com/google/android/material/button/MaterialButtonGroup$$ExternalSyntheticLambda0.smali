.class public final synthetic Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public synthetic f$0:Lcom/google/android/material/button/MaterialButtonGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButtonGroup;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButtonGroup;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->$r8$lambda$eVKX1G1rimvwtFyChAIdzKgGkzc(Lcom/google/android/material/button/MaterialButtonGroup;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)I

    move-result p1

    return p1
.end method
