.class Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient$2;
.super Ljava/lang/Object;
.source "JceKeyAgreeRecipient.java"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B
    .locals 0
    .param p1, "keyAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "keySize"    # I
    .param p3, "userKeyMaterialParameters"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyAlgorithm",
            "keySize",
            "userKeyMaterialParameters"
        }
    .end annotation

    .line 338
    return-object p3
.end method
