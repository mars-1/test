.class public Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;
.super Ljava/lang/Object;
.source "EntitiesToSymbol.java"


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
    .locals 9

    .prologue
    const/16 v8, 0x40

    const/16 v7, 0x2d

    const/16 v6, 0x2a

    const/16 v5, 0x24

    const/16 v4, 0x22

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "169"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "172"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "174"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "177"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "215"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "247"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8230"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8242"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8243"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8260"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8364"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8465"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8472"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8476"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8482"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8501"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8592"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xac

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8593"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xad

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8594"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xae

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8595"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8596"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xab

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8629"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8656"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8657"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8658"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xde

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8659"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8660"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8704"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8706"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8707"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8709"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8711"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8712"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xce

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8713"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8717"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8719"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8721"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8722"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8727"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8729"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8730"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8733"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8734"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8736"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8743"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8744"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xda

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8745"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8746"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8747"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8756"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x5c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8764"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x7e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8773"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v8}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8776"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8800"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8801"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xba

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8804"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8805"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8834"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8835"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8836"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8838"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8839"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xca

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8853"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8855"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8869"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x5e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8901"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8992"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "8993"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "9001"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "9002"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "913"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "914"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "915"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x47

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "916"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x44

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "917"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x45

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "918"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x5a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "919"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x48

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "920"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x51

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "921"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x49

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "922"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "923"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "924"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "925"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "926"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x58

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "927"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "928"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "929"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x52

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "931"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x53

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "932"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x54

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "933"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x55

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "934"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "935"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "936"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x59

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "937"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x57

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "945"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x61

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "946"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x62

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "947"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x67

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "948"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "949"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x65

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "950"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x7a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "951"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x68

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "952"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x71

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "953"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x69

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "954"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "955"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "956"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "957"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "958"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x78

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "959"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "960"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x70

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "961"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x72

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "962"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x56

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "963"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x73

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "964"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x74

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "965"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x75

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "966"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x66

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "967"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x63

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "9674"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "968"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x79

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "969"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x77

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "977"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "978"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "981"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "982"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x76

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "9824"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaa

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "9827"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "9829"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "9830"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Alpha"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Beta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Chi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Delta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x44

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Epsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x45

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Eta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x48

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Gamma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x47

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Iota"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x49

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Kappa"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Lambda"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Mu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Nu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Omega"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x57

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Omicron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Phi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Pi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Prime"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Psi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x59

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Rho"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x52

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Sigma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x53

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Tau"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x54

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Theta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x51

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Upsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x55

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Xi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x58

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "Zeta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x5a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "alefsym"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "alpha"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x61

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "and"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "asymp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "beta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x62

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cap"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "chi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x63

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "clubs"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cong"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v8}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "copy"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "crarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "cup"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "dArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "darr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "delta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "diams"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "divide"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "epsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x65

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "equiv"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xba

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "eta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x68

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "euro"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "exist"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "forall"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "frasl"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "gamma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x67

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ge"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "hArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "harr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xab

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "hearts"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "hellip"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "horizontal arrow extender"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbe

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "image"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "infin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "iota"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x69

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "isin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xce

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "kappa"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lambda"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large brace extender"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xef

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large integral extender"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left brace (bottom)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xee

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left brace (middle)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xed

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left brace (top)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xec

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left bracket (bottom)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xeb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left bracket (extender)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xea

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left bracket (top)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left parenthesis (bottom)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left parenthesis (extender)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large left parenthesis (top)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right brace (bottom)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfe

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right brace (middle)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right brace (top)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right bracket (bottom)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right bracket (extender)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right bracket (top)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right parenthesis (bottom)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right parenthesis (extender)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "large right parenthesis (top)"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "larr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xac

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "le"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "lowast"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "loz"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "minus"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "mu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "nabla"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ne"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "not"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "notin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "nsub"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "nu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "omega"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x77

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "omicron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x6f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "oplus"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "or"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xda

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "otimes"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "part"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "perp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x5e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "phi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x66

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "pi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x70

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "piv"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x76

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "plusmn"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "prime"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "prod"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "prop"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "psi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x79

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xde

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "radic"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "radical extender"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x60

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xae

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "real"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "reg"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "rho"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x72

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sdot"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sigma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x73

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sigmaf"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x56

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sim"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x7e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "spades"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaa

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sub"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sube"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sum"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "sup"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "supe"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xca

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "tau"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x74

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "there4"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x5c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "theta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x71

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "thetasym"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "times"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "trade"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "uArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "uarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xad

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "upsih"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "upsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x75

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "vertical arrow extender"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "weierp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "xi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x78

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "zeta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x7a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Chunk;
    .locals 7
    .parameter "e"
    .parameter "font"

    .prologue
    .line 349
    invoke-static {p0}, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->getCorrespondingSymbol(Ljava/lang/String;)C

    move-result v1

    .line 350
    .local v1, s:C
    if-nez v1, :cond_0

    .line 352
    :try_start_0
    new-instance v3, Lcom/itextpdf/text/Chunk;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-object v3

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, exception:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/Chunk;

    invoke-direct {v3, p0, p1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    goto :goto_0

    .line 358
    .end local v0           #exception:Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lcom/itextpdf/text/Font;

    sget-object v3, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 359
    .local v2, symbol:Lcom/itextpdf/text/Font;
    new-instance v3, Lcom/itextpdf/text/Chunk;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    goto :goto_0
.end method

.method public static getCorrespondingSymbol(Ljava/lang/String;)C
    .locals 2
    .parameter "name"

    .prologue
    .line 369
    sget-object v1, Lcom/itextpdf/text/xml/simpleparser/EntitiesToSymbol;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 370
    .local v0, symbol:Ljava/lang/Character;
    if-nez v0, :cond_0

    .line 371
    const/4 v1, 0x0

    .line 373
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0
.end method
