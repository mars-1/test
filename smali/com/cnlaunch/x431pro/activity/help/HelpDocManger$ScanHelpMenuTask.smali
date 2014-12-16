.class Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;
.super Ljava/lang/Object;
.source "HelpDocManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanHelpMenuTask"
.end annotation


# instance fields
.field private mLanguage:Ljava/lang/String;

.field private mObject:Ljava/lang/Object;

.field private mStopped:Z

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "languege"
    .parameter "type"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mStopped:Z

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mObject:Ljava/lang/Object;

    .line 185
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mLanguage:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mType:Ljava/lang/String;

    .line 187
    return-void
.end method


# virtual methods
.method public isStop()Z
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mStopped:Z

    monitor-exit v1

    return v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 204
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mObject:Ljava/lang/Object;

    monitor-enter v8

    .line 205
    :try_start_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mType:Ljava/lang/String;

    sget-object v9, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v3, lstKeyWords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v5, lstSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$0()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mLanguage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 213
    .local v2, dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mLanguage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 214
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$1()Ljava/util/HashMap;

    move-result-object v7

    const-string/jumbo v10, "en"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 217
    .restart local v2       #dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 210
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->isStop()Z

    move-result v7

    if-nez v7, :cond_2

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v7, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_MapKey_Sections:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    sget-object v7, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_MapKey_KeyWords:Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 229
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 230
    .local v6, message:Landroid/os/Message;
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 204
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #lstKeyWords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .end local v5           #lstSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .end local v6           #message:Landroid/os/Message;
    :cond_2
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    return-void

    .line 218
    .restart local v3       #lstKeyWords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .restart local v5       #lstSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    :cond_3
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, dir:Ljava/lang/String;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$2(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;)Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    move-result-object v10

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v11, v11, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->massets:Landroid/content/res/AssetManager;

    invoke-virtual {v10, v11, v1, v3, v5}, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->ReadXml(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 210
    .end local v1           #dir:Ljava/lang/String;
    .end local v2           #dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7

    .line 204
    .end local v3           #lstKeyWords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .end local v5           #lstSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 235
    :cond_4
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v4, lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$3()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 238
    :try_start_6
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mLanguage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 239
    .restart local v2       #dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mLanguage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 240
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$4()Ljava/util/HashMap;

    move-result-object v7

    const-string/jumbo v10, "en"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 243
    .restart local v2       #dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    if-eqz v2, :cond_6

    .line 244
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 237
    :cond_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 250
    :try_start_7
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->isStop()Z

    move-result v7

    if-nez v7, :cond_2

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v7, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Question_Answer:Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 255
    .restart local v6       #message:Landroid/os/Message;
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 244
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v6           #message:Landroid/os/Message;
    :cond_7
    :try_start_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    .restart local v1       #dir:Ljava/lang/String;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    #getter for: Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->access$2(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;)Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    move-result-object v10

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v11, v11, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->massets:Landroid/content/res/AssetManager;

    invoke-virtual {v10, v11, v1, v4}, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->ReadQ2AXml(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 237
    .end local v1           #dir:Ljava/lang/String;
    .end local v2           #dirList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v7

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->mStopped:Z

    .line 190
    monitor-exit v1

    .line 193
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
