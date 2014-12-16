.class public Lcom/cnlaunch/framework/common/parse/JsonMananger;
.super Ljava/lang/Object;
.source "JsonMananger.java"


# static fields
.field private static instance:Lcom/cnlaunch/framework/common/parse/JsonMananger;

.field private static jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->tag:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 45
    sget-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    .line 46
    sget-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->instance:Lcom/cnlaunch/framework/common/parse/JsonMananger;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/cnlaunch/framework/common/parse/JsonMananger;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->instance:Lcom/cnlaunch/framework/common/parse/JsonMananger;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;

    invoke-direct {v0}, Lcom/cnlaunch/framework/common/parse/JsonMananger;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->instance:Lcom/cnlaunch/framework/common/parse/JsonMananger;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->instance:Lcom/cnlaunch/framework/common/parse/JsonMananger;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public beanToJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 99
    const-string/jumbo v1, ""

    .line 101
    .local v1, result:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "beanToJson: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Lorg/codehaus/jackson/JsonGenerationException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerationException;->printStackTrace()V

    .line 104
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v0           #e:Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Lorg/codehaus/jackson/map/JsonMappingException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    .line 107
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v0           #e:Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJsonMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method

.method public jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 74
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v1, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Lorg/codehaus/jackson/JsonParseException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->printStackTrace()V

    .line 77
    new-instance v1, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0           #e:Lorg/codehaus/jackson/JsonParseException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, e:Lorg/codehaus/jackson/map/JsonMappingException;
    const-string/jumbo v1, "10003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1022"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    new-instance v1, Lcom/cnlaunch/framework/network/http/HttpException;

    const/16 v2, -0x12c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    .line 85
    new-instance v1, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0           #e:Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    new-instance v1, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
