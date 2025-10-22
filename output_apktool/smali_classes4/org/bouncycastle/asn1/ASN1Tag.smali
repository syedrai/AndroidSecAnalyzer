.class final Lorg/bouncycastle/asn1/ASN1Tag;
.super Ljava/lang/Object;
.source "ASN1Tag.java"


# instance fields
.field private final tagClass:I

.field private final tagNumber:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "tagClass"    # I
    .param p2, "tagNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagClass",
            "tagNumber"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagClass:I

    .line 16
    iput p2, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagNumber:I

    .line 17
    return-void
.end method

.method static create(II)Lorg/bouncycastle/asn1/ASN1Tag;
    .locals 1
    .param p0, "tagClass"    # I
    .param p1, "tagNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagClass",
            "tagNumber"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Tag;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1Tag;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method getTagClass()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagClass:I

    return v0
.end method

.method getTagNumber()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagNumber:I

    return v0
.end method
