.class public Lorg/bouncycastle/cms/CMSEncryptedGenerator;
.super Ljava/lang/Object;
.source "CMSEncryptedGenerator.java"


# instance fields
.field protected unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSEncryptedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 15
    return-void
.end method


# virtual methods
.method public setUnprotectedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0
    .param p1, "unprotectedAttributeGenerator"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unprotectedAttributeGenerator"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEncryptedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 20
    return-void
.end method
