.class public Lcom/itextpdf/text/Meta;
.super Ljava/lang/Object;
.source "Meta.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# instance fields
.field private content:Ljava/lang/StringBuffer;

.field private type:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "content"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/itextpdf/text/Meta;->type:I

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/itextpdf/text/Meta;->getType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Meta;->type:I

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    .line 93
    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 202
    const-string/jumbo v0, "subject"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x2

    .line 220
    :goto_0
    return v0

    .line 205
    :cond_0
    const-string/jumbo v0, "keywords"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x3

    goto :goto_0

    .line 208
    :cond_1
    const-string/jumbo v0, "author"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const/4 v0, 0x4

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v0, "title"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :cond_3
    const-string/jumbo v0, "producer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    const/4 v0, 0x5

    goto :goto_0

    .line 217
    :cond_4
    const-string/jumbo v0, "creationdate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    const/4 v0, 0x6

    goto :goto_0

    .line 220
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "string"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getChunks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/itextpdf/text/Meta;->type:I

    packed-switch v0, :pswitch_data_0

    .line 191
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    const-string/jumbo v0, "subject"

    goto :goto_0

    .line 181
    :pswitch_1
    const-string/jumbo v0, "keywords"

    goto :goto_0

    .line 183
    :pswitch_2
    const-string/jumbo v0, "author"

    goto :goto_0

    .line 185
    :pswitch_3
    const-string/jumbo v0, "title"

    goto :goto_0

    .line 187
    :pswitch_4
    const-string/jumbo v0, "producer"

    goto :goto_0

    .line 189
    :pswitch_5
    const-string/jumbo v0, "creationdate"

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 106
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/itextpdf/text/Meta;->type:I

    return v0
.end method
