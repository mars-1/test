.class public Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;
.super Ljava/lang/Object;
.source "SimpleDirectoryPersistentCache.java"

# interfaces
.implements Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private stringEncoder:Lorg/jivesoftware/smackx/entitycaps/StringEncoder;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "cacheDir"

    .prologue
    .line 57
    new-instance v0, Lorg/jivesoftware/smackx/entitycaps/Base64Encoder;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/entitycaps/Base64Encoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;-><init>(Ljava/io/File;Lorg/jivesoftware/smackx/entitycaps/StringEncoder;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/jivesoftware/smackx/entitycaps/StringEncoder;)V
    .locals 3
    .parameter "cacheDir"
    .parameter "stringEncoder"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cache directory \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    const-string/jumbo v2, "\" does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cache directory \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "\" is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    .line 69
    iput-object p2, p0, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->stringEncoder:Lorg/jivesoftware/smackx/entitycaps/StringEncoder;

    .line 70
    return-void
.end method

.method private static restoreInfoFromFile(Ljava/io/File;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 131
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v0, dis:Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 134
    .local v3, fileContent:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 136
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 138
    if-nez v3, :cond_0

    move-object v4, v9

    .line 178
    :goto_0
    return-object v4

    .line 135
    :catchall_0
    move-exception v9

    .line 136
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 137
    throw v9

    .line 141
    :cond_0
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 144
    .local v7, reader:Ljava/io/Reader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 145
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v11, 0x1

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 146
    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v10

    const-string/jumbo v11, "query"

    const-string/jumbo v12, "http://jabber.org/protocol/disco#info"

    invoke-virtual {v10, v11, v12}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/provider/IQProvider;

    .line 157
    .local v6, provider:Lorg/jivesoftware/smack/provider/IQProvider;
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 172
    :try_start_4
    invoke-interface {v6, v5}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .local v4, iqPacket:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    goto :goto_0

    .line 147
    .end local v4           #iqPacket:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #provider:Lorg/jivesoftware/smack/provider/IQProvider;
    :catch_0
    move-exception v8

    .line 148
    .local v8, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v4, v9

    .line 149
    goto :goto_0

    .line 158
    .end local v8           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #provider:Lorg/jivesoftware/smack/provider/IQProvider;
    :catch_1
    move-exception v2

    .line 159
    .local v2, e1:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v4, v9

    .line 160
    goto :goto_0

    .line 166
    .end local v2           #e1:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 167
    .restart local v2       #e1:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v4, v9

    .line 168
    goto :goto_0

    .line 173
    .end local v2           #e1:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v9

    .line 175
    goto :goto_0
.end method

.method private static writeInfoToFile(Ljava/io/File;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 2
    .parameter "file"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 116
    .local v0, dos:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 120
    return-void

    .line 117
    :catchall_0
    move-exception v1

    .line 118
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 119
    throw v1
.end method


# virtual methods
.method public addDiscoverInfoByNodePersistent(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 4
    .parameter "node"
    .parameter "info"

    .prologue
    .line 74
    iget-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->stringEncoder:Lorg/jivesoftware/smackx/entitycaps/StringEncoder;

    invoke-interface {v3, p1}, Lorg/jivesoftware/smackx/entitycaps/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v2, nodeFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-static {v2, p2}, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->writeInfoToFile(Ljava/io/File;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public emptyCache()V
    .locals 4

    .prologue
    .line 99
    iget-object v2, p0, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 100
    .local v1, files:[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 103
    return-void

    .line 100
    :cond_0
    aget-object v0, v1, v2

    .line 101
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public replay()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v4, p0, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 88
    .local v1, files:[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 96
    return-void

    .line 88
    :cond_0
    aget-object v0, v1, v4

    .line 89
    .local v0, f:Ljava/io/File;
    iget-object v6, p0, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->stringEncoder:Lorg/jivesoftware/smackx/entitycaps/StringEncoder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/jivesoftware/smackx/entitycaps/StringEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, node:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/entitycaps/SimpleDirectoryPersistentCache;->restoreInfoFromFile(Ljava/io/File;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v2

    .line 91
    .local v2, info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    if-nez v2, :cond_1

    .line 88
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {v3, v2}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    goto :goto_1
.end method
