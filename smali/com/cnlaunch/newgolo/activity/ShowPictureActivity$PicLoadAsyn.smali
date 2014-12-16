.class Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;
.super Landroid/os/AsyncTask;
.source "ShowPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicLoadAsyn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;-><init>(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "params"

    .prologue
    .line 98
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 99
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    invoke-virtual {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 100
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v11, "BUNDLE"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 101
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    const-string/jumbo v11, "IMAGEPOSITION"

    const/4 v12, -0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 102
    .local v8, position:I
    const-string/jumbo v12, "ShowPictureActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "data:"

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string/jumbo v11, "null"

    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ", position:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez v1, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 137
    .end local v1           #data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v8           #position:I
    :goto_1
    return-object v0

    .line 102
    .restart local v1       #data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v8       #position:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 106
    :cond_1
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;
    invoke-static {v11, v12}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$2(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Ljava/util/List;)V

    .line 107
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    iget-object v12, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    iget-object v13, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;
    invoke-static {v13}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$3(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v1, v13, v8}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->getPictureList(Ljava/util/List;Ljava/util/List;I)I

    move-result v12

    #setter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I
    invoke-static {v11, v12}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$4(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;I)V

    .line 109
    .end local v1           #data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v8           #position:I
    :cond_2
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I
    invoke-static {v14}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$5(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;
    invoke-static {v14}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$3(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->publishProgress([Ljava/lang/Object;)V

    .line 110
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;
    invoke-static {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$3(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I
    invoke-static {v12}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$5(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cnlaunch/golo3/image/MessageObj;

    invoke-virtual {v11}, Lcom/cnlaunch/golo3/image/MessageObj;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, localPath:Ljava/lang/String;
    const-string/jumbo v11, "ShowPictureActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "localPath:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 114
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$6(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeSdcard(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    goto/16 :goto_1

    .line 116
    :cond_3
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    const-string/jumbo v12, "messageImage"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 117
    .local v2, imageInfo:Landroid/content/SharedPreferences;
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;
    invoke-static {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$3(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I
    invoke-static {v12}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$5(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cnlaunch/golo3/image/MessageObj;

    invoke-virtual {v11}, Lcom/cnlaunch/golo3/image/MessageObj;->getThumbPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, value:Ljava/lang/String;
    const-string/jumbo v11, "ShowPictureActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getThumbPath() value:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 120
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$6(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeSdcard(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    goto/16 :goto_1

    .line 122
    :cond_4
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, loginUid:Ljava/lang/String;
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;
    invoke-static {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$3(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I
    invoke-static {v12}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$5(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cnlaunch/golo3/image/MessageObj;

    invoke-virtual {v11}, Lcom/cnlaunch/golo3/image/MessageObj;->getUri()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, pUri:Ljava/lang/String;
    new-instance v4, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;

    invoke-direct {v4}, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;-><init>()V

    .line 125
    .local v4, it:Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->startProgress(Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)V
    invoke-static {v11, v4}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$7(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)V

    .line 126
    const-string/jumbo v11, "ShowPictureActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "pUri:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", loginUid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v7, v6, v4}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->getImageFromWebUri(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, tmpValue:Ljava/lang/String;
    const-string/jumbo v11, "ShowPictureActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "tmpValue:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-nez v9, :cond_5

    .line 130
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 132
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->messages:Ljava/util/List;
    invoke-static {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$3(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Ljava/util/List;

    move-result-object v11

    iget-object v13, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->pictureIndex:I
    invoke-static {v13}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$5(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cnlaunch/golo3/image/MessageObj;

    invoke-virtual {v11}, Lcom/cnlaunch/golo3/image/MessageObj;->getThumbPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    iget-object v11, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$6(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeSdcard(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->doInBackground([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 142
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mPicture:Lcom/cnlaunch/golo3/view/ImageTouchView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Lcom/cnlaunch/golo3/view/ImageTouchView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cnlaunch/golo3/view/ImageTouchView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mRoundProgressView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$9(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->progressAsync:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$9(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PrgThreadTask;->stopThread()V

    .line 151
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$6(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$6(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->show_pic_loadfail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity$PicLoadAsyn;->this$0:Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->mCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ShowPictureActivity;)Landroid/widget/TextView;

    move-result-object v1

    aget-object v0, p1, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 93
    :cond_0
    aget-object v0, p1, v2

    goto :goto_0
.end method
