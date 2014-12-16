.class public Lcom/itextpdf/text/xml/xmp/XmpArray;
.super Ljava/util/ArrayList;
.source "XmpArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Ljava/lang/String; = "rdf:Alt"

.field public static final ORDERED:Ljava/lang/String; = "rdf:Seq"

.field public static final UNORDERED:Ljava/lang/String; = "rdf:Bag"

.field private static final serialVersionUID:J = 0x4f6ba97f7127f846L


# instance fields
.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/itextpdf/text/xml/xmp/XmpArray;->type:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x3e

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "<"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/itextpdf/text/xml/xmp/XmpArray;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/text/xml/xmp/XmpArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, string:Ljava/lang/String;
    move-object v2, v3

    .line 84
    .local v2, s:Ljava/lang/String;
    const-string/jumbo v4, "<rdf:li>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-static {v2}, Lcom/itextpdf/text/xml/xmp/XmpSchema;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string/jumbo v4, "</rdf:li>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "</"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v4, p0, Lcom/itextpdf/text/xml/xmp/XmpArray;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
