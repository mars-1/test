.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;
.super Ljava/lang/Object;
.source "SerializableConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->registerValidation(Ljava/io/ObjectInputValidation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;

.field final synthetic val$validation:Ljava/io/ObjectInputValidation;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;Ljava/io/ObjectInputValidation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;->this$1:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;->val$validation:Ljava/io/ObjectInputValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;->val$validation:Ljava/io/ObjectInputValidation;

    invoke-interface {v1}, Ljava/io/ObjectInputValidation;->validateObject()V
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/io/InvalidObjectException;
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot validate object : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/InvalidObjectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
