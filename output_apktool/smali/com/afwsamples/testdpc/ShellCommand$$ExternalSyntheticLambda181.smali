.class public final synthetic Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Ljava/lang/String;

.field public synthetic f$1:I

.field public synthetic f$2:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/security/keystore/KeyGenParameterSpec;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;->f$1:I

    iput-object p3, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;->f$2:Landroid/security/keystore/KeyGenParameterSpec;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;->f$1:I

    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;->f$2:Landroid/security/keystore/KeyGenParameterSpec;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$handleDeviceAttestationKeyPair$1(Ljava/lang/String;ILandroid/security/keystore/KeyGenParameterSpec;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
