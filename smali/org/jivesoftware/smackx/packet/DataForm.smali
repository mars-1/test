.class public Lorg/jivesoftware/smackx/packet/DataForm;
.super Ljava/lang/Object;
.source "DataForm.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/DataForm$Item;,
        Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/DataForm$Item;",
            ">;"
        }
    .end annotation
.end field

.field private reportedData:Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->type:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public addField(Lorg/jivesoftware/smackx/FormField;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 169
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v1

    .line 172
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addInstruction(Ljava/lang/String;)V
    .locals 2
    .parameter "instruction"

    .prologue
    .line 182
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v1

    .line 185
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addItem(Lorg/jivesoftware/smackx/packet/DataForm$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 193
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v1

    .line 196
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "x"

    return-object v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/FormField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    monitor-enter v1

    .line 121
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInstructions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    monitor-enter v1

    .line 90
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItems()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/DataForm$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    monitor-enter v1

    .line 110
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, "jabber:x:data"

    return-object v0
.end method

.method public getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->reportedData:Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setInstructions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, instructions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    .line 152
    return-void
.end method

.method public setReportedData(Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;)V
    .locals 0
    .parameter "reportedData"

    .prologue
    .line 160
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->reportedData:Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    .line 161
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 140
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->title:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 9

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v6, "<"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " xmlns=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" type=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 203
    const-string/jumbo v6, "<title>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</title>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getInstructions()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 209
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 210
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getItems()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DataForm$Item;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 218
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 222
    const-string/jumbo v6, "</"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 206
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DataForm$Item;>;"
    :cond_2
    const-string/jumbo v6, "<instructions>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</instructions>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    .restart local v3       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DataForm$Item;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/packet/DataForm$Item;

    .line 215
    .local v5, item:Lorg/jivesoftware/smackx/packet/DataForm$Item;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/DataForm$Item;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    .end local v5           #item:Lorg/jivesoftware/smackx/packet/DataForm$Item;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/FormField;

    .line 220
    .local v1, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
