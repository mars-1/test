.class Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;
.super Landroid/os/AsyncTask;
.source "HelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/HelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->url:Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 21
    .parameter "params"

    .prologue
    .line 406
    const/4 v10, 0x0

    .line 408
    .local v10, output:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 409
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 410
    .local v12, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 411
    .local v7, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v7, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 412
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 414
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    .line 415
    .local v16, totalSize:J
    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-nez v18, :cond_0

    .line 416
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->available()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 419
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v4, dirsfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 421
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 424
    :cond_1
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->fileName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->access$0(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v14, targetfile:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->tempfileName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->access$1(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v15, tempfile:Ljava/io/File;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 428
    .local v8, instream:Ljava/io/InputStream;
    if-eqz v8, :cond_2

    .line 429
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 430
    .end local v10           #output:Ljava/io/FileOutputStream;
    .local v11, output:Ljava/io/FileOutputStream;
    const/16 v18, 0xff6

    :try_start_1
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 431
    .local v2, buffer:[B
    const/4 v9, 0x0

    .local v9, length:I
    const/4 v3, 0x0

    .line 432
    .local v3, count:I
    :goto_0
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v9

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    move-object v10, v11

    .line 440
    .end local v2           #buffer:[B
    .end local v3           #count:I
    .end local v9           #length:I
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v15, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 441
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v18

    .line 449
    if-eqz v10, :cond_3

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 454
    .end local v4           #dirsfile:Ljava/io/File;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v8           #instream:Ljava/io/InputStream;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #targetfile:Ljava/io/File;
    .end local v15           #tempfile:Ljava/io/File;
    .end local v16           #totalSize:J
    :cond_3
    :goto_1
    return-object v18

    .line 433
    .end local v10           #output:Ljava/io/FileOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #count:I
    .restart local v4       #dirsfile:Ljava/io/File;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #instream:Ljava/io/InputStream;
    .restart local v9       #length:I
    .restart local v11       #output:Ljava/io/FileOutputStream;
    .restart local v12       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #targetfile:Ljava/io/File;
    .restart local v15       #tempfile:Ljava/io/File;
    .restart local v16       #totalSize:J
    :cond_4
    add-int/2addr v3, v9

    .line 434
    const/16 v18, 0x0

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v11, v2, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 435
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 436
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_0

    .line 443
    .end local v2           #buffer:[B
    .end local v3           #count:I
    .end local v9           #length:I
    :catch_0
    move-exception v5

    move-object v10, v11

    .line 444
    .end local v4           #dirsfile:Ljava/io/File;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v8           #instream:Ljava/io/InputStream;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #targetfile:Ljava/io/File;
    .end local v15           #tempfile:Ljava/io/File;
    .end local v16           #totalSize:J
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 449
    if-eqz v10, :cond_5

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 454
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_5
    :goto_3
    const/16 v18, 0x0

    goto :goto_1

    .line 450
    .restart local v4       #dirsfile:Ljava/io/File;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #instream:Ljava/io/InputStream;
    .restart local v12       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #targetfile:Ljava/io/File;
    .restart local v15       #tempfile:Ljava/io/File;
    .restart local v16       #totalSize:J
    :catch_1
    move-exception v5

    .line 451
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 450
    .end local v4           #dirsfile:Ljava/io/File;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v8           #instream:Ljava/io/InputStream;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #targetfile:Ljava/io/File;
    .end local v15           #tempfile:Ljava/io/File;
    .end local v16           #totalSize:J
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v5

    .line 451
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 445
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 446
    .restart local v5       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 449
    if-eqz v10, :cond_5

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 450
    :catch_4
    move-exception v5

    .line 451
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 447
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 449
    :goto_5
    if-eqz v10, :cond_6

    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 453
    :cond_6
    :goto_6
    throw v18

    .line 450
    :catch_5
    move-exception v5

    .line 451
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 449
    .end local v5           #e:Ljava/io/IOException;
    :cond_7
    if-eqz v10, :cond_5

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 450
    :catch_6
    move-exception v5

    .line 451
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 447
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #output:Ljava/io/FileOutputStream;
    .restart local v4       #dirsfile:Ljava/io/File;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #instream:Ljava/io/InputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    .restart local v12       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #targetfile:Ljava/io/File;
    .restart local v15       #tempfile:Ljava/io/File;
    .restart local v16       #totalSize:J
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 445
    .end local v10           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    move-object v10, v11

    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 443
    .end local v4           #dirsfile:Ljava/io/File;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v8           #instream:Ljava/io/InputStream;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #targetfile:Ljava/io/File;
    .end local v15           #tempfile:Ljava/io/File;
    .end local v16           #totalSize:J
    :catch_8
    move-exception v5

    goto :goto_2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->access$2(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->access$2(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->access$2(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 473
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    .line 475
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, pdfPath:Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/vudroid/pdfdroid/PDFManager;->open(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    .end local v1           #pdfPath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 486
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 487
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 460
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int v0, v1, v2

    .line 461
    .local v0, progress:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->access$2(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 463
    .end local v0           #progress:I
    :cond_0
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
