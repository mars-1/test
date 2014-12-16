.class Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->creatPictureLoadTask(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;->val$path:Ljava/lang/String;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 800
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;->val$path:Ljava/lang/String;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 801
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 802
    const-string/jumbo v2, "ChatMessageAdapter"

    const-string/jumbo v3, "creatPictureLoadTask bitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 805
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mBitmapCache:Lcom/cnlaunch/newgolo/Tool/BitmapCache;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$9(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/Tool/BitmapCache;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/cnlaunch/newgolo/Tool/BitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 806
    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$5;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$8(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 808
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
