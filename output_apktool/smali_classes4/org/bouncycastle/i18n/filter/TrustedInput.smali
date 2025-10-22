.class public Lorg/bouncycastle/i18n/filter/TrustedInput;
.super Ljava/lang/Object;
.source "TrustedInput.java"


# instance fields
.field protected input:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/bouncycastle/i18n/filter/TrustedInput;->input:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public getInput()Ljava/lang/Object;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/TrustedInput;->input:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/TrustedInput;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
