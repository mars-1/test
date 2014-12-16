.class Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;
.super Ljava/lang/Object;
.source "HelpDocManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->initMenu(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

.field private final synthetic val$strType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->val$strType:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readCommonQuestionDir()V
    .locals 13

    .prologue
    .line 77
    const-string/jumbo v0, "HelpDocSource/QuestionAnswer"

    .line 79
    .local v0, HelpDocSource:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v1, v7, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->massets:Landroid/content/res/AssetManager;

    .line 82
    .local v1, assets:Landroid/content/res/AssetManager;
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$3()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, dirLevel1s:[Ljava/lang/String;
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$3()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    :try_start_3
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 88
    array-length v10, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-lt v8, v10, :cond_0

    .line 86
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 99
    :try_start_4
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 100
    .local v5, message:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    .end local v3           #dirLevel1s:[Ljava/lang/String;
    .end local v5           #message:Landroid/os/Message;
    :goto_1
    return-void

    .line 82
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 102
    :catch_0
    move-exception v4

    .line 103
    .local v4, e:Ljava/io/IOException;
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$3()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 104
    :try_start_7
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 103
    monitor-exit v8

    goto :goto_1

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    .line 88
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #dirLevel1s:[Ljava/lang/String;
    :cond_0
    :try_start_8
    aget-object v2, v3, v8

    .line 89
    .local v2, dirLevel1:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 90
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v6, path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v6           #path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    .end local v2           #dirLevel1:Ljava/lang/String;
    :catchall_2
    move-exception v7

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method private readHelpDir()V
    .locals 19

    .prologue
    .line 110
    const-string/jumbo v1, "HelpDocSource/module"

    .line 113
    .local v1, HelpDocSource:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v2, v11, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->massets:Landroid/content/res/AssetManager;

    .line 116
    .local v2, assets:Landroid/content/res/AssetManager;
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$0()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$5()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 118
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 119
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, dirLevel1s:[Ljava/lang/String;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    array-length v14, v4

    const/4 v11, 0x0

    move v13, v11

    :goto_0
    if-lt v13, v14, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v11, v11, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 148
    .local v8, message:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v4           #dirLevel1s:[Ljava/lang/String;
    .end local v8           #message:Landroid/os/Message;
    :goto_1
    return-void

    .line 116
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 149
    :catch_0
    move-exception v7

    .line 150
    .local v7, e:Ljava/io/IOException;
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$5()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 151
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 122
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #dirLevel1s:[Ljava/lang/String;
    :cond_0
    :try_start_5
    aget-object v3, v4, v13

    .line 123
    .local v3, dirLevel1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v11, v11, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->listIgnoreDir:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 122
    :goto_2
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$0()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 126
    :try_start_6
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$5()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    .line 127
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v9, path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, dirLevel2s:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v16, v0

    const/4 v11, 0x0

    move v12, v11

    :goto_3
    move/from16 v0, v16

    if-lt v12, v0, :cond_3

    .line 142
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$5()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v6           #dirLevel2s:[Ljava/lang/String;
    .end local v9           #path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v15

    goto :goto_2

    :catchall_1
    move-exception v11

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 130
    .restart local v6       #dirLevel2s:[Ljava/lang/String;
    .restart local v9       #path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_8
    aget-object v5, v6, v12

    .line 131
    .local v5, dirLevel2:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    .line 134
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v10, path1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v10           #path1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto/16 :goto_3

    .line 138
    :cond_4
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->val$strType:Ljava/lang/String;

    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->readHelpDir()V

    .line 74
    :goto_1
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;->readCommonQuestionDir()V

    goto :goto_1
.end method
