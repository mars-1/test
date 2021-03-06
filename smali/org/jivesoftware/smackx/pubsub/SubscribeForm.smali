.class public Lorg/jivesoftware/smackx/pubsub/SubscribeForm;
.super Lorg/jivesoftware/smackx/Form;
.source "SubscribeForm.java"


# static fields
.field private static final format:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/Form;)V
    .locals 1
    .parameter "subscribeOptionsForm"

    .prologue
    .line 49
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .parameter "configDataForm"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/FormType;)V
    .locals 1
    .parameter "formType"

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/FormType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V
    .locals 3
    .parameter "nodeField"
    .parameter "type"

    .prologue
    .line 233
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, fieldName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v2

    if-nez v2, :cond_0

    .line 237
    new-instance v0, Lorg/jivesoftware/smackx/FormField;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 241
    .end local v0           #field:Lorg/jivesoftware/smackx/FormField;
    :cond_0
    return-void
.end method

.method private getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;
    .locals 2
    .parameter "field"

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 221
    .local v0, formField:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getFieldValues(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/util/Iterator;
    .locals 2
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 228
    .local v0, formField:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "fieldValue"

    .prologue
    .line 214
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDigestFrequency()I
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 4

    .prologue
    .line 127
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, dateTime:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/text/ParseException;
    new-instance v2, Ljava/util/UnknownFormatConversionException;

    invoke-direct {v2, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, exc:Ljava/util/UnknownFormatConversionException;
    invoke-virtual {v2, v1}, Ljava/util/UnknownFormatConversionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 136
    throw v2
.end method

.method public getShowValues()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/PresenceState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/pubsub/PresenceState;>;"
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValues(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3

    .line 187
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, state:Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/pubsub/PresenceState;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PresenceState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isDeliverOn()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDigestOn()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncludeBody()Z
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeliverOn(Z)V
    .locals 2
    .parameter "deliverNotifications"

    .prologue
    .line 74
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string/jumbo v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public setDigestFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 116
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string/jumbo v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public setDigestOn(Z)V
    .locals 2
    .parameter "digestOn"

    .prologue
    .line 95
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string/jumbo v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public setExpiry(Ljava/util/Date;)V
    .locals 2
    .parameter "expire"

    .prologue
    .line 147
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string/jumbo v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setIncludeBody(Z)V
    .locals 2
    .parameter "include"

    .prologue
    .line 170
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string/jumbo v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public setShowValues(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/PresenceState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, stateValues:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smackx/pubsub/PresenceState;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string/jumbo v3, "list-multi"

    invoke-direct {p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 209
    return-void

    .line 203
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    .line 205
    .local v0, state:Lorg/jivesoftware/smackx/pubsub/PresenceState;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/PresenceState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
