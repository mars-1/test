.class public Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;
.super Ljava/lang/Object;
.source "IanaEncodings.java"


# static fields
.field private static final map:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    .line 79
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "BIG5"

    const-string/jumbo v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSBIG5"

    const-string/jumbo v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP037"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM037"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM037"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-US"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-CA"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-NL"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-WT"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM277"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP277"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM277"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-DK"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-NO"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM278"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP278"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM278"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-FI"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-SE"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM280"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP280"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM280"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-IT"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM284"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP284"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM284"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-ES"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-GB"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM285"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP285"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM285"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-FR"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM297"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP297"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM297"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-AR1"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM420"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP420"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM420"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-HE"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM424"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP424"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM424"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-CH"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM500"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP500"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM500"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-CH"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-BE"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM868"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP868"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM868"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP-AR"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM869"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP869"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM869"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP-GR"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM870"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP870"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM870"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-ROECE"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-YU"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM871"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP871"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM871"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-IS"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM918"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP918"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSIBM918"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EBCDIC-CP-AR2"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EUC-JP"

    const-string/jumbo v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSEUCPkdFmtJapanese"

    const-string/jumbo v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "EUC-KR"

    const-string/jumbo v2, "KSC5601"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "GB2312"

    const-string/jumbo v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSGB2312"

    const-string/jumbo v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-2022-JP"

    const-string/jumbo v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISO2022JP"

    const-string/jumbo v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-2022-KR"

    const-string/jumbo v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISO2022KR"

    const-string/jumbo v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-2022-CN"

    const-string/jumbo v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "X0201"

    const-string/jumbo v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISO13JISC6220JP"

    const-string/jumbo v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "X0208"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-87"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "X0208dbiJIS_X0208-1983"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISO87JISX0208"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "X0212"

    const-string/jumbo v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-159"

    const-string/jumbo v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISO159JISX02121990"

    const-string/jumbo v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "SHIFT_JIS"

    const-string/jumbo v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSSHIFT_JIS"

    const-string/jumbo v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "MS_Kanji"

    const-string/jumbo v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1250"

    const-string/jumbo v2, "Cp1250"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1251"

    const-string/jumbo v2, "Cp1251"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1252"

    const-string/jumbo v2, "Cp1252"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1253"

    const-string/jumbo v2, "Cp1253"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1254"

    const-string/jumbo v2, "Cp1254"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1255"

    const-string/jumbo v2, "Cp1255"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1256"

    const-string/jumbo v2, "Cp1256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1257"

    const-string/jumbo v2, "Cp1257"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "WINDOWS-1258"

    const-string/jumbo v2, "Cp1258"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "TIS-620"

    const-string/jumbo v2, "TIS620"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-100"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "LATIN1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATIN1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "L1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM819"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP819"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-101"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "LATIN2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATIN2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "L2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-109"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "LATIN3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATIN3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "L3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-110"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "LATIN4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATIN4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "L4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-5"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-144"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-5"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CYRILLIC"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATINCYRILLIC"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-6"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-127"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-6"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ECMA-114"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ASMO-708"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ARABIC"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATINARABIC"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-7"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-126"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-7"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ELOT_928"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ECMA-118"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "GREEK"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATINGREEK"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "GREEK8"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-8"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-8-I"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-138"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-8"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "HEBREW"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATINHEBREW"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-8859-9"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-148"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_8859-9"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "LATIN5"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSISOLATIN5"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "L5"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "KOI8-R"

    const-string/jumbo v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSKOI8-R"

    const-string/jumbo v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "US-ASCII"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO-IR-6"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ANSI_X3.4-1986"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO_646.IRV:1991"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ASCII"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CSASCII"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "ISO646-US"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "US"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "IBM367"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "CP367"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "UTF-8"

    const-string/jumbo v2, "UTF8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "UTF-16"

    const-string/jumbo v2, "Unicode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "UTF-16BE"

    const-string/jumbo v2, "UnicodeBig"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    const-string/jumbo v1, "UTF-16LE"

    const-string/jumbo v2, "UnicodeLittle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "iana"

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, IANA:Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, jdec:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 280
    move-object v1, p0

    .line 281
    :cond_0
    return-object v1
.end method
