.class public Lcom/itextpdf/text/xml/xmp/XmpMMSchema;
.super Lcom/itextpdf/text/xml/xmp/XmpSchema;
.source "XmpMMSchema.java"


# static fields
.field public static final DEFAULT_XPATH_ID:Ljava/lang/String; = "xmpMM"

.field public static final DEFAULT_XPATH_URI:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/mm/"

.field public static final DERIVEDFROM:Ljava/lang/String; = "xmpMM:DerivedFrom"

.field public static final DOCUMENTID:Ljava/lang/String; = "xmpMM:DocumentID"

.field public static final HISTORY:Ljava/lang/String; = "xmpMM:History"

.field public static final MANAGEDFROM:Ljava/lang/String; = "xmpMM:ManagedFrom"

.field public static final MANAGER:Ljava/lang/String; = "xmpMM:Manager"

.field public static final MANAGERVARIANT:Ljava/lang/String; = "xmpMM:ManagerVariant"

.field public static final MANAGETO:Ljava/lang/String; = "xmpMM:ManageTo"

.field public static final MANAGEUI:Ljava/lang/String; = "xmpMM:ManageUI"

.field public static final RENDITIONCLASS:Ljava/lang/String; = "xmpMM:RenditionClass"

.field public static final RENDITIONPARAMS:Ljava/lang/String; = "xmpMM:RenditionParams"

.field public static final VERSIONID:Ljava/lang/String; = "xmpMM:VersionID"

.field public static final VERSIONS:Ljava/lang/String; = "xmpMM:Versions"

.field private static final serialVersionUID:J = 0x138c0803f8c3e6aeL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\""

    invoke-direct {p0, v0}, Lcom/itextpdf/text/xml/xmp/XmpSchema;-><init>(Ljava/lang/String;)V

    .line 85
    return-void
.end method
