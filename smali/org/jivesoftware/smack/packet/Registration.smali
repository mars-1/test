.class public Lorg/jivesoftware/smack/packet/Registration;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Registration.java"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private instructions:Ljava/lang/String;

.field private registered:Z

.field private remove:Z

.field private requiredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->requiredFields:Ljava/util/List;

    .line 56
    iput-boolean v1, p0, Lorg/jivesoftware/smack/packet/Registration;->registered:Z

    .line 57
    iput-boolean v1, p0, Lorg/jivesoftware/smack/packet/Registration;->remove:Z

    .line 51
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v3, "<query xmlns=\"jabber:iq:register\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/jivesoftware/smack/packet/Registration;->remove:Z

    if-nez v3, :cond_0

    .line 137
    const-string/jumbo v3, "<instructions>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</instructions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v3, p0, Lorg/jivesoftware/smack/packet/Registration;->remove:Z

    if-nez v3, :cond_3

    .line 140
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 151
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Registration;->getExtensionsXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v3, "</query>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 140
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, value:Ljava/lang/String;
    const-string/jumbo v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v4, "</"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_3
    iget-boolean v3, p0, Lorg/jivesoftware/smack/packet/Registration;->remove:Z

    if-eqz v3, :cond_1

    .line 148
    const-string/jumbo v3, "</remove>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFieldNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->requiredFields:Ljava/util/List;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/Registration;->registered:Z

    return v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    .line 95
    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0
    .parameter "instructions"

    .prologue
    .line 76
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    const-string/jumbo v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0
    .parameter "registered"

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/Registration;->registered:Z

    .line 107
    return-void
.end method

.method public setRemove(Z)V
    .locals 0
    .parameter "remove"

    .prologue
    .line 130
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/Registration;->remove:Z

    .line 131
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    const-string/jumbo v1, "username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method
