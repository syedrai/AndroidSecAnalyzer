.class public Lorg/bouncycastle/cms/bc/BcKEKRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;
.source "BcKEKRecipientInfoGenerator.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;)V
    .locals 0
    .param p1, "kekIdentifier"    # Lorg/bouncycastle/asn1/cms/KEKIdentifier;
    .param p2, "kekWrapper"    # Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kekIdentifier",
            "kekWrapper"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/SymmetricKeyWrapper;)V

    .line 13
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;)V
    .locals 2
    .param p1, "keyIdentifier"    # [B
    .param p2, "kekWrapper"    # Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyIdentifier",
            "kekWrapper"
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;-><init>([BLorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/bc/BcKEKRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;)V

    .line 18
    return-void
.end method
