.class Lorg/bouncycastle/asn1/ASN1VideotexString$1;
.super Lorg/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1VideotexString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ASN1VideotexString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "tagNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "javaClass",
            "tagNumber"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method fromImplicitPrimitive(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .param p1, "octetString"    # Lorg/bouncycastle/asn1/DEROctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octetString"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VideotexString;

    move-result-object v0

    return-object v0
.end method
