.class Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;
.super Landroid/os/AsyncTask;
.source "P_DFScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;
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
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->url:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 21
    .parameter "params"

    .prologue
    .line 189
    const/4 v10, 0x0

    .line 191
    .local v10, output:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 192
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 193
    .local v12, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 194
    .local v7, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v7, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 195
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 197
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    .line 198
    .local v16, totalSize:J
    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-nez v18, :cond_0

    .line 199
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->available()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 202
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$2(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v4, dirsfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 204
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 207
    :cond_1
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$2(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->fileName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$3(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v14, targetfile:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$2(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->tempfileName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$4(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v15, tempfile:Ljava/io/File;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 211
    .local v8, instream:Ljava/io/InputStream;
    if-eqz v8, :cond_2

    .line 212
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 213
    .end local v10           #output:Ljava/io/FileOutputStream;
    .local v11, output:Ljava/io/FileOutputStream;
    const/16 v18, 0xff6

    :try_start_1
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 214
    .local v2, buffer:[B
    const/4 v9, 0x0

    .local v9, length:I
    const/4 v3, 0x0

    .line 215
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

    .line 223
    .end local v2           #buffer:[B
    .end local v3           #count:I
    .end local v9           #length:I
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v15, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 225
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v18

    .line 233
    if-eqz v10, :cond_3

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 238
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

    .line 216
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

    .line 217
    const/16 v18, 0x0

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v11, v2, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 218
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 219
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

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_0

    .line 227
    .end local v2           #buffer:[B
    .end local v3           #count:I
    .end local v9           #length:I
    :catch_0
    move-exception v5

    move-object v10, v11

    .line 228
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

    .line 233
    if-eqz v10, :cond_5

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 238
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_5
    :goto_3
    const/16 v18, 0x0

    goto :goto_1

    .line 234
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

    .line 235
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 234
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

    .line 235
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 229
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 230
    .restart local v5       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 233
    if-eqz v10, :cond_5

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 234
    :catch_4
    move-exception v5

    .line 235
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 231
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 233
    :goto_5
    if-eqz v10, :cond_6

    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 237
    :cond_6
    :goto_6
    throw v18

    .line 234
    :catch_5
    move-exception v5

    .line 235
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 233
    .end local v5           #e:Ljava/io/IOException;
    :cond_7
    if-eqz v10, :cond_5

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 234
    :catch_6
    move-exception v5

    .line 235
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 231
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

    .line 229
    .end local v10           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    move-object v10, v11

    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 227
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
    .locals 5
    .parameter "result"

    .prologue
    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$5(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$5(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$5(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$6(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 258
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 262
    .local v2, uri:Landroid/net/Uri;
    const-string/jumbo v3, "application/pdf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$6(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
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

    .line 245
    .local v0, progress:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$5(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 247
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

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
