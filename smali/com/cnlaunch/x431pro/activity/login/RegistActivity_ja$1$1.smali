.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;
.super Ljava/lang/Object;
.source "RegistActivity_ja.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 169
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v8

    iget-object v8, v8, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 170
    .local v5, istream:Ljava/io/InputStream;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v7

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 173
    .local v6, width:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v7

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 174
    .local v4, height:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v7

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v7

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v7

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v8

    iget-object v8, v8, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->loadcodePic:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, filePath:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 181
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    move-result-object v7

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->handle:Landroid/os/Handler;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #height:I
    .end local v5           #istream:Ljava/io/InputStream;
    .end local v6           #width:I
    :goto_1
    return-void

    .line 174
    .restart local v4       #height:I
    .restart local v5       #istream:Ljava/io/InputStream;
    .restart local v6       #width:I
    :cond_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 182
    .end local v4           #height:I
    .end local v5           #istream:Ljava/io/InputStream;
    .end local v6           #width:I
    :catch_0
    move-exception v2

    .line 183
    .local v2, e:Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 187
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 188
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 185
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
