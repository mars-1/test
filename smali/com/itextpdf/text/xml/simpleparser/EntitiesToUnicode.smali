.class public Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;
.super Ljava/lang/Object;
.source "EntitiesToUnicode.java"


# static fields
.field public static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    .line 59
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "nbsp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "iexcl"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cent"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "pound"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "curren"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "yen"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "brvbar"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sect"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "uml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "copy"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ordf"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaa

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "laquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xab

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "not"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xac

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "shy"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xad

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "reg"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xae

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "macr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "deg"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "plusmn"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sup2"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sup3"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "acute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "micro"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "para"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "middot"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cedil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sup1"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ordm"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xba

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "raquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "frac14"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "frac12"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "frac34"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbe

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "iquest"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Agrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Aacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Acirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Atilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Auml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Aring"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "AElig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ccedil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Egrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Eacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ecirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xca

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Euml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Igrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Iacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Icirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xce

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Iuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ETH"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ntilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ograve"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Oacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ocirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Otilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ouml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "times"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Oslash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ugrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Uacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xda

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Ucirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Uuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Yacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "THORN"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xde

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "szlig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "agrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "aacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "acirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "atilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "auml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "aring"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "aelig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ccedil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "egrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "eacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ecirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xea

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "euml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xeb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "igrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xec

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "iacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xed

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "icirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xee

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "iuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xef

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "eth"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ntilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ograve"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "oacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ocirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "otilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ouml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "divide"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "oslash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ugrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "uacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ucirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "uuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "yacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "thorn"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfe

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "yuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xff

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "fnof"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x192

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Alpha"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x391

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Beta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x392

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Gamma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x393

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Delta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x394

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Epsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x395

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Zeta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x396

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Eta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x397

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Theta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x398

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Iota"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x399

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Kappa"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Lambda"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Mu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Nu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Xi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Omicron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Pi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Rho"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Sigma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Tau"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Upsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Phi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Chi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Psi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Omega"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "alpha"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "beta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "gamma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "delta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "epsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "zeta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "eta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "theta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "iota"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "kappa"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3ba

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lambda"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "mu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "nu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "xi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3be

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "omicron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "pi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rho"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sigmaf"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sigma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "tau"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "upsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "phi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "chi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "psi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "omega"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "thetasym"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3d1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "upsih"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3d2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "piv"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3d6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "bull"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2022

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "hellip"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2026

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "prime"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2032

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Prime"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2033

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "oline"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x203e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "frasl"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2044

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "weierp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2118

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "image"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2111

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "real"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x211c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "trade"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2122

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "alefsym"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2135

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "larr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2190

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "uarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2191

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2192

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "darr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2193

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "harr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2194

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "crarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21b5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "uArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "dArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "hArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "forall"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2200

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "part"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2202

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "exist"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2203

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2205

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "nabla"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2207

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "isin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2208

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "notin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2209

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ni"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x220b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "prod"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x220f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sum"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2211

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "minus"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2212

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lowast"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2217

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "radic"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x221a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "prop"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x221d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "infin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x221e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2220

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "and"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2227

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "or"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2228

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cap"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2229

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cup"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x222a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x222b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "there4"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2234

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sim"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x223c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cong"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2245

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "asymp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2248

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ne"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2260

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "equiv"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2261

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "le"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2264

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ge"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2265

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sub"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2282

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sup"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2283

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "nsub"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2284

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sube"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2286

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "supe"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2287

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "oplus"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2295

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "otimes"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2297

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "perp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x22a5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sdot"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x22c5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lceil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2308

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rceil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2309

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lfloor"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x230a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rfloor"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x230b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2329

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x232a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "loz"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x25ca

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "spades"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2660

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "clubs"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2663

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "hearts"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2665

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "diams"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2666

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "quot"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "amp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "apos"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lt"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "gt"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "OElig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x152

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "oelig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x153

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Scaron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x160

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "scaron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x161

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Yuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x178

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "circ"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2c6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "tilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2dc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ensp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2002

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "emsp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2003

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "thinsp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2009

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "zwnj"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "zwj"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lrm"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rlm"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ndash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2013

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "mdash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2014

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lsquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2018

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rsquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2019

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sbquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ldquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rdquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "bdquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "dagger"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2020

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Dagger"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2021

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "permil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2030

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lsaquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2039

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rsaquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x203a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "euro"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x20ac

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeEntity(Ljava/lang/String;)C
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 364
    const-string/jumbo v3, "#x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-char v2, v2

    .line 384
    :cond_0
    :goto_0
    return v2

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 372
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    int-to-char v2, v2

    goto :goto_0

    .line 376
    :catch_1
    move-exception v1

    .line 377
    .restart local v1       #nfe:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 380
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v3, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->map:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 381
    .local v0, c:Ljava/lang/Character;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    goto :goto_0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "s"

    .prologue
    const/16 v8, 0x26

    const/4 v7, -0x1

    .line 392
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 393
    .local v2, pos_amp:I
    if-ne v2, v7, :cond_0

    .line 424
    .end local p0
    :goto_0
    return-object p0

    .line 397
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, buf:Ljava/lang/StringBuffer;
    :goto_1
    const/16 v5, 0x3b

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 401
    .local v3, pos_sc:I
    if-ne v3, v7, :cond_1

    .line 402
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 405
    :cond_1
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 406
    .local v1, pos_a:I
    :goto_2
    if-eq v1, v7, :cond_2

    if-ge v1, v3, :cond_2

    .line 407
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    move v2, v1

    .line 409
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 411
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->decodeEntity(Ljava/lang/String;)C

    move-result v4

    .line 412
    .local v4, replace:C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_3

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 415
    :cond_3
    if-nez v4, :cond_4

    .line 416
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    :goto_3
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 422
    if-ne v2, v7, :cond_5

    .line 423
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 419
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 427
    :cond_5
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
