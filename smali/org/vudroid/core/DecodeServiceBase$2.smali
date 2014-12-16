.class Lorg/vudroid/core/DecodeServiceBase$2;
.super Ljava/lang/Object;
.source "DecodeServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/vudroid/core/DecodeServiceBase;->recycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/vudroid/core/DecodeServiceBase;


# direct methods
.method constructor <init>(Lorg/vudroid/core/DecodeServiceBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/vudroid/core/DecodeServiceBase$2;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 240
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase$2;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    #getter for: Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/vudroid/core/DecodeServiceBase;->access$1(Lorg/vudroid/core/DecodeServiceBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 240
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase$2;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    #getter for: Lorg/vudroid/core/DecodeServiceBase;->document:Lorg/vudroid/core/codec/CodecDocument;
    invoke-static {v2}, Lorg/vudroid/core/DecodeServiceBase;->access$2(Lorg/vudroid/core/DecodeServiceBase;)Lorg/vudroid/core/codec/CodecDocument;

    move-result-object v2

    invoke-interface {v2}, Lorg/vudroid/core/codec/CodecDocument;->recycle()V

    .line 248
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase$2;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    #getter for: Lorg/vudroid/core/DecodeServiceBase;->codecContext:Lorg/vudroid/core/codec/CodecContext;
    invoke-static {v2}, Lorg/vudroid/core/DecodeServiceBase;->access$3(Lorg/vudroid/core/DecodeServiceBase;)Lorg/vudroid/core/codec/CodecContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/vudroid/core/codec/CodecContext;->recycle()V

    .line 249
    return-void

    .line 241
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 242
    .local v0, codecPageSoftReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/vudroid/core/codec/CodecPage;>;"
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/vudroid/core/codec/CodecPage;

    .line 243
    .local v1, page:Lorg/vudroid/core/codec/CodecPage;
    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v1}, Lorg/vudroid/core/codec/CodecPage;->recycle()V

    goto :goto_0
.end method
