.class public Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;
.super Landroid/app/Activity;
.source "PicturePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_BG:Ljava/lang/String; = "bg"

.field protected static final TAG:Ljava/lang/String; = "PicturePreviewActivity"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmap_rota:Landroid/graphics/Bitmap;

.field private dialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mSendBtn:Landroid/widget/Button;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 123
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->im_picture_preview_image:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mImageView:Landroid/widget/ImageView;

    .line 124
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->im_picture_preview_button:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mSendBtn:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mSendBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method private loadPicture()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;-><init>(Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 119
    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method public static rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "angle"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 183
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 186
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 188
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    const-string/jumbo v0, "PicturePreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "angle:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-nez v7, :cond_0

    .line 190
    const-string/jumbo v0, "PicturePreviewActivity"

    const-string/jumbo v1, "resizedBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-object v7
.end method


# virtual methods
.method protected hideDialog()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    .line 148
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/cnlaunch/golo3/message/R$id;->im_picture_preview_button:I

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 156
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    const-string/jumbo v1, "cy_set_result"

    const-string/jumbo v2, "ok"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0           #data:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->finish()V

    .line 164
    :cond_0
    return-void

    .line 159
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->setResult(I)V

    .line 160
    const-string/jumbo v1, "cy_set_result"

    const-string/jumbo v2, "cancled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->push(Landroid/app/Activity;)V

    .line 49
    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->im_picture_preview:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->setContentView(I)V

    .line 50
    iput-object p0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->showDialog()V

    .line 52
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->initView()V

    .line 53
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "bg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->mSendBtn:Landroid/widget/Button;

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->bg_setting_string:I

    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->loadPicture()V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap_rota:Landroid/graphics/Bitmap;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->hideDialog()V

    .line 177
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop(Landroid/app/Activity;)V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    return-void
.end method

.method public readPictureDegree(Ljava/lang/String;)I
    .locals 6
    .parameter "path"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, degree:I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, exifInterface:Landroid/media/ExifInterface;
    const-string/jumbo v4, "Orientation"

    .line 201
    const/4 v5, 0x1

    .line 199
    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 202
    .local v3, orientation:I
    packed-switch v3, :pswitch_data_0

    .line 216
    .end local v2           #exifInterface:Landroid/media/ExifInterface;
    .end local v3           #orientation:I
    :goto_0
    :pswitch_0
    return v0

    .line 204
    .restart local v2       #exifInterface:Landroid/media/ExifInterface;
    .restart local v3       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 205
    goto :goto_0

    .line 207
    :pswitch_2
    const/16 v0, 0xb4

    .line 208
    goto :goto_0

    .line 210
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 213
    .end local v2           #exifInterface:Landroid/media/ExifInterface;
    .end local v3           #orientation:I
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected showDialog()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method protected showError(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PicturePreviewActivity;->finish()V

    .line 131
    return-void
.end method
