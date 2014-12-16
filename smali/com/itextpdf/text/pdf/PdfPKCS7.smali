.class public Lcom/itextpdf/text/pdf/PdfPKCS7;
.super Ljava/lang/Object;
.source "PdfPKCS7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;,
        Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;
    }
.end annotation


# static fields
.field private static final ID_ADBE_REVOCATION:Ljava/lang/String; = "1.2.840.113583.1.1.8"

.field private static final ID_CONTENT_TYPE:Ljava/lang/String; = "1.2.840.113549.1.9.3"

.field private static final ID_DSA:Ljava/lang/String; = "1.2.840.10040.4.1"

.field private static final ID_MESSAGE_DIGEST:Ljava/lang/String; = "1.2.840.113549.1.9.4"

.field private static final ID_PKCS7_DATA:Ljava/lang/String; = "1.2.840.113549.1.7.1"

.field private static final ID_PKCS7_SIGNED_DATA:Ljava/lang/String; = "1.2.840.113549.1.7.2"

.field private static final ID_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.1"

.field private static final ID_SIGNING_TIME:Ljava/lang/String; = "1.2.840.113549.1.9.5"

.field private static final algorithmNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final allowedDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final digestNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private RSAdata:[B

.field private basicResp:Lorg/bouncycastle/ocsp/BasicOCSPResp;

.field private certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field private digest:[B

.field private digestAlgorithm:Ljava/lang/String;

.field private digestAttr:[B

.field private digestEncryptionAlgorithm:Ljava/lang/String;

.field private digestalgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private externalDigest:[B

.field private externalRSAdata:[B

.field private location:Ljava/lang/String;

.field private messageDigest:Ljava/security/MessageDigest;

.field private transient privKey:Ljava/security/PrivateKey;

.field private provider:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private sig:Ljava/security/Signature;

.field private sigAttr:[B

.field private signCert:Ljava/security/cert/X509Certificate;

.field private signCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private signDate:Ljava/util/Calendar;

.field private signName:Ljava/lang/String;

.field private signerversion:I

.field private timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

.field private verified:Z

.field private verifyResult:Z

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    .line 179
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.2.5"

    const-string/jumbo v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.2.2"

    const-string/jumbo v2, "MD2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.14.3.2.26"

    const-string/jumbo v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.2.4"

    const-string/jumbo v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.2.1"

    const-string/jumbo v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.2.2"

    const-string/jumbo v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.2.3"

    const-string/jumbo v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.2.2"

    const-string/jumbo v2, "RIPEMD128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.2.1"

    const-string/jumbo v2, "RIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.2.3"

    const-string/jumbo v2, "RIPEMD256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.4"

    const-string/jumbo v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.2"

    const-string/jumbo v2, "MD2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.5"

    const-string/jumbo v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.14"

    const-string/jumbo v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.11"

    const-string/jumbo v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.12"

    const-string/jumbo v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.13"

    const-string/jumbo v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.2.5"

    const-string/jumbo v2, "MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.2.2"

    const-string/jumbo v2, "MD2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.10040.4.3"

    const-string/jumbo v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.3.1"

    const-string/jumbo v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.3.2"

    const-string/jumbo v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.3.3"

    const-string/jumbo v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.3.4"

    const-string/jumbo v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.3.1.3"

    const-string/jumbo v2, "RIPEMD128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.3.1.2"

    const-string/jumbo v2, "RIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.3.1.4"

    const-string/jumbo v2, "RIPEMD256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.1"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.10040.4.1"

    const-string/jumbo v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.2"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.4"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.5"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.14"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.11"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.12"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.113549.1.1.13"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.2.840.10040.4.3"

    const-string/jumbo v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.3.1"

    const-string/jumbo v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "2.16.840.1.101.3.4.3.2"

    const-string/jumbo v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.3.1.3"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.3.1.2"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    const-string/jumbo v1, "1.3.36.3.3.1.4"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "MD5"

    const-string/jumbo v2, "1.2.840.113549.2.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "MD2"

    const-string/jumbo v2, "1.2.840.113549.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA1"

    const-string/jumbo v2, "1.3.14.3.2.26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA224"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA256"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA384"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA512"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "MD-5"

    const-string/jumbo v2, "1.2.840.113549.2.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "MD-2"

    const-string/jumbo v2, "1.2.840.113549.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA-1"

    const-string/jumbo v2, "1.3.14.3.2.26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA-224"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA-256"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA-384"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "SHA-512"

    const-string/jumbo v2, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "RIPEMD128"

    const-string/jumbo v2, "1.3.36.3.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "RIPEMD-128"

    const-string/jumbo v2, "1.3.36.3.2.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "RIPEMD160"

    const-string/jumbo v2, "1.3.36.3.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "RIPEMD-160"

    const-string/jumbo v2, "1.3.36.3.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "RIPEMD256"

    const-string/jumbo v2, "1.3.36.3.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    const-string/jumbo v1, "RIPEMD-256"

    const-string/jumbo v2, "1.3.36.3.2.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "privKey"
    .parameter "certChain"
    .parameter "crlList"
    .parameter "hashAlgorithm"
    .parameter "provider"
    .parameter "hasRSAdata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->privKey:Ljava/security/PrivateKey;

    .line 562
    iput-object p5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->provider:Ljava/lang/String;

    .line 564
    sget-object v4, Lcom/itextpdf/text/pdf/PdfPKCS7;->allowedDigests:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAlgorithm:Ljava/lang/String;

    .line 565
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAlgorithm:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 566
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v5, "unknown.hash.algorithm.1"

    invoke-static {v5, p4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 568
    :cond_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signerversion:I

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->version:I

    .line 569
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 570
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 571
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 572
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestalgos:Ljava/util/Set;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAlgorithm:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 577
    aget-object v4, p2, v6

    check-cast v4, Ljava/security/cert/X509Certificate;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 578
    move-object v0, p2

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 579
    .local v1, element:Ljava/security/cert/Certificate;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v1           #element:Ljava/security/cert/Certificate;
    :cond_1
    if-eqz p3, :cond_2

    .line 583
    move-object v0, p3

    .local v0, arr$:[Ljava/security/cert/CRL;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 584
    .local v1, element:Ljava/security/cert/CRL;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 588
    .end local v0           #arr$:[Ljava/security/cert/CRL;
    .end local v1           #element:Ljava/security/cert/CRL;
    :cond_2
    if-eqz p1, :cond_3

    .line 592
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 593
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    const-string/jumbo v5, "RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 594
    const-string/jumbo v4, "1.2.840.113549.1.1.1"

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 603
    :cond_3
    :goto_2
    if-eqz p6, :cond_5

    .line 604
    new-array v4, v6, [B

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    .line 605
    if-eqz p5, :cond_4

    const-string/jumbo v4, "SunPKCS11"

    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 606
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 611
    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 612
    if-nez p5, :cond_a

    .line 613
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 617
    :goto_4
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v4, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 619
    :cond_6
    return-void

    .line 596
    :cond_7
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    const-string/jumbo v5, "DSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 597
    const-string/jumbo v4, "1.2.840.10040.4.1"

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    goto :goto_2

    .line 600
    :cond_8
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v5, "unknown.key.algorithm.1"

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    goto :goto_3

    .line 615
    :cond_a
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    goto :goto_4
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 45
    .parameter "contentsKey"
    .parameter "provider"

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 395
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->provider:Ljava/lang/String;

    .line 396
    new-instance v8, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v41, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v41

    invoke-direct {v8, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .local v8, din:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_1
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .line 409
    .local v21, pkcs:Lorg/bouncycastle/asn1/DERObject;
    :try_start_2
    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move/from16 v41, v0

    if-nez v41, :cond_0

    .line 410
    new-instance v41, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v42, "not.a.valid.pkcs.7.object.not.a.sequence"

    invoke-static/range {v42 .. v42}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    .end local v8           #din:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v21           #pkcs:Lorg/bouncycastle/asn1/DERObject;
    :catch_0
    move-exception v9

    .line 540
    .local v9, e:Ljava/lang/Exception;
    new-instance v41, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v41

    invoke-direct {v0, v9}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v41

    .line 406
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #din:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_1
    move-exception v9

    .line 407
    .local v9, e:Ljava/io/IOException;
    :try_start_3
    new-instance v41, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v42, "can.t.decode.pkcs7signeddata.object"

    invoke-static/range {v42 .. v42}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 412
    .end local v9           #e:Ljava/io/IOException;
    .restart local v21       #pkcs:Lorg/bouncycastle/asn1/DERObject;
    :cond_0
    move-object/from16 v0, v21

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v31, v0

    .line 413
    .local v31, signedData:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    check-cast v20, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 414
    .local v20, objId:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "1.2.840.113549.1.7.2"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1

    .line 415
    new-instance v41, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v42, "not.a.valid.pkcs.7.object.not.signed.data"

    invoke-static/range {v42 .. v42}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 416
    :cond_1
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 425
    .local v5, content:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/math/BigInteger;->intValue()I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->version:I

    .line 428
    new-instance v41, Ljava/util/HashSet;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 429
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v10

    .line 430
    .local v10, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/bouncycastle/asn1/ASN1Sequence;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 432
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 433
    .local v24, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 434
    .local v19, o:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestalgos:Ljava/util/Set;

    move-object/from16 v41, v0

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    .end local v19           #o:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v24           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    new-instance v7, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v7}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    .line 439
    .local v7, cr:Lorg/bouncycastle/jce/provider/X509CertParser;
    new-instance v41, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 440
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineReadAll()Ljava/util/Collection;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 443
    const/16 v41, 0x2

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v22

    check-cast v22, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 444
    .local v22, rsaData:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_3

    .line 445
    const/16 v41, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v23

    check-cast v23, Lorg/bouncycastle/asn1/DEROctetString;

    .line 446
    .local v23, rsaDataContent:Lorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    .line 450
    .end local v23           #rsaDataContent:Lorg/bouncycastle/asn1/DEROctetString;
    :cond_3
    const/16 v17, 0x3

    .line 451
    .local v17, next:I
    :goto_1
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    move/from16 v41, v0

    if-eqz v41, :cond_4

    .line 452
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 453
    :cond_4
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v33

    check-cast v33, Lorg/bouncycastle/asn1/ASN1Set;

    .line 454
    .local v33, signerInfos:Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_5

    .line 455
    new-instance v41, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v42, "this.pkcs.7.object.has.multiple.signerinfos.only.one.is.supported.at.this.time"

    invoke-static/range {v42 .. v42}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 456
    :cond_5
    const/16 v41, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v32

    check-cast v32, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 463
    .local v32, signerInfo:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/math/BigInteger;->intValue()I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->signerversion:I

    .line 465
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 466
    .local v14, issuerAndSerialNumber:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v13, Lorg/bouncycastle/jce/X509Principal;

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v41

    move-object/from16 v0, v41

    invoke-direct {v13, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    .line 467
    .local v13, issuer:Lorg/bouncycastle/jce/X509Principal;
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v28

    .line 468
    .local v28, serialNumber:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/Certificate;

    .line 469
    .local v11, element:Ljava/security/cert/Certificate;
    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 470
    .local v4, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Lorg/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 471
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 475
    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    .end local v11           #element:Ljava/security/cert/Certificate;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v41, v0

    if-nez v41, :cond_8

    .line 476
    new-instance v41, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v42, "can.t.find.signing.certificate.with.serial.1"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lorg/bouncycastle/jce/X509Principal;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, " / "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 479
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCertificateChain()V

    .line 480
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAlgorithm:Ljava/lang/String;

    .line 481
    const/16 v17, 0x3

    .line 482
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move/from16 v41, v0

    if-eqz v41, :cond_15

    .line 483
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v36

    check-cast v36, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 484
    .local v36, tagsig:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/16 v41, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v34

    .line 485
    .local v34, sseq:Lorg/bouncycastle/asn1/ASN1Set;
    const-string/jumbo v41, "DER"

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->sigAttr:[B

    .line 487
    const/16 v16, 0x0

    .local v16, k:I
    :goto_2
    invoke-virtual/range {v34 .. v34}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-ge v0, v1, :cond_d

    .line 488
    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v25

    check-cast v25, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 489
    .local v25, seq2:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "1.2.840.113549.1.9.4"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 490
    const/16 v41, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v29

    check-cast v29, Lorg/bouncycastle/asn1/ASN1Set;

    .line 491
    .local v29, set:Lorg/bouncycastle/asn1/ASN1Set;
    const/16 v41, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAttr:[B

    .line 487
    .end local v29           #set:Lorg/bouncycastle/asn1/ASN1Set;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 493
    :cond_a
    const/16 v41, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "1.2.840.113583.1.1.8"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 494
    const/16 v41, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v30

    check-cast v30, Lorg/bouncycastle/asn1/ASN1Set;

    .line 495
    .local v30, setout:Lorg/bouncycastle/asn1/ASN1Set;
    const/16 v41, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v27

    check-cast v27, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 496
    .local v27, seqout:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v15, 0x0

    .local v15, j:I
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v15, v0, :cond_9

    .line 497
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    check-cast v37, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 498
    .local v37, tg:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v37 .. v37}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v41

    if-nez v41, :cond_b

    .line 499
    invoke-virtual/range {v37 .. v37}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v26

    check-cast v26, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 500
    .local v26, seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPKCS7;->findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 502
    .end local v26           #seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_b
    invoke-virtual/range {v37 .. v37}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_c

    .line 503
    invoke-virtual/range {v37 .. v37}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v26

    check-cast v26, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 504
    .restart local v26       #seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPKCS7;->findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 496
    .end local v26           #seqin:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 509
    .end local v15           #j:I
    .end local v25           #seq2:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v27           #seqout:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v30           #setout:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v37           #tg:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAttr:[B

    move-object/from16 v41, v0

    if-nez v41, :cond_e

    .line 510
    new-instance v41, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v42, "authenticated.attribute.is.missing.the.digest"

    invoke-static/range {v42 .. v42}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 511
    :cond_e
    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v17

    .line 513
    .end local v16           #k:I
    .end local v17           #next:I
    .end local v34           #sseq:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v36           #tagsig:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .local v18, next:I
    :goto_4
    add-int/lit8 v17, v18, 0x1

    .end local v18           #next:I
    .restart local v17       #next:I
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 514
    add-int/lit8 v18, v17, 0x1

    .end local v17           #next:I
    .restart local v18       #next:I
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    .line 515
    invoke-virtual/range {v32 .. v32}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v41

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_f

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    move/from16 v41, v0

    if-eqz v41, :cond_f

    .line 516
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v35

    check-cast v35, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 517
    .local v35, taggedObject:Lorg/bouncycastle/asn1/DERTaggedObject;
    const/16 v41, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v40

    .line 518
    .local v40, unat:Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v2, Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-object/from16 v0, v40

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 519
    .local v2, attble:Lorg/bouncycastle/asn1/cms/AttributeTable;
    sget-object v41, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signatureTimeStampToken:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v39

    .line 520
    .local v39, ts:Lorg/bouncycastle/asn1/cms/Attribute;
    if-eqz v39, :cond_f

    invoke-virtual/range {v39 .. v39}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v41

    if-lez v41, :cond_f

    .line 521
    invoke-virtual/range {v39 .. v39}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    .line 522
    .local v3, attributeValues:Lorg/bouncycastle/asn1/ASN1Set;
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v38

    .line 523
    .local v38, tokenSequence:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-object/from16 v0, v38

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 524
    .local v6, contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v41, Lorg/bouncycastle/tsp/TimeStampToken;

    move-object/from16 v0, v41

    invoke-direct {v0, v6}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 527
    .end local v2           #attble:Lorg/bouncycastle/asn1/cms/AttributeTable;
    .end local v3           #attributeValues:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v6           #contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v35           #taggedObject:Lorg/bouncycastle/asn1/DERTaggedObject;
    .end local v38           #tokenSequence:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v39           #ts:Lorg/bouncycastle/asn1/cms/Attribute;
    .end local v40           #unat:Lorg/bouncycastle/asn1/ASN1Set;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v41, v0

    if-nez v41, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAttr:[B

    move-object/from16 v41, v0

    if-eqz v41, :cond_12

    .line 528
    :cond_10
    if-eqz p2, :cond_11

    const-string/jumbo v41, "SunPKCS11"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 529
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 533
    :cond_12
    :goto_5
    if-nez p2, :cond_14

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 537
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 542
    return-void

    .line 531
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    goto :goto_5

    .line 536
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .end local v18           #next:I
    .restart local v17       #next:I
    :cond_15
    move/from16 v18, v17

    .end local v17           #next:I
    .restart local v18       #next:I
    goto/16 :goto_4
.end method

.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 5
    .parameter "contentsKey"
    .parameter "certsKey"
    .parameter "provider"

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    :try_start_0
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->provider:Ljava/lang/String;

    .line 306
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    .line 307
    .local v0, cr:Lorg/bouncycastle/jce/provider/X509CertParser;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 308
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineReadAll()Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 309
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCerts:Ljava/util/Collection;

    .line 310
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 312
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 313
    .local v2, in:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    .line 314
    if-nez p3, :cond_0

    .line 315
    const-string/jumbo v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 318
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 323
    return-void

    .line 317
    :cond_0
    const-string/jumbo v3, "SHA1withRSA"

    invoke-static {v3, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v0           #cr:Lorg/bouncycastle/jce/provider/X509CertParser;
    .end local v2           #in:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method private buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 6
    .parameter "timeStampToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1307
    if-nez p1, :cond_0

    .line 1308
    const/4 v3, 0x0

    .line 1322
    :goto_0
    return-object v3

    .line 1311
    :cond_0
    const-string/jumbo v0, "1.2.840.113549.1.9.16.2.14"

    .line 1313
    .local v0, ID_TIME_STAMP_TOKEN:Ljava/lang/String;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1314
    .local v2, tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1316
    .local v3, unauthAttributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1317
    .local v4, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1318
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1319
    .local v1, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1321
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method private findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .parameter "seq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 339
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 340
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 341
    .local v0, ar:Ljava/io/ByteArrayInputStream;
    const-string/jumbo v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 342
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 343
    .local v2, crl:Ljava/security/cert/X509CRL;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v0           #ar:Ljava/io/ByteArrayInputStream;
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v2           #crl:Ljava/security/cert/X509CRL;
    .end local v3           #k:I
    :catch_0
    move-exception v4

    .line 349
    :cond_0
    return-void
.end method

.method private findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .parameter "seq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 352
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->basicResp:Lorg/bouncycastle/ocsp/BasicOCSPResp;

    .line 353
    const/4 v4, 0x0

    .line 355
    .local v4, ret:Z
    :cond_0
    invoke-virtual {p1, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v6, :cond_2

    invoke-virtual {p1, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 380
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DEROctetString;

    .line 381
    .local v2, os:Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 382
    .local v0, inp:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v3

    .line 383
    .local v3, resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    new-instance v6, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    invoke-direct {v6, v3}, Lorg/bouncycastle/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->basicResp:Lorg/bouncycastle/ocsp/BasicOCSPResp;

    .line 384
    .end local v0           #inp:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #os:Lorg/bouncycastle/asn1/DEROctetString;
    .end local v3           #resp:Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    const/4 v4, 0x1

    .line 360
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 361
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v6, :cond_4

    .line 362
    invoke-virtual {p1, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 363
    .restart local p1
    const/4 v4, 0x0

    .line 377
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    goto :goto_0

    .line 366
    :cond_4
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_5

    .line 367
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 368
    .local v5, tag:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v6, :cond_1

    .line 369
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 370
    .restart local p1
    const/4 v4, 0x0

    .line 371
    goto :goto_2

    .line 360
    .end local v5           #tag:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "oid"

    .prologue
    .line 266
    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->algorithmNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 270
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method private getAuthenticatedAttributeSet([BLjava/util/Calendar;[B)Lorg/bouncycastle/asn1/DERSet;
    .locals 17
    .parameter "secondDigest"
    .parameter "signingTime"
    .parameter "ocsp"

    .prologue
    .line 1364
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1365
    .local v1, attribute:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1366
    .local v9, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v13, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v14, "1.2.840.113549.1.9.3"

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1367
    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    new-instance v14, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v15, "1.2.840.113549.1.7.1"

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1368
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1369
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v9           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1370
    .restart local v9       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v13, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v14, "1.2.840.113549.1.9.5"

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1371
    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    new-instance v14, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1372
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1373
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v9           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1374
    .restart local v9       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v13, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v14, "1.2.840.113549.1.9.4"

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1375
    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1376
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1377
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1378
    :cond_0
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v9           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1379
    .restart local v9       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v13, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v14, "1.2.840.113583.1.1.8"

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1381
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1383
    .local v7, revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1384
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1385
    .local v10, v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CRL;

    .line 1386
    .local v5, element:Ljava/security/cert/CRL;
    new-instance v8, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    check-cast v5, Ljava/security/cert/X509CRL;

    .end local v5           #element:Ljava/security/cert/CRL;
    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v13}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1387
    .local v8, t:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1412
    .end local v1           #attribute:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8           #t:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v9           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v10           #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v4

    .line 1413
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v13, v4}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 1389
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #attribute:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v10       #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1
    :try_start_1
    new-instance v13, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v14, 0x1

    const/4 v15, 0x0

    new-instance v16, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v13 .. v16}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1392
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    if-eqz p3, :cond_3

    .line 1393
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1394
    .local v3, doctet:Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1395
    .local v12, vo1:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1396
    .restart local v10       #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v13, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1397
    invoke-virtual {v10, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1398
    new-instance v2, Lorg/bouncycastle/asn1/DEREnumerated;

    const/4 v13, 0x0

    invoke-direct {v2, v13}, Lorg/bouncycastle/asn1/DEREnumerated;-><init>(I)V

    .line 1399
    .local v2, den:Lorg/bouncycastle/asn1/DEREnumerated;
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1400
    .local v11, v3:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v11, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1401
    new-instance v13, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v14, 0x1

    const/4 v15, 0x0

    new-instance v16, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v13 .. v16}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v11, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1402
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1403
    new-instance v13, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v14, 0x1

    const/4 v15, 0x1

    new-instance v16, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v13 .. v16}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1406
    .end local v2           #den:Lorg/bouncycastle/asn1/DEREnumerated;
    .end local v3           #doctet:Lorg/bouncycastle/asn1/DEROctetString;
    .end local v10           #v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11           #v3:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12           #vo1:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v14, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1407
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1410
    .end local v7           #revocationV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    new-instance v13, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v13, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v13
.end method

.method public static getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "oid"

    .prologue
    .line 252
    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 256
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method private static getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
    .locals 5
    .parameter "cert"
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1026
    .local v1, bytes:[B
    if-nez v1, :cond_0

    .line 1027
    const/4 v3, 0x0

    .line 1032
    :goto_0
    return-object v3

    .line 1029
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1030
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1031
    .local v2, octs:Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1032
    .restart local v0       #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    goto :goto_0
.end method

.method private static getIssuer([B)Lorg/bouncycastle/asn1/DERObject;
    .locals 4
    .parameter "enc"

    .prologue
    .line 1047
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1048
    .local v1, in:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1049
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 1051
    .end local v1           #in:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    .line 1052
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static getIssuerFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;
    .locals 3
    .parameter "cert"

    .prologue
    .line 1079
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getIssuer([B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getOCSPURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 9
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 974
    :try_start_0
    sget-object v6, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    .line 975
    .local v5, obj:Lorg/bouncycastle/asn1/DERObject;
    if-nez v5, :cond_1

    move-object v3, v7

    .line 997
    .end local v5           #obj:Lorg/bouncycastle/asn1/DERObject;
    :cond_0
    :goto_0
    return-object v3

    .line 979
    .restart local v5       #obj:Lorg/bouncycastle/asn1/DERObject;
    :cond_1
    move-object v0, v5

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v2, v0

    .line 980
    .local v2, AccessDescriptions:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 981
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 982
    .local v1, AccessDescription:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    .line 980
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 985
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "1.3.6.1.5.5.7.48.1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 986
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERObject;

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getStringFromGeneralName(Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v3

    .line 987
    .local v3, AccessLocation:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 988
    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    .end local v1           #AccessDescription:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2           #AccessDescriptions:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3           #AccessLocation:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #obj:Lorg/bouncycastle/asn1/DERObject;
    :catch_0
    move-exception v6

    :cond_4
    move-object v3, v7

    .line 997
    goto :goto_0
.end method

.method private static getStringFromGeneralName(Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;
    .locals 4
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 1037
    .local v0, taggedObject:Lorg/bouncycastle/asn1/DERTaggedObject;
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static getSubject([B)Lorg/bouncycastle/asn1/DERObject;
    .locals 4
    .parameter "enc"

    .prologue
    .line 1063
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1064
    .local v1, in:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1065
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    .line 1067
    .end local v1           #in:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    .line 1068
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;
    .locals 3
    .parameter "cert"

    .prologue
    .line 1093
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getSubject([B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static loadCacertsKeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->loadCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static loadCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 8
    .parameter "provider"

    .prologue
    .line 796
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "lib"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "security"

    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 798
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "cacerts"

    invoke-direct {v1, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 799
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    const/4 v3, 0x0

    .line 801
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    if-nez p0, :cond_1

    .line 804
    :try_start_1
    const-string/jumbo v6, "JKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 807
    .local v5, k:Ljava/security/KeyStore;
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 814
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-object v5

    .line 806
    .end local v5           #k:Ljava/security/KeyStore;
    :cond_1
    :try_start_3
    const-string/jumbo v6, "JKS"

    invoke-static {v6, p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .restart local v5       #k:Ljava/security/KeyStore;
    goto :goto_0

    .line 810
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #k:Ljava/security/KeyStore;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 811
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 814
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v6

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #k:Ljava/security/KeyStore;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #k:Ljava/security/KeyStore;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_4

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 810
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private signCertificateChain()V
    .locals 7

    .prologue
    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v0, cc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 700
    .local v3, oc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 701
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 703
    add-int/lit8 v2, v2, -0x1

    .line 700
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    :cond_1
    const/4 v1, 0x1

    .line 708
    .local v1, found:Z
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 710
    .local v4, v:Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 711
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 713
    :try_start_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->provider:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 714
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 717
    :goto_3
    const/4 v1, 0x1

    .line 718
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 722
    :catch_0
    move-exception v5

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 716
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 726
    .end local v4           #v:Ljava/security/cert/X509Certificate;
    :cond_4
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCerts:Ljava/util/Collection;

    .line 727
    return-void
.end method

.method public static verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cert"
    .parameter
    .parameter "calendar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, crls:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    if-nez p2, :cond_0

    .line 828
    new-instance p2, Ljava/util/GregorianCalendar;

    .end local p2
    invoke-direct {p2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 829
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 830
    const-string/jumbo v3, "Has unsupported critical extension"

    .line 843
    :goto_0
    return-object v3

    .line 832
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    if-eqz p1, :cond_3

    .line 838
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRL;

    .line 839
    .local v0, crl:Ljava/security/cert/CRL;
    invoke-virtual {v0, p0}, Ljava/security/cert/CRL;->isRevoked(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 840
    const-string/jumbo v3, "Certificate revoked"

    goto :goto_0

    .line 834
    .end local v0           #crl:Ljava/security/cert/CRL;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 835
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 843
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Collection;Ljava/util/Calendar;)[Ljava/lang/Object;
    .locals 12
    .parameter "certs"
    .parameter "keystore"
    .parameter
    .parameter "calendar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;",
            "Ljava/util/Calendar;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 857
    .local p2, crls:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    if-nez p3, :cond_0

    .line 858
    new-instance p3, Ljava/util/GregorianCalendar;

    .end local p3
    invoke-direct {p3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 859
    .restart local p3
    :cond_0
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    array-length v9, p0

    if-ge v8, v9, :cond_7

    .line 860
    aget-object v2, p0, v8

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 861
    .local v2, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v2, p2, p3}, Lcom/itextpdf/text/pdf/PdfPKCS7;->verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, err:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 863
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    .line 902
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #err:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 865
    .restart local v2       #cert:Ljava/security/cert/X509Certificate;
    .restart local v6       #err:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_3

    .line 867
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 868
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 870
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 871
    .local v4, certStoreX509:Ljava/security/cert/X509Certificate;
    invoke-static {v4, p2, p3}, Lcom/itextpdf/text/pdf/PdfPKCS7;->verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    if-nez v9, :cond_2

    .line 874
    :try_start_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 875
    const/4 v9, 0x0

    goto :goto_1

    .line 877
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    goto :goto_2

    .line 885
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #certStoreX509:Ljava/security/cert/X509Certificate;
    .end local v5           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 888
    :cond_3
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    array-length v9, p0

    if-ge v7, v9, :cond_5

    .line 889
    if-ne v7, v8, :cond_4

    .line 888
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 891
    :cond_4
    aget-object v3, p0, v7

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 893
    .local v3, certNext:Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 899
    .end local v3           #certNext:Ljava/security/cert/X509Certificate;
    :cond_5
    array-length v9, p0

    if-ne v7, v9, :cond_6

    .line 900
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "Cannot be verified against the KeyStore or the certificate chain"

    aput-object v11, v9, v10

    goto :goto_1

    .line 859
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 902
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #err:Ljava/lang/String;
    .end local v7           #j:I
    :cond_7
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "Invalid state. Possible circular certificate chain"

    aput-object v11, v9, v10

    goto :goto_1

    .line 896
    .restart local v2       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #certNext:Ljava/security/cert/X509Certificate;
    .restart local v6       #err:Ljava/lang/String;
    .restart local v7       #j:I
    :catch_2
    move-exception v9

    goto :goto_4

    .line 881
    .end local v3           #certNext:Ljava/security/cert/X509Certificate;
    .end local v7           #j:I
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_3
    move-exception v9

    goto :goto_2
.end method

.method public static verifyOcspCertificates(Lorg/bouncycastle/ocsp/BasicOCSPResp;Ljava/security/KeyStore;Ljava/lang/String;)Z
    .locals 4
    .parameter "ocsp"
    .parameter "keystore"
    .parameter "provider"

    .prologue
    .line 914
    if-nez p2, :cond_0

    .line 915
    const-string/jumbo p2, "BC"

    .line 917
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 919
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 923
    .local v2, certStoreX509:Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 924
    const/4 v3, 0x1

    .line 932
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #certStoreX509:Ljava/security/cert/X509Certificate;
    :goto_1
    return v3

    .line 930
    :catch_0
    move-exception v3

    .line 932
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 926
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static verifyTimestampCertificates(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/security/KeyStore;Ljava/lang/String;)Z
    .locals 4
    .parameter "ts"
    .parameter "keystore"
    .parameter "provider"

    .prologue
    .line 944
    if-nez p2, :cond_0

    .line 945
    const-string/jumbo p2, "BC"

    .line 947
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 949
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 950
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 952
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 953
    .local v2, certStoreX509:Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 954
    const/4 v3, 0x1

    .line 962
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #certStoreX509:Ljava/security/cert/X509Certificate;
    :goto_1
    return v3

    .line 960
    :catch_0
    move-exception v3

    .line 962
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 956
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getAuthenticatedAttributeBytes([BLjava/util/Calendar;[B)[B
    .locals 3
    .parameter "secondDigest"
    .parameter "signingTime"
    .parameter "ocsp"

    .prologue
    .line 1355
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Calendar;[B)Lorg/bouncycastle/asn1/DERSet;

    move-result-object v1

    const-string/jumbo v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DERSet;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getCRLs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->crls:Ljava/util/Collection;

    return-object v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 766
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, dea:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 770
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEncodedPKCS1()[B
    .locals 5

    .prologue
    .line 1106
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalDigest:[B

    if-eqz v3, :cond_0

    .line 1107
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalDigest:[B

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    .line 1110
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1112
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1113
    .local v1, dout:Lorg/bouncycastle/asn1/ASN1OutputStream;
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1114
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 1116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 1109
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dout:Lorg/bouncycastle/asn1/ASN1OutputStream;
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1118
    :catch_0
    move-exception v2

    .line 1119
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getEncodedPKCS7()[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1151
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getEncodedPKCS7([BLjava/util/Calendar;Lcom/itextpdf/text/pdf/TSAClient;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([BLjava/util/Calendar;)[B
    .locals 1
    .parameter "secondDigest"
    .parameter "signingTime"

    .prologue
    const/4 v0, 0x0

    .line 1162
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getEncodedPKCS7([BLjava/util/Calendar;Lcom/itextpdf/text/pdf/TSAClient;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([BLjava/util/Calendar;Lcom/itextpdf/text/pdf/TSAClient;[B)[B
    .locals 25
    .parameter "secondDigest"
    .parameter "signingTime"
    .parameter "tsaClient"
    .parameter "ocsp"

    .prologue
    .line 1177
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalDigest:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalDigest:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalRSAdata:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    .line 1196
    :cond_0
    :goto_0
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1197
    .local v9, digestAlgorithms:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestalgos:Ljava/util/Set;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1198
    .local v12, element:Ljava/lang/String;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1199
    .local v4, algos:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    check-cast v12, Ljava/lang/String;

    .end local v12           #element:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1200
    sget-object v21, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1201
    new-instance v21, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1292
    .end local v4           #algos:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9           #digestAlgorithms:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v13           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 1293
    .local v11, e:Ljava/lang/Exception;
    new-instance v21, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v21

    .line 1182
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalRSAdata:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalRSAdata:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/security/Signature;->update([B)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/Signature;->sign()[B

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    goto/16 :goto_0

    .line 1188
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/security/Signature;->update([B)V

    .line 1192
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/Signature;->sign()[B

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    goto/16 :goto_0

    .line 1205
    .restart local v9       #digestAlgorithms:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1206
    .local v19, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v22, "1.2.840.113549.1.7.1"

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1208
    new-instance v21, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v22, 0x0

    new-instance v23, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v21 .. v23}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1209
    :cond_5
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    .line 1213
    .local v7, contentinfo:Lorg/bouncycastle/asn1/DERSequence;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v19           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1214
    .restart local v19       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->certs:Ljava/util/Collection;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/Certificate;

    .line 1215
    .local v12, element:Ljava/security/cert/Certificate;
    new-instance v15, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    check-cast v12, Ljava/security/cert/X509Certificate;

    .end local v12           #element:Ljava/security/cert/Certificate;
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1216
    .local v15, tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_2

    .line 1219
    .end local v15           #tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_6
    new-instance v8, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    .line 1223
    .local v8, dercertificates:Lorg/bouncycastle/asn1/DERSet;
    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1227
    .local v14, signerinfo:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signerversion:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1229
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v19           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1230
    .restart local v19       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getIssuer([B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1231
    new-instance v21, Lorg/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1232
    new-instance v21, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1235
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v19           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1236
    .restart local v19       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAlgorithm:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1237
    new-instance v21, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct/range {v21 .. v21}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1238
    new-instance v21, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1241
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 1242
    new-instance v21, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Calendar;[B)Lorg/bouncycastle/asn1/DERSet;

    move-result-object v24

    invoke-direct/range {v21 .. v24}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1245
    :cond_7
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v19           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1246
    .restart local v19       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1247
    new-instance v21, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct/range {v21 .. v21}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1248
    new-instance v21, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1251
    new-instance v21, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1256
    if-eqz p3, :cond_8

    .line 1257
    const-string/jumbo v21, "SHA-1"

    invoke-static/range {v21 .. v21}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v16

    .line 1258
    .local v16, tsImprint:[B
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/text/pdf/TSAClient;->getTimeStampToken(Lcom/itextpdf/text/pdf/PdfPKCS7;[B)[B

    move-result-object v17

    .line 1259
    .local v17, tsToken:[B
    if-eqz v17, :cond_8

    .line 1260
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPKCS7;->buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v18

    .line 1261
    .local v18, unauthAttributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    if-eqz v18, :cond_8

    .line 1262
    new-instance v21, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v22, 0x0

    const/16 v23, 0x1

    new-instance v24, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v21 .. v24}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1268
    .end local v16           #tsImprint:[B
    .end local v17           #tsToken:[B
    .end local v18           #unauthAttributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1269
    .local v6, body:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfPKCS7;->version:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1270
    new-instance v21, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1271
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1272
    new-instance v21, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1275
    new-instance v21, Lorg/bouncycastle/asn1/DERSet;

    new-instance v22, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1280
    new-instance v20, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1281
    .local v20, whole:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v22, "1.2.840.113549.1.7.2"

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1282
    new-instance v21, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v22, 0x0

    new-instance v23, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v21 .. v23}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual/range {v20 .. v21}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1284
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1286
    .local v5, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v10, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v10, v5}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1287
    .local v10, dout:Lorg/bouncycastle/asn1/ASN1OutputStream;
    new-instance v21, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1288
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 1290
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    return-object v21
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOcsp()Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->basicResp:Lorg/bouncycastle/ocsp/BasicOCSPResp;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSignCertificateChain()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCerts:Ljava/util/Collection;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getSigningInfoVersion()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signerversion:I

    return v0
.end method

.method public getTimeStampDate()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 288
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v2, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 290
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 291
    .local v0, cal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v1

    .line 292
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->version:I

    return v0
.end method

.method public isRevocationValid()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1006
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->basicResp:Lorg/bouncycastle/ocsp/BasicOCSPResp;

    if-nez v7, :cond_0

    move v7, v8

    .line 1021
    :goto_0
    return v7

    .line 1008
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    move v7, v8

    .line 1009
    goto :goto_0

    .line 1011
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getSignCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    move-object v0, v7

    check-cast v0, [Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 1012
    .local v2, cs:[Ljava/security/cert/X509Certificate;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->basicResp:Lorg/bouncycastle/ocsp/BasicOCSPResp;

    invoke-virtual {v7}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/ocsp/SingleResp;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v5, v7, v9

    .line 1013
    .local v5, sr:Lorg/bouncycastle/ocsp/SingleResp;
    invoke-virtual {v5}, Lorg/bouncycastle/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/ocsp/CertificateID;

    move-result-object v1

    .line 1014
    .local v1, cid:Lorg/bouncycastle/ocsp/CertificateID;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1015
    .local v4, sigcer:Ljava/security/cert/X509Certificate;
    const/4 v7, 0x1

    aget-object v3, v2, v7

    .line 1016
    .local v3, isscer:Ljava/security/cert/X509Certificate;
    new-instance v6, Lorg/bouncycastle/ocsp/CertificateID;

    const-string/jumbo v7, "1.3.14.3.2.26"

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v3, v9}, Lorg/bouncycastle/ocsp/CertificateID;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V

    .line 1017
    .local v6, tis:Lorg/bouncycastle/ocsp/CertificateID;
    invoke-virtual {v6, v1}, Lorg/bouncycastle/ocsp/CertificateID;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 1019
    .end local v1           #cid:Lorg/bouncycastle/ocsp/CertificateID;
    .end local v2           #cs:[Ljava/security/cert/X509Certificate;
    .end local v3           #isscer:Ljava/security/cert/X509Certificate;
    .end local v4           #sigcer:Ljava/security/cert/X509Certificate;
    .end local v5           #sr:Lorg/bouncycastle/ocsp/SingleResp;
    .end local v6           #tis:Lorg/bouncycastle/ocsp/CertificateID;
    :catch_0
    move-exception v7

    move v7, v8

    .line 1021
    goto :goto_0
.end method

.method public setExternalDigest([B[BLjava/lang/String;)V
    .locals 3
    .parameter "digest"
    .parameter "RSAdata"
    .parameter "digestEncryptionAlgorithm"

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalDigest:[B

    .line 1133
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->externalRSAdata:[B

    .line 1134
    if-eqz p3, :cond_0

    .line 1135
    const-string/jumbo v0, "RSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    const-string/jumbo v0, "1.2.840.113549.1.1.1"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    const-string/jumbo v0, "DSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    const-string/jumbo v0, "1.2.840.10040.4.1"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestEncryptionAlgorithm:Ljava/lang/String;

    goto :goto_0

    .line 1142
    :cond_2
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v2, "unknown.key.algorithm.1"

    invoke-static {v2, p3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->location:Ljava/lang/String;

    .line 1447
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->reason:Ljava/lang/String;

    .line 1431
    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 0
    .parameter "signDate"

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signDate:Ljava/util/Calendar;

    .line 1463
    return-void
.end method

.method public setSignName(Ljava/lang/String;)V
    .locals 0
    .parameter "signName"

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->signName:Ljava/lang/String;

    .line 1479
    return-void
.end method

.method public update([BII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAttr:[B

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 633
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    goto :goto_0
.end method

.method public verify()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 641
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->verified:Z

    if-eqz v1, :cond_0

    .line 642
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->verifyResult:Z

    .line 657
    :goto_0
    return v1

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sigAttr:[B

    if-eqz v1, :cond_3

    .line 644
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sigAttr:[B

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 645
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 647
    .local v0, msd:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 649
    .end local v0           #msd:[B
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digestAttr:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->verifyResult:Z

    .line 656
    :goto_2
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->verified:Z

    .line 657
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->verifyResult:Z

    goto :goto_0

    .line 649
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 652
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->RSAdata:[B

    if-eqz v1, :cond_4

    .line 653
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 654
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->verifyResult:Z

    goto :goto_2
.end method

.method public verifyTimestampImprint()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v4, :cond_0

    .line 668
    const/4 v3, 0x0

    .line 673
    :goto_0
    return v3

    .line 669
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toTSTInfo()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v1

    .line 670
    .local v1, imprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;
    const-string/jumbo v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7;->digest:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 671
    .local v2, md:[B
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v0

    .line 672
    .local v0, imphashed:[B
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 673
    .local v3, res:Z
    goto :goto_0
.end method
