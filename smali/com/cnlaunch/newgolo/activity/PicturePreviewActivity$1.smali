.class Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;
.super Landroid/os/AsyncTask;
.source "PicturePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->loadPicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private height:I

.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

.field private width:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getWindowRounds()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->width:I

    .line 115
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->height:I

    .line 116
    const-string/jumbo v1, "PicturePreviewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getWindowRounds width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->getWindowRounds()V

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$0(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cnlaunch/newgolo/Tool/CommonTool;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$1(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v3, "PicturePreviewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CommonTool.uriToPath:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$2(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$2(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$2(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, degree:I
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$2(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->width:I

    iget v6, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->height:I

    invoke-static {v4, v5, v6}, Lcom/cnlaunch/golo3/utils/BitmapTool;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$3(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;Landroid/graphics/Bitmap;)V

    .line 76
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$4(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 77
    const-string/jumbo v3, "PicturePreviewActivity"

    const-string/jumbo v4, "bitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$4(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$5(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$2(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$6(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/golo3/utils/FileTool;->cache(Ljava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$6(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 85
    const-string/jumbo v2, "not a image"

    .line 93
    .end local v0           #degree:I
    :goto_1
    return-object v2

    .line 81
    .restart local v0       #degree:I
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    .line 90
    goto :goto_1

    .line 91
    .end local v0           #degree:I
    :cond_2
    const-string/jumbo v2, "uri error"

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->showError(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$6(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$7(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->access$6(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    const-string/jumbo v0, "PicturePreviewActivity"

    const-string/jumbo v1, "mImageView.setImageBitmap(bitmap_rota);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->hideDialog()V

    .line 108
    const-string/jumbo v0, "PicturePreviewActivity"

    const-string/jumbo v1, "load finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
